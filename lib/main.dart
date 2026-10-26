import 'package:flutter/material.dart';

void main() => runApp(const NewCl());

class NewCl extends StatelessWidget {
  const NewCl({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Mainpg());
  }
}

class Mainpg extends StatefulWidget {
  const Mainpg({super.key});

  @override
  State<Mainpg> createState() => _MainpgState();
}

class _MainpgState extends State<Mainpg> {
  final _controller = TextEditingController();
  final List<String> _notes = [];
  int _editIndex = -1;

  void _save() {
    final text = _controller.text;

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

  void _delete(int index) {
    setState(() {
      _notes.removeAt(index);
      _editIndex = -1;
      _controller.clear();
    });
  }

  void _edit(int index) {
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
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введите текст',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _save,
              child: Text(_editIndex == -1 ? 'Добавить' : 'Обновить'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _notes.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(_notes[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.orange),
                        onPressed: () => _edit(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _delete(index),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}