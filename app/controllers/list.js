const express = require("express");
const model = require("../models/list");

const router = express.Router();

router.get("/", (req, res) => {
  model
    .getLists()
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.post("/", (req, res) => {
  model
    .createList(req.body.name)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.post("/update/:id", (req, res) => {
  const { id } = req.params;
  const { name } = req.body;

  model
    .updateList({ id, name })
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.get("/delete/:id", (req, res) => {
  const { id } = req.params;

  model
    .deleteList(id)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

module.exports = router;
