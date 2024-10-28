
import 'dart:convert';

PostResponse postResponseFromJson(String str) => PostResponse.fromJson(json.decode(str));

String postResponseToJson(PostResponse data) => json.encode(data.toJson());

class PostResponse {
    PostResponse({
        required this.id,
        required this.title,
        required this.body,
        required this.userId,
    });

    int id;
    String title;
    String body;
    int userId;

    factory PostResponse.fromJson(Map<dynamic, dynamic> json) => PostResponse(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        userId: json["userId"],
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "userId": userId,
    };
}
