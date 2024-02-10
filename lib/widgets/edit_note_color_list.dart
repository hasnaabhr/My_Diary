import 'package:flutter/material.dart';
import 'package:noteapp/models/Note_model.dart';
import 'package:noteapp/widgets/colors_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  List<Color> colors = [
    const Color(0xffff354d),
    const Color(0xffe50457),
    const Color(0xffff4081),
    const Color(0xffffafcc),
    const Color(0xffffc8dd),
    const Color(0xffe6bedc),
    const Color(0xffcdb4db),
    const Color(0xffbde0fe),
    const Color(0xffa2d2ff),
    const Color(0xff40c4ff),
    const Color(0xff92847a),
    const Color(0xffa19186),
    const Color(0xffb19f93),
    const Color(0xffc3afa2),
    const Color(0xffedd3c4),
    const Color(0xffc8adc0),
    const Color(0xff7765e3),
    const Color(0xff9b96e1),
    const Color(0xff3b60e4),
    const Color(0xff3777ff),
  ];
  late int currentIndex;
  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = colors[index].value;

                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isactive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
