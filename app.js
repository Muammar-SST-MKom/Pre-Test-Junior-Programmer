const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3000;

app.use(express.json());

// Konfigurasi koneksi MySQL
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'db_film'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Terhubung ke MySQL!');
});
const path = require('path');
app.use(express.static(path.join(__dirname, './public')));
// List Master Data Kategori Film
app.get('/api/kategori', (req, res) => {
    db.query('SELECT * FROM Kategori', (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// List Data Film (dengan pencarian dan filter kategori)
app.get('/api/film', (req, res) => {
    let sql = 'SELECT * FROM Film';
    let whereClause = [];
    let queryParams = [];

    if (req.query.cari) {
        whereClause.push('judul_film LIKE ?');
        queryParams.push(`%${req.query.cari}%`);
    }

    if (req.query.kategori) {
        whereClause.push('id_kategori = ?');
        queryParams.push(req.query.kategori);
    }

    if (whereClause.length > 0) {
        sql += ' WHERE ' + whereClause.join(' AND ');
    }

    db.query(sql, queryParams, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// Informasi Detail Film
app.get('/api/film/:id', (req, res) => {
    db.query('SELECT * FROM Film WHERE id_film = ?', [req.params.id], (err, results) => {
        if (err) throw err;
        if (results.length > 0) {
             res.json(results[0]);
        } else {
             res.status(404).json({message: "Film tidak ditemukan"})
        }
    });
});

app.listen(port, () => {
    console.log(`Server berjalan di http://localhost:${port}`);
});