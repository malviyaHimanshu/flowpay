const express = require('express')
const accountRouter = require('./routes/account')
const transactionRouter = require('./routes/transaction')
const statusRouter = require('./routes/status')

const app = express()

// Use the routes
app.use('/account', accountRouter)
app.use('/transaction', transactionRouter)
app.use('/status', statusRouter)

app.listen(3000, () => {
  console.log('Server started on port 3000')
})
