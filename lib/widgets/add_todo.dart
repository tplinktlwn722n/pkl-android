import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  final Function addTodo;

  const AddTodo(this.addTodo, {Key? key}) : super(key: key);

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: TextField(
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: null,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(hintText: 'New to do item'),
            controller: textController,
          ),
        ),
        OverflowBar(
          children: <Widget>[
            TextButton(
              child: const Text('Save'),
              onPressed: () async {
                await widget.addTodo(textController.text);
                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
