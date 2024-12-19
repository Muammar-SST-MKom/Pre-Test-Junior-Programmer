## Cara Menjalankan Program

Proyek ini terdiri dari *frontend* (tampilan web) dan *backend* (API). Berikut langkah-langkah untuk menjalankannya:

**1. Persiapan:**
import database db_film.sql untuk siap menggunakan data dummy

*   **Node.js dan npm (atau yarn):** Pastikan  telah menginstal Node.js dan npm (Node Package Manager) atau yarn. dapat mengunduhnya di [https://nodejs.org/](https://nodejs.org/).
*   **Backend (API):**
    *   Pastikan  telah menyiapkan database MySQL dan mengimpor skema database (`db_streaming_film.sql`) yang telah disediakan.
    *   Buka terminal atau *command prompt* dan navigasi ke direktori *backend* .
    *   Jalankan perintah `npm install` atau `yarn install` untuk menginstal dependensi *backend*.
    *   Konfigurasi koneksi database pada file konfigurasi *backend*  (biasanya file `.env` atau file konfigurasi lainnya).
    *   Jalankan *server backend* dengan perintah `node index.js` atau npx nodemon app.js atau perintah yang sesuai dengan *backend* .

