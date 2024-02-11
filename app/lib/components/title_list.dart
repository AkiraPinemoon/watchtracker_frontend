import 'package:app/components/title_card.dart';
import 'package:app/main.dart';
import 'package:app/stores/my_titles_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TitleList extends StatelessWidget {
  final _myTitlesStore = getIt<MyTitlesStore>();

  TitleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final title = _myTitlesStore.titles[index];
          return TitleCard(key: ValueKey(index), title: title);
        },
        itemCount: _myTitlesStore.titles.length,
      );
    });
  }
}
