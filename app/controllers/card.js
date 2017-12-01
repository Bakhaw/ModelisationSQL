const express = require('express')
// const model = require('./models/card')

const router = express.Router();

router.get('/', (req, res) => {
    res.send('Routes Cards Works!')
})

module.exports = router;