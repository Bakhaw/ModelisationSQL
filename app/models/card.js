const db = require("./db");

module.exports = {
  getCards() {
    return db.asyncQuery("SELECT * FROM cards");
  },
  createCard(name) {
    return db.asyncQuery(`INSERT INTO cards(name) VALUES('${name}')`);
  },
  updateCard({ id, name }) {
    return db.asyncQuery(`UPDATE cards SET name='${name}' WHERE id='${id}'`);
  },
  deleteCard(id) {
    return db.asyncQuery(`DELETE FROM cards WHERE id = '${id}'`);
  }
};
