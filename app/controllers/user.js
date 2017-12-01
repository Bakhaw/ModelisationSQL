const express = require("express");
const model = require("../models/user");

const router = express.Router();

// GET 

router.get("/", (req, res) => {
  model
    .getUsers()
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

// POST

router.post("/", (req, res) => {
  model
    .createUser(req.body.firstname, req.body.lastname)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

// PUT

router.post("/update/:id", (req, res) => {
  const { id } = req.params;
  const { firstname } = req.body;
  const { lastname } = req.body;


  model
    .updateUser({ id, firstname, lastname })
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

// DELETE

router.get("/delete/:id", (req, res) => {
  const { id } = req.params;

  model
    .deleteUser(id)
    .then(result => res.json(result))
    .catch(err => res.json(err));
});

module.exports = router;
