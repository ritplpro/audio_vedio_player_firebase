class VideoModal{
  String? author;
  String? description;
  String? duration;
  String? id;
  bool? isLive;
  String? subscriber;
  String? thumbnailUrl;
  String? title;
  String? uploadTime;
  String? videoUrl;
  String? views;



  VideoModal({ required this.author,
    required this.description,
    required this.duration,
    required this.id,
      required this.isLive,
    required this.subscriber,
    required this.thumbnailUrl,
    required this.title,
      required this.uploadTime,
    required this.videoUrl,
    required this.views});

  factory VideoModal.fromMap(Map<String,dynamic> map){
    return VideoModal(
        author: map["author"],
        description: map["description"],
        duration: map["duration"],
        id: map["id"],
        isLive: map["isLive"],
        subscriber: map["subscriber"],
        thumbnailUrl: map["thumbnailUrl"],
        title: map["title"],
        uploadTime: map["uploadTime"],
        videoUrl: map["videoUrl"],
        views: map["views"]);
  }







}