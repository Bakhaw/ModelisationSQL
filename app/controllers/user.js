const express = require("express");
const model = require("../models/user");

const router = express.Router();

router.get("/", (req, res) => {
  model
    .getUsers()
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.post("/", (req, res) => {
  model
    .createUser(req.body.firstname, req.body.lastname)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.put("/:id", (req, res) => {
  const { id } = req.params;
  const { name } = req.body;

  model
    .updateUser({ id, name })
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

router.delete("/:id", (req, res) => {
  const { id } = req.params;

  model
    .deleteUser(id)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

module.exports = router;
