const express = require('express')
const router = express.Router()
const fs = require('fs')

router.get('/', (req, res) => {
  console.log('Status route requested')
  fs.readFile('response.txt', 'utf8', (err, data) => {
    if (err) {
      console.error(err)
      res.status(500).send('Error reading response.txt')
    } else {
      console.log('Response:', data)
      res.send('Nice')
    }
  })
})

router.post('/', (req, res) => {
  console.log('Status route requested')
  fs.readFile('response.txt', 'utf8', (err, data) => {
    if (err) {
      console.error(err)
      res.status(500).send('Error reading response.txt')
    } else {
      console.log('Response:', data)
      res.send('Nice')
    }
  })
})

module.exports = router
