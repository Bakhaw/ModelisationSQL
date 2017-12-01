const db = require("./db");

module.exports = {
  getUsers() {
    return db.asyncQuery("SELECT * FROM users");
  },
  createUser(firstname, lastname) {
    return db.asyncQuery(`INSERT INTO users(firstname, lastname) VALUES('${firstname}', '${lastname}')`);
  },
  updateUser({ id, name }) {
    return db.asyncQuery(`UPDATE users SET name='${name}' WHERE id='${id}'`);
  },
  deleteUser(id) {
    return db.asyncQuery(`DELETE FROM users WHERE id = '${id}'`);
  }
};
