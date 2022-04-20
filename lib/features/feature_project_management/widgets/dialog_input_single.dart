import 'package:flutter/material.dart';

class MyDialogSingleInput extends StatefulWidget {
  final TextEditingController textEditingController;
  final String title;
  final String labelText;
  final String errorText;
  final String actionButtonText;

  const MyDialogSingleInput({
    Key? key,
    required this.textEditingController,
    required this.title,
    required this.labelText,
    required this.errorText,
    required this.actionButtonText,
  }) : super(key: key);

  @override
  _MyDialogSingleInputState createState() => _MyDialogSingleInputState();
}

class _MyDialogSingleInputState extends State<MyDialogSingleInput> {
  bool _validate = false;

  @override
  void dispose() {
    widget.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${widget.title}'),
      content: TextField(
        controller: widget.textEditingController,
        autofocus: true,
        decoration: InputDecoration(
          labelText: '${widget.labelText}',
          errorText: _validate ? '${widget.errorText}' : null,
        ),
      ),
      actions: <Widget>[
        MaterialButton(
          elevation: 5,
          child: Text('${widget.actionButtonText}'),
          onPressed: () {
            setState(() {
              widget.textEditingController.text.isEmpty
                  ? _validate = true
                  : _validate = false;
            });

            if (widget.textEditingController.text.isNotEmpty) {
              Navigator.of(context).pop(widget.textEditingController.text);
            } else {
              print('textEditingController is Empty.');
            }
          },
        )
      ],
    );
  }
}
