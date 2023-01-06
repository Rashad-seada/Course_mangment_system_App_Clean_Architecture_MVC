final String tableNotes = 'notes';


class NoteModel {
  int? id;
  String title;
  String body;
  String creationTime;

  NoteModel({
    this.id,
    required this.title,
    required this.body,
    required this.creationTime,
  });

  Map<String,dynamic> toMap()=>{
    "id":id,
    "title":title,
    "body":body,
    "creationTime":creationTime.toString()
  };


}