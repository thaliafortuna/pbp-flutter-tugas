Nama: Thalia Fortuna

NPM : 2106751890

# Tugas 7

Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless widget adalah widget yang tidak dapat diubah atau tidak akan pernah diubah, sedangkan stateful widget adalah widget yang bersifat dinamis atau dapat berubah. Stateful widget yang bersifat dinamis, dapat digunakan untuk meng-update tampilan seperti warna, kolom, dll. Perbedaan lainnya antara kedua jenis widget tersebut adalah penggunaan setState(). Fungsi setState() hanya dapat digunakan pada stateful widget, tidak dapat digunakan di stateless widget. 

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Dalam proyek kali ini, terdapat penggunaan stateless widget dan stateful widget. Widget yang digunakan antara lain: Text widget dan button widget. Text widget berfungsi untuk membuat text. Terdapat text title yang bersifat stateless seperti "Flutter Demo" dan stateful seperti "GANJIL" dan "GENAP". Button widget berfungsi untuk membuat button. Button widget di proyek ini bertujuan untuk fungsi add dan remove.


Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Pemanggilan setState() berfungsi untuk memerintahkan framework untuk melakukan rebuild saat adanya perubahan yang berdampak pada user interface. setState() akan berdampak pada stateful widget. Variabel yang terdampak pada proyek ini adalah _counter

Jelaskan perbedaan antara const dengan final.

Keyword "final" digunakan untuk melakukan hardcode value dari variabel yang tidak akan mengalami perubahan lagi ke depannya. Keyword "const" serupa dengan keyword "final", namun variabel const diinisialisasi saat compile-time dan telah di-assign saat runtime. Final digunakan ketika Anda tidak mengetahui value saat compile-time, const digunakan ketika Anda yakin hawa value tersebut tidak akan berubah ketika menjalankan code. Final dapat di-declare di class dan function, sedangkan const hanya dapat di-declare pada function.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Pertama-tama, saya membuat sebuah program Flutter baru bernama counter_7 dengan flutter create counter_7, lalu masuk ke direktori counter_7 dengan cd counter_7. Tidak lupa membuat repository baru bernama pbp-flutter-tugas. Dilanjutkan dengan git clone, untuk melakukan clone terhadap repository yang dibuat pada direktori lokal. Lalu pada file lib/main.dart, ditambahkan tombol + dan - (tidak boleh negatif) menggunakan FloatingActionButton, dan MainAxisAlignment.spaceBetween agar memisahkan kedua button. Saya juga menambahkan padding pada left button (+) untuk merapikan row. Button + akan digunakan untuk melakukan increment dan button - akan digunakan untuk melakukan decrement. onPressed di-assign pada fungsi yang dibuat, yaitu fungsi _incrementCounter dan _decrementCounter. Lalu lakukan modifikasi teks terhadap counter. Apabila counter ganjil, teks menjadi warna biru, dan apabila counter genap, teks menjadi merah. Saya melakukannya dengan menambahkan "color: _textMaker() == "GENAP" ? Colors.redAccent : Colors.blueAccent" dimana fungsi _textMaker() adalah fungsi untuk menentukan text ketika ganjil/genap.

# Tugas 8

Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Navigator.push digunakan untuk menambahkan route ke atas tumpukan screen (stack). Halaman baru nantinya akan ditampilkan di atas halaman sebelumnya. Di sisi lain, Navigator.pushReplacement menggantikan page teratas dari tumpukan screen (stack) dengan page yang baru.


Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Dalam proyek kali ini, terdapat penggunaan stateless widget dan stateful widget. Widget yang digunakan antara lain: Text widget, button widget, navigator widget, dan form widget (memuat TextFormField dan DropdownButton). Text widget berfungsi untuk membuat text. Button widget berfungsi untuk membuat button yang memodifikasi halaman data.dart dari user input. Navigator widget berfungsi untuk menampilkan layar sebagai sebuah stack atau tumpukan. Form widget bertujuan sebagai wadah bagi berbagai input field widget. Beberapa widget yang digunakan dalam form adalah TextFormField untuk menerima user input String dan DropdownButton untuk menyediakan pilihan yang dapat dipilih oleh user.


Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

onPressed, onLongPress, onTap, onClicked, onSave, onChanged


Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator bertujuan untuk melakukan navigasi ke rute halaman yang baru. Diawali dengan adanya dua rute yang akan dihubungkan, dimana biasanya disediakan button yang dapat di-click untuk mengganti halaman satu ke yang lainnya. Untuk mengganti halaman, digunakanlah method Navigator.push() seperti dijelaskan di atas. Untuk menghubungkannya dengan button, dapat digunakan event berupa onPressed. Untuk mengembalikan page ke halaman awal, akan digunakan Navigator.pop() untuk menghapus rute sekarang dari stack halaman. Untuk menghubungkan method pop dengan button, digunakan lagi event onPressed.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Sebelumnya, akan dibuat halaman form.dart dan data.dart sebagai tambahan navigasi selain main.dart. Untuk menambahkan drawer/hamburger pada app counter_7, tepatnya di ketiga file: main.dart, form.dart, dan data.dart, akan ditambahkan menu drawer yang berisi list tile berupa halaman-halaman yang akan dimasukkan ke dalam drawer. Sesuai checklist, navigasi pertama ke halaman counter, navigasi kedua ke halaman form, dan navigasi ketiga ke halaman data budget. Ketiga halaman juga akan meng-import file satu sama lain serta material.dart dari flutter.

Selanjutnya adalah modifikasi pada halaman form.dart. Ditambahkan variabel String bernama judul, variabel int bernama nominal, variabel String bernama jenisPilihan, dan List berisi String yang bernama jenisBudget. Lalu pada body, akan dibuat Form dimana terdapat input judul, nominal, serta dropdown jenis budget. Input judul dan nominal menggunakan event onChanged untuk menambahkan behavior saat data diketik serta onSaved untuk menambah behavior saat data disimpan. Juga ditambahkan validator untuk memastikan input judul dan nominal tidak kosong. Selanjutnya pada form, akan ditambahkan menu DropdownButton untuk memilih jenis budget, dimana default value adalah pengeluaran, namun dapat diganti menjadi pemasukan. Dropdown ini memiliki event onChanged yang akan mengubah value menjadi pilihan yang diganti (pemasukan/pengeluaran). Selanjutnya, terdapat button "Simpan" yang akan menyimpan seluruh value dari data yang telah dimasukkan. TextButton ini juga memiliki event onPressed dimana akan dilakukan append judul ke dalam listJudul, nominal ke dalam listNominal, dan jenisPilihan ke dalam listJenis. Selanjutnya, akan dimunculkan popup jika data berhasil ditambahkan. 

Untuk menyimpan seluruh data user input, saya menambahkan class bernama Data dimana diinisiasikan tiga buah class bernama listJudul, listNominal, dan listJenis yang akan menampung data-data sesuai user input. Ketiga list ini juga akan digunakan di data.dart alias halaman ketiga. Data.dart juga akan menginisiasi variabel listJudul, listNominalm dan listJenis yang akan di-import dari form.dart. Dengan itu, maka akan ditampilkan Text berupa keseluruhan user input dengan loop sebanyak size dari salah satu list. Hal ini dilakukan dengan menjalankan listJudul[index], listNominal[index].toString(), dan listJenis[index].