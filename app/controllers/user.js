const express = require("express");
// const model = require("./models/card");

const router = express.Router();

router.get("/", (req, res) => {
  res.send("Routes Users Works!");
});

module.exports = router;
