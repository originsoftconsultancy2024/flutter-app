import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_app/view/add_note/add_note.dart';

class AddDeleteNote extends StatefulWidget {
  const AddDeleteNote({super.key});

  @override
  State<AddDeleteNote> createState() => _AddDeleteNoteState();
}

class _AddDeleteNoteState extends State<AddDeleteNote> {
  bool _isOptionsVisible = false;

  void _toggleOptionsVisibility() {
    setState(() {
      _isOptionsVisible = !_isOptionsVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF007AFF),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            if (_isOptionsVisible) ...[
              Positioned(
                bottom: 80,
                right: 16,
                child: TextButton.icon(
                  onPressed: () {
                    Get.to(() => const  AddNote());
                  },
                  label: const Text(
                    "Note",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  icon: const Icon(
                    Icons.note_add,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 80,
                child: TextButton.icon(
                  onPressed: () {
                    // Add your delete action here
                  },
                  label: const Text(
                    "Delete",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: _toggleOptionsVisibility,
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.add,
                  color: Color(0xFF007AFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
