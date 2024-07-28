class NoteModel{
  final String title;
  final String content;
  final String date ;    //= DateTime.now().toString()
  final int color;
  NoteModel({required this.title, required this.content , required this.color,required this.date});
}