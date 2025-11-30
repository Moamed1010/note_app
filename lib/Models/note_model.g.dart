import 'package:hive/hive.dart';
import 'package:note_app/Models/note_model.dart';

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 1;

  @override
  NoteModel read(BinaryReader reader) {
    return NoteModel(
      title: reader.readString(),
      subTitle: reader.readString(),
      date: reader.readString(),
      color: reader.readInt(),
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.subTitle);
    writer.writeString(obj.date);
    writer.writeInt(obj.color);
  }
}
