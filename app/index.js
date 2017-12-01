const express = require('express');

const app = express();

app.use(express.urlencoded({ extended: true }));

app.use("/cards", require("./controllers/card")); // CARDS
app.use("/lists", require("./controllers/list")); // LISTS
app.use("/users", require("./controllers/user")); // USERS

app.all("/*", (req, res) => {
  res.send("Je suis l'intercepteur");
});

app.listen(3005, () => {
    console.log('Server listening on port 3005');
});