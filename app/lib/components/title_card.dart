import 'dart:io';

import 'package:app/models/title.model.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  late final TitleModel _title;

  TitleCard({
    super.key,
    required TitleModel title,
  }) {
    _title = title;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      child: Container(
        color: Theme.of(context).disabledColor,
        child: _title.localImagePath != null
            ? Hero(
                tag: _title.id, child: Image.file(File(_title.localImagePath!)))
            : Center(
                child: Text(
                  _title.title,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
