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
    return Text(_title.title);
  }
}
