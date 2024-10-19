class TBook {
    int id;
    int userId;
    int categoryId;
    String title;
    String author;
    String description;
    int releaseYear;
    int totalPage;
    String thickness;
    int stock;
    String? status;
    String imageUrl;
    String? createdAt;
    String? updatedAt;

    TBook({
      required this.id,
      required this.userId,
      required this.categoryId,
      required this.title,
      required this.author,
      required this.description,
      required this.releaseYear,
      required this.totalPage,
      required this.thickness,
      required this.stock,
      required this.imageUrl,
      this.status,
      this.createdAt,
      this.updatedAt,
    });

    factory TBook.fromJson(Map<String, dynamic> json) => TBook(
      id: json['id'],
      userId: json['user_id'],
      categoryId: json['category_id'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      releaseYear: json['release_year'],
      totalPage: json['total_page'],
      thickness: json['thickness'],
      stock: json['stock'],
      status: json['status'],
      imageUrl: json['image_url'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at']
    );

    TBook copyWith({
      required int id,
      required int userId,
      required int categoryId,
      required String title,
      required String author,
      required String description,
      required int releaseYear,
      required int totalPage,
      required String thickness,
      required int stock,
      required String imageUrl,
      String? status,
      String? createdAt,
      String? updatedAt,
    }) => 
      TBook(
        id: this.id,
        userId: this.userId,
        categoryId: this.categoryId,
        title: this.title,
        author: this.author,
        description: this.description,
        releaseYear: this.releaseYear,
        totalPage: this.totalPage,
        thickness: this.thickness,
        stock: this.stock,
        imageUrl: this.imageUrl,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}

List<TBook> sampleBuku = List.from([
    {
        "id": 1,
        "user_id": 1,
        "category_id": 1,
        "title": "Laskar Pelangi",
        "author": "Andrea Hirata",
        "description": "Novel yang menceritakan tentang perjuangan anak-anak Belitung untuk menggapai cita-cita mereka.",
        "release_year": 2005,
        "total_page": 529,
        "thickness": "tebal",
        "stock": 100,
        "status": "Tersedia",
        "image_url": "https://final-project-go-batch-58.up.railway.app/attachments/book-item-1.jpg",
        "created_at": "2024-08-09T12:19:03.928409Z",
        "updated_at": "2024-08-09T12:19:03.928409Z",
        "category": {
          "id": 1,
          "name": "Fiksi",
          "description": "Buku yang berisi cerita rekaan atau imajinatif.",
          "created_at": "0001-01-01T00:00:00Z",
          "updated_at": "0001-01-01T00:00:00Z"
        }
    },
    {
        "id": 2,
        "user_id": 2,
        "category_id": 2,
        "title": "Sapiens: Riwayat Singkat Umat Manusia",
        "author": "Yuval Noah Harari",
        "description": "Buku yang mengupas sejarah umat manusia dari zaman purba hingga modern.",
        "release_year": 2011,
        "total_page": 82,
        "thickness": "tipis",
        "stock": 50,
        "status": "Tersedia",
        "image_url": "https://final-project-go-batch-58.up.railway.app/attachments/book-item-2.jpg",
        "created_at": "2024-08-09T12:19:03.928409Z",
        "updated_at": "2024-08-09T12:19:03.928409Z",
        "category": {
          "id": 2,
          "name": "Non-Fiksi",
          "description": "Buku yang berisi informasi berdasarkan fakta dan kenyataan.",
          "created_at": "0001-01-01T00:00:00Z",
          "updated_at": "0001-01-01T00:00:00Z"
        }
    }
  ].map((book) => TBook.fromJson(book)));