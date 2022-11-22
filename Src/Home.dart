import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rich Text Editor',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          quill.QuillToolbar.basic(
            controller: _controller,
            toolbarIconSize: 30,
            iconTheme: const quill.QuillIconTheme(
              borderRadius: 16,
              iconSelectedFillColor: Colors.purpleAccent,
              iconSelectedColor: Colors.deepPurple,
            ),
            customButtons: [
            ],
            multiRowsDisplay: false,
          ),
          Expanded(
            child: Container(
              color: Colors.purpleAccent,
              padding: const EdgeInsets.all(16),
              child: quill.QuillEditor.basic(
                controller: _controller,
                readOnly: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}