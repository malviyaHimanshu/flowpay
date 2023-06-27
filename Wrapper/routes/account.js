const fcl = require("@onflow/fcl");
const sdk = require("@onflow/sdk");
const keys = require("./keys.json"); // path to your keys file
const express = require('express')
const router = express.Router()



fcl.config().put("accessNode.api", "https://rest-testnet.onflow.org");


router.get('/', (req, res) => {
  console.log('Account route requested')
  res.send('Nice')
})

router.post('/', (req, res) => {
  console.log('Account route requested')
  res.send('Nice')
})

router.get('/flow',async (req,res)=>{

// We will use IIFE to execute our code right away
(async () => {

  // Here we will store the code we want to execute.
  // Our Cadence script will simply return as an integer 42, which we will later
  const cadence = `
    pub fun main(): Int{
      return 42
    }
  `;

  // "query" will pass Cadence code to access node for execution and return us a result:
  // read more about "query" method on Flow Docs Site:
  // https://docs.onflow.org/fcl/reference/api/#query
  const answer = await fcl.query({ cadence });

  console.log(
    `The Answer to Life, the Universe and Everything is %c${answer}!`,
    "color: #36ad68; font-weight: bold"
  );
  showResult(answer);
})();


})

module.exports = router
