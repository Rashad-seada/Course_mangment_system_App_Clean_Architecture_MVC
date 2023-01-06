import 'package:flutter/material.dart';

class NoteCard extends StatefulWidget {
  int id;
  String title;
  String body;
  String creationTime;

  NoteCard(
      {Key? key,
      required this.title,
      required this.body,
      required this.creationTime,
      required this.id})
      : super(key: key);

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.deepOrange.withOpacity(.5),
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset.fromDirection(
              13.5,
              6,
            ))
      ], color: Colors.deepOrange, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 15, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 220,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time_sharp,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    const Text(
                      '|',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      widget.creationTime,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                SizedBox(
                  width: 320,
                  height: 60,
                  child: Text(
                    widget.body,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
