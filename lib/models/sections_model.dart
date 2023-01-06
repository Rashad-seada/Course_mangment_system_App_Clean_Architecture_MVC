class SectionsModel {
  String? code;
  String? message;
  List<SectionData>? data;

  SectionsModel({this.code, this.message, this.data});

  SectionsModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <SectionData>[];
      json['data'].forEach((v) {
        data!.add(new SectionData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SectionData {
  int? id;
  String? lectureSubject;
  String? lectureDate;
  String? lectureStartTime;
  String? lectureEndTime;

  SectionData(
      {this.id,
        this.lectureSubject,
        this.lectureDate,
        this.lectureStartTime,
        this.lectureEndTime});

  SectionData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lectureSubject = json['lectureSubject'];
    lectureDate = json['lectureDate'];
    lectureStartTime = json['lectureStartTime'];
    lectureEndTime = json['lectureEndTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lectureSubject'] = this.lectureSubject;
    data['lectureDate'] = this.lectureDate;
    data['lectureStartTime'] = this.lectureStartTime;
    data['lectureEndTime'] = this.lectureEndTime;
    return data;
  }
}

Future<SectionsModel> getAllSections() async {
  SectionsModel model;
  model = await Future.delayed(Duration(seconds: 1)).then((value) => SectionsModel.fromJson(
      {
        "code": "Success",
        "message": "Registered Successfully",
        "data": [
          {
            "id": 1,
            "lectureSubject": "Java",
            "lectureDate": "2022-06-01",
            "lectureStartTime": "08:00:00",
            "lectureEndTime": "10:00:00"
          },
          {
            "id": 2,
            "lectureSubject": "Python",
            "lectureDate": "2022-06-01",
            "lectureStartTime": "10:00:00",
            "lectureEndTime": "12:00:00"
          },
          {
            "id": 3,
            "lectureSubject": "C#",
            "lectureDate": "2022-06-01",
            "lectureStartTime": "12:00:00",
            "lectureEndTime": "14:00:00"
          },
          {
            "id": 4,
            "lectureSubject": "Flutter",
            "lectureDate": "2022-06-01",
            "lectureStartTime": "12:00:00",
            "lectureEndTime": "14:00:00"
          },
          {
            "id": 5,
            "lectureSubject": "Dart",
            "lectureDate": "2022-06-01",
            "lectureStartTime": "14:00:00",
            "lectureEndTime": "16:00:00"
          },
          {
            "id": 6,
            "lectureSubject": "NodeJs",
            "lectureDate": "2022-06-02",
            "lectureStartTime": "08:00:00",
            "lectureEndTime": "10:00:00"
          },
          {
            "id": 7,
            "lectureSubject": "PHP",
            "lectureDate": "2022-06-02",
            "lectureStartTime": "10:00:00",
            "lectureEndTime": "12:00:00"
          },
          {
            "id": 8,
            "lectureSubject": "React",
            "lectureDate": "2022-06-02",
            "lectureStartTime": "12:00:00",
            "lectureEndTime": "14:00:00"
          },
          {
            "id": 9,
            "lectureSubject": "Vue",
            "lectureDate": "2022-06-02",
            "lectureStartTime": "14:00:00",
            "lectureEndTime": "16:00:00"
          }
        ]
      }
  )
  );
  return model;
}