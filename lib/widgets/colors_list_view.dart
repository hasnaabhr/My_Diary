import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isactive, required this.color});
  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 38,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
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
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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
