const express = require('express');

const app = express();

app.use("/cards", require("./controllers/card"));
app.use("/lists", require("./controllers/list"));
app.use("/users", require("./controllers/user"));

app.listen(3005, () => {
    console.log('Server listening on port 3005');
});