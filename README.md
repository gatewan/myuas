# myuas
Project UAS Rekayasa Web 2017 - Dibuat guna memenuhi tugas UAS sekaligus tindak lanjut dari project sebelumnya (UTS-Design Template), dengan mengimplementasikan framework CodeIgniter.

# Demo
http://uasgatewan.hol.es
user & password -> default ion auth

# Referensi
**Struktur Database:**
* [Database - blog.s-widodo.com](http://blog.s-widodo.com/artikel-download-contoh-website-profil-sekolah-dengan-php-mysql.html)
* Mengadopsi database web profil, memanfaatkan tabel "article" dan mereplace kolom "date(VARCHAR)" "time(VARCHAR)" -> menjadi "waktu(CURRENT_TIMESTAMP - ON UPDATE)"

**Logika CRUD:**
* [Logika - fabernainggolan.net](http://fabernainggolan.net/membuat-crud-codeigniter-dengan-tampilan-bootstrap)
* Mengadopsi logika CRUD fabernainggolan dan modifikasi fungsi

**How to Write HTML Inside PHP:**
* [HTML Inside PHP - Stackoverflow](https://stackoverflow.com/questions/18140270/how-to-write-html-code-inside-php)
* [PHP Inside HTML - Stackoverflow](https://stackoverflow.com/questions/8256463/insert-php-variable-in-a-href)
* Dalam rangka membuat tombol CRUD di dalam array

**Form Bootstrap Markdown:**
* [Editor Markdown - codingdrama.com](http://www.codingdrama.com/bootstrap-markdown/)
* Dalam rangka membuat form di admin dashboard untuk posting artikel
* [Preview Markdown - stackoverflow](https://stackoverflow.com/questions/21435164/preview-button-not-working-of-toopay-bootstrap-markdown)
* Dalam rangka memperbaiki tombol preview yang tidak bekerja dengan benar

**Syntax Phrase:**
* [CI Markdown Library - Github](https://github.com/jonlabelle/ci-markdown)
* Dalam rangka merender sintaks markdown di halaman public

**Ion Auth:**
* [Authentication Library - Github](https://github.com/benedmunds/CodeIgniter-Ion-Auth)
* Mengimplementasikan Ion Auth library, dalam rangka mengamankan dashboard admin / halaman admin

**Pagination:**
* [Pagination - sitepoint.com](https://www.sitepoint.com/pagination-with-codeigniter/)
* Dalam rangka mengaktifkan paginasi template (membuat link untuk masing-masing nomornya)

# Bug
Belum terpecahkan cara memphrase alt/title link image seperti contoh berikut:
`![enter image description here](http://link.jpg "enter image title here")` sehingga untuk bisa menampilkan / merender ke halaman public "alt/title" tersebut kami hilangkan menjadi
`![enter image description here](http://link.jpg)`


