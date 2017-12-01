const db = require('./db');

module.exports = {
    getLists() {
        return db.asyncQuery("SELECT * FROM lists")
    },
    createList(name) {
        return db.asyncQuery(`INSERT INTO lists(name) VALUES('${name}')`)
    },
    updateList({ id, name }) {
        return db.asyncQuery(`UPDATE lists SET name='${name}' WHERE id='${id}'`)
    },
    deleteList(id) {
        return db.asyncQuery(`DELETE FROM lists WHERE id = '${id}'`)
    }
}