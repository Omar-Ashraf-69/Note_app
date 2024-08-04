import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/utils/app_styles.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 0.65,
          shadowColor: Colors.black,
          clipBehavior: Clip.hardEdge,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat('MMM d').format(note.date),
                  style: AppStyles.dateStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  note.content,
                  style: AppStyles.noteTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
