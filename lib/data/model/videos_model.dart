// To parse this JSON data, do
//
//     final videosResult = videosResultFromJson(jsonString);

import 'dart:convert';

VideosResult videosResultFromJson(String str) =>
    VideosResult.fromJson(json.decode(str));

String videosResultToJson(VideosResult data) => json.encode(data.toJson());

class VideosResult {
  VideosResult({
    required this.thumbnail,
    required this.linkVideo,
    required this.rumus,
    required this.title,
    required this.kdVideo,
    required this.desc,
  });

  String thumbnail;
  String linkVideo;
  List<String> rumus;
  String title;
  String kdVideo;
  String desc;

  factory VideosResult.fromJson(Map<String, dynamic> json) => VideosResult(
        thumbnail: json["thumbnail"],
        linkVideo: json["link_video"],
        rumus: List<String>.from(json["rumus"].map((x) => x)),
        title: json["title"],
        kdVideo: json["kd_video"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail,
        "link_video": linkVideo,
        "rumus": List<dynamic>.from(rumus.map((x) => x)),
        "title": title,
        "kd_video": kdVideo,
        "desc": desc,
      };
}
