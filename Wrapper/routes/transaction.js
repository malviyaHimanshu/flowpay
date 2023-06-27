const express = require('express')
const fcl = require('@onflow/fcl')
const sdk = require('@onflow/sdk')
const router = express.Router()

// Configure Flow client
fcl.config()
  .put('accessNode.api', 'https://access-testnet.onflow.org')
  .put('challenge.handshake', 'https://fcl-discovery.vercel.app/testnet/authn')

// Define Express.js routes
router.post('/flow-flow', async (req, res) => {
  try {
    // Get the sender's private key and wallet address from the request body
    const { senderPrivateKey, senderAddress, receiverAddress, amount } = req.body

    // Create a new Flow transaction to send tokens from the sender to the receiver
    const tx = await sdk.transaction`
      import FungibleToken from 0x9a0766d93b6608b7
      import FlowToken from 0x7e60df042a9c0868

      transaction {
        let sender: &FlowToken.Vault
        let receiver: &FlowToken.Vault

        prepare(acct: AuthAccount) {
          self.sender = acct.borrow<&FlowToken.Vault>(from: /storage/flowTokenVault)!
          self.receiver = getAccount(${receiverAddress}).getCapability<&FlowToken.Vault{FungibleToken.Receiver}>(/public/flowTokenReceiver)!
        }

        execute {
          self.sender.withdraw(amount: ${amount})  
          self.receiver.deposit(from: <-self.sender.deposit(amount: ${amount}))
        }
      }
    `

    // Sign the transaction with the sender's private key
    const user = await fcl.currentUser().signUser(
      sdk.decodePrivateKey(senderPrivateKey),
      { address: senderAddress }
    )

    // Send the transaction to the Flow blockchain
    const txId = await fcl.send(tx).then(fcl.decode)

    res.send(`Transaction ID: ${txId}`)
  } catch (err) {
    console.error(err)
    res.status(500).send('Error')
  }
})

module.exports = router