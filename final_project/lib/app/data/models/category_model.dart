class TCategory {
    int id;
    String name;
    String? description;
    String? createdAt;
    String? updatedAt;

    TCategory({
      required this.id,
      required this.name,
      this.description,
      this.createdAt,
      this.updatedAt,
    });

    factory TCategory.fromJson(Map<String, dynamic> json) => TCategory(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at']
    );

    TCategory copyWith({
      required int id,
      required String name,
      String? description,
      String? createdAt,
      String? updatedAt,
    }) => 
      TCategory(
        id: this.id,
        name: this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}

List<TCategory> sampleCategories = List.from([
  {
    "id": 3,
    "name": "All Book",
    "description": "Buku yang berisi cerita rekaan atau imajinatif.",
    "created_at": "2024-08-09T12:19:02.332831Z",
    "updated_at": "2024-08-09T12:19:02.332831Z"
  },{
    "id": 1,
    "name": "Fiksi",
    "description": "Buku yang berisi cerita rekaan atau imajinatif.",
    "created_at": "2024-08-09T12:19:02.332831Z",
    "updated_at": "2024-08-09T12:19:02.332831Z"
  },
  {
    "id": 2,
    "name": "Non-Fiksi",
    "description": "Buku yang berisi informasi berdasarkan fakta dan kenyataan.",
    "created_at": "2024-08-09T12:19:02.332831Z",
    "updated_at": "2024-08-09T12:19:02.332831Z"
  }
].map((category) => TCategory.fromJson(category)));