import 'package:flutter/material.dart';

void main() => runApp(const NewCl());

class NewCl extends StatelessWidget {
  const NewCl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Mainpg(),
    );
  }
}

class Mainpg extends StatefulWidget {
  const Mainpg({super.key});

  @override
  State<Mainpg> createState() => _MainpgState();
}

class _MainpgState extends State<Mainpg> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _notes = [];
  int _editIndex = -1;

  void _addtext() {
    final text = _controller.text;
    if (text.isEmpty) return;

    setState(() {
      if (_editIndex == -1) {
        _notes.add(text);
      } else {
        _notes[_editIndex] = text;
        _editIndex = -1;
      }
      _controller.clear();
    });
  }

  void _deleteNote(int index) {
    setState(() {
      _notes.removeAt(index);
      if (_editIndex == index) {
        _editIndex = -1;
        _controller.clear();
      } else if (_editIndex > index) {
        _editIndex--;
      }
    });
  }

  void _startEdit(int index) {
    setState(() {
      _editIndex = index;
      _controller.text = _notes[index];
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Заметки')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Введите текст',
                suffixIcon: _editIndex != -1
                    ? IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            _editIndex = -1;
                            _controller.clear();
                          });
                        },
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addtext,
              child: Text(_editIndex == -1 ? 'Добавить' : 'Обновить'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _notes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_notes[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.orange),
                          onPressed: () => _startEdit(index),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteNote(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}