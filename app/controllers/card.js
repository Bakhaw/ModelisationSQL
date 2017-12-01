const express = require("express");
const model = require("../models/card");

const router = express.Router();

router.get("/", (req, res) => {
  model
    .getCards()
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.post("/", (req, res) => {
  model
    .createCard(req.body.name)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.post("/update/:id", (req, res) => {

  const { id } = req.params;
  const { name } = req.body;

  model
    .updateCard({ id, name })
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.get("/delete/:id", (req, res) => {

  const { id } = req.params;

  model
    .deleteCard(id)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

module.exports = router;
