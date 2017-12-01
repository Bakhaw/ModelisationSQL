const express = require("express");
const db = require('../models/db');
// const model = require("./models/card");

const router = express.Router();

router.get("/", (req, res) => {
    db.query('SELECT * FROM lists', (err, result, fields) => {
        if (err) { 
            return res.status(500).send(err)
        }
        res.json(result)
    })
});

module.exports = router;
