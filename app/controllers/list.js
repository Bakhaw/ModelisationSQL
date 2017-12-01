const express = require("express");
// const model = require("./models/card");

const router = express.Router();

router.get("/", (req, res) => {
  res.send("Routes Lists Works!");
});

module.exports = router;
