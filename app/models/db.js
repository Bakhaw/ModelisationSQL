const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    port: '3307',
    user: 'root',
    password: 'example',
    database: 'boarddb2',
});

db.connect((err) => {
    if (err) {
        return console.log(err)
    }
    console.log('DB CONNECTED !!!!!')
})

db.asyncQuery = (query) => new Promise( ( resolve, reject ) => {
    db.query(query, (err, result) => {
        err ? reject(err) : resolve(result)
    })
})

module.exports = db;