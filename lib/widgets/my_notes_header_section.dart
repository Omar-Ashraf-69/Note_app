import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/utils/app_styles.dart';

class MyNotesHeaderSection extends StatelessWidget {
  const MyNotesHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SvgPicture.asset(
          'assets/images/note-icon.svg',
          width: 100,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "My notes",
          style: AppStyles.headingStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        const NotesCounterWidget(),
      ],
    );
  }
}

class NotesCounterWidget extends StatelessWidget {
  const NotesCounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box<NoteModel>('notes').listenable(),
        builder: (context, Box<NoteModel> box, _) {
          return Text(
            "${Hive.box<NoteModel>('notes').length} notes",
            style: AppStyles.notesCountStyle,
          );
        });
  }
}
