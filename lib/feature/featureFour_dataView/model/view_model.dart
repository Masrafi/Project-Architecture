class DataView {
  int? id;
  String? title;
  int? catId;
  String? image1;
  String? image2;
  int? userId;
  int? completionStatus;
  String? completionDate;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? categoryName;
  String? slug;
  String? icon;
  int? goalId;

  DataView(
      {this.id,
      this.title,
      this.catId,
      this.image1,
      this.image2,
      this.userId,
      this.completionStatus,
      this.completionDate,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.categoryName,
      this.slug,
      this.icon,
      this.goalId});

  DataView.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    catId = json['cat_id'];
    image1 = json['image_1'];
    image2 = json['image_2'];
    userId = json['user_id'];
    completionStatus = json['completion_status'];
    completionDate = json['completion_date'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    categoryName = json['category_name'];
    slug = json['slug'];
    icon = json['icon'];
    goalId = json['goal_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['cat_id'] = this.catId;
    data['image_1'] = this.image1;
    data['image_2'] = this.image2;
    data['user_id'] = this.userId;
    data['completion_status'] = this.completionStatus;
    data['completion_date'] = this.completionDate;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['category_name'] = this.categoryName;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['goal_id'] = this.goalId;
    return data;
  }
}