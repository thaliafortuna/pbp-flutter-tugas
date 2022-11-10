Nama: Thalia Fortuna
NPM : 2106751890

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget adalah widget yang tidak dapat diubah atau tidak akan pernah diubah, sedangkan stateful widget adalah widget yang bersifat dinamis atau dapat berubah. Stateful widget yang bersifat dinamis, dapat digunakan untuk meng-update tampilan seperti warna, kolom, dll. Perbedaan lainnya antara kedua jenis widget tersebut adalah penggunaan setState(). Fungsi setState() hanya dapat digunakan pada stateful widget, tidak dapat digunakan di stateless widget. 

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Dalam proyek kali ini, terdapat penggunaan stateless widget dan stateful widget. Widget yang digunakan antara lain: Text widget dan button widget. Text widget berfungsi untuk membuat text. Terdapat text title yang bersifat stateless seperti "Flutter Demo" dan stateful seperti "GANJIL" dan "GENAP". Button widget berfungsi untuk membuat button. Button widget di proyek ini bertujuan untuk fungsi add dan remove.


Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Pemanggilan setState() berfungsi untuk memerintahkan framework untuk melakukan rebuild saat adanya perubahan yang berdampak pada user interface. setState() akan berdampak pada stateful widget.

Jelaskan perbedaan antara const dengan final.

Keyword "final" digunakan untuk melakukan hardcode value dari variabel yang tidak akan mengalami perubahan lagi ke depannya. Keyword "const" serupa dengan keyword "final", namun variabel const diinisialisasi saat compile-time dan telah di-assign saat runtime. Final digunakan ketika Anda tidak mengetahui value saat compile-time, const digunakan ketika Anda yakin hawa value tersebut tidak akan berubah ketika menjalankan code. Final dapat di-declare di class dan function, sedangkan const hanya dapat di-declare pada function.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Pertama-tama, saya membuat sebuah program Flutter baru bernama counter_7 dengan flutter create counter_7, lalu masuk ke direktori counter_7 dengan cd counter_7. Tidak lupa membuat repository baru bernama pbp-flutter-tugas. Dilanjutkan dengan git clone, untuk melakukan clone terhadap repository yang dibuat pada direktori lokal. Lalu pada file lib/main.dart, ditambahkan tombol + dan - (tidak boleh negatif) menggunakan FloatingActionButton, dan MainAxisAlignment.spaceBetween agar memisahkan kedua button. Saya juga menambahkan padding pada left button (+) untuk merapikan row. Button + akan digunakan untuk melakukan increment dan button - akan digunakan untuk melakukan decrement. onPressed di-assign pada fungsi yang dibuat, yaitu fungsi _incrementCounter dan _decrementCounter. Lalu lakukan modifikasi teks terhadap counter. Apabila counter ganjil, teks menjadi warna biru, dan apabila counter genap, teks menjadi merah. Saya melakukannya dengan menambahkan "color: _textMaker() == "GENAP" ? Colors.redAccent : Colors.blueAccent" dimana fungsi _textMaker() adalah fungsi untuk menentukan text ketika ganjil/genap.