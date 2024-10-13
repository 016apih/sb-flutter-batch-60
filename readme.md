Catatan Materi Dart
memiliki nilai dan karakteristik tertentu. Beberapa contoh tipe data pada dart di antaranya:
1. Number : number dibagi menjadi dua yaitu integer (int) dan double
2. String : tipe data berupa text atau kumpulan karakter, biasanya string dibungkus dalam tanda petik ganda (double quote) atau tanda petik tunggal (single quote).
3. Boolean: tipe data dengan nilai true atau false
4. List & maps : daftar tipe data untuk merepresentasikan sekumpulan object

immutable => final & const

Catatan flutter
- **MaterialApp** mengonfigurasi aplikasi dengan sebuah judul, tema, dan widget awal (MyHomePage).
- **home** menentukan widget awal yang akan ditampilkan saat aplikasi diluncurkan, dalam hal ini adalah MyHomePage.
- **Container**
  - width dan height:
  - padding, margin, decoration
- **Padding**
  - padding => EdgeInsets 
- **Align**
  - alignment => Alignment.topLeft, Alignment.center, Alignment.bottomRight,
- **Center**
  - child => widget anak yg akan ditempatkan di tengah
- **SizedBox**
  - width, height
- **Expanded** (memperluas widget)
  - diggunkaan dalam row, column, flex
  - child: 
- **Stack** => memungkinkan menumpuk widget
  - children
  - alignment
-  **ListView**:
   ListView.builder => data panjang dinamis
      - itemCount : jumlah item
      - itemBuilder: membuat widget
   ListView.separated => membuat daftar denan pemisah antar item
      - itemCount : jumlah item
      - itemBuilder: membuat widget
      - separatorBuilder: pemisah item
   ListView.custom => menyesuaikan kebutuhan user
      - childrenDelegate: untuk membuat daftar widget
   ListView => default, membuat list dnegan jumlah item yg udah di ketahui dan relative kecil
      - children

Jenis-Jenis GridView:
   GridView.count => jumlah kolom tetap
      - crossAxisCount: Jumlah kolom dalam grid.
      - mainAxisSpacing: Jarak antara baris dalam grid.
      - crossAxisSpacing: Jarak antara kolom dalam grid.
      - childAspectRatio: Rasio aspek dari anak-anak dalam grid.
   GridView.extent => lebar kolom tetep
      - maxCrossAxisExtent: Lebar maksimal dari setiap kolom dalam grid.
      - mainAxisSpacing: Jarak antara baris dalam grid.
      - crossAxisSpacing: Jarak antara kolom dalam grid.
      - childAspectRatio: Rasio aspek dari anak-anak dalam grid.
   GridView.builder => grid panjang atau dinamis
      - gridDelegate: Menentukan bagaimana item dalam grid harus diatur. Biasanya  menggunakan SliverGridDelegateWithFixedCrossAxisCount / SliverGridDelegateWithMaxCrossAxisExtent.
      - itemCount: Jumlah item dalam grid.
      - itemBuilder: Fungsi yang membangun widget untuk setiap item.
   GridView.custom => custom penuh
      - gridDelegate: Menentukan bagaimana item dalam grid harus diatur. Biasanya menggunakan SliverGridDelegateWithFixedCrossAxisCount atau SliverGridDelegateWithMaxCrossAxisExtent.
      - childrenDelegate: Delegasi yang membangun widget untuk grid.
 - Navigatir flutter
   - navigator => object yg mengelola tumpukan (stack) dari object route
   - navigator.push() => menambahkan halaman baru ke dalam tumpukan navigasi
   - navigator.pop() => ,enutup halaman saat ini dan kembali ke halaman sebelumnya dalam tumpukan navigasi
   - navigator.pushReplacement() => menambahkan halaman baru dan menggantikan halaman saat ini dalam tumpukan navigasi
   - Navigator.pushAndRemoveUntil => menambahkan halaman baru dan menghapus semua halaman di atas halaman tujuan dari tumpukan navigasi
   - Navigatore.pushNamed(context, '/detail') => melakukan navigasi ke halaman '/detail' & Navigator.pop(context) untuk kembali
   - Kenapa Named Routes:
     - keterbacaan & pemeliharaan: karena di definisikan secara eksplisit
     - fleksibilitas: mudah untuk mengubah dan memanipulasi nabigasi tanpa mengubah implementasi di banyak bagian

link figma: https://www.figma.com/design/zaQUCp3MsBQm0B7D4VuapK/Sanber?node-id=0-1&t=RCbR1UjKu3CCClIu-1

yag pertama kali
- Scafold => kerangka kerangka keraja
- SafeArea => di bawah status bar

almatsurat => PageView(), Carousel

**firebase** => https://www.youtube.com/watch?v=f_O0FSjAWM0&list=PL3vTvg37dBB2CZjmtjMk59DqHidQ_RJDa
- npm install -g firebase-tools
- firebase login => untuk login
- firebase projects:list => cek semua list project
- dart pub global activate flutterfire_cli => add ke flutter (cukup sekali)
- flutterfire configure => configure firbase dengan project flutter (tiap bikin project)
- flutter pub add firebase_core
- flutter pub add firebase_auth

=>>> kalo mau restart ulang <<<=
- delete file firebase.json & firebase_options.dart
- lalu =>  flutterfire configure

**Get X**
 => me rebuild 1 widget yg terhubung dengan obx
  - Reactive State management & simple
  - StateManagement
  - RouteManagement
    - Navigator.push() => Get.to(() => pageDua()) | Get.toNamed
    - Navigator.pop() => Get.back(() => PageTiga())
    - Navigator.pushReplace => Get.off(() => PageTiga())
    - Navigator.pushAndRemoveUntil => Get.offAll(() => PageSatu())
    - argument => Get.argument();

default folder
- app 
  - custom
  - theme
- controler
- model
- pages
- service
- widget