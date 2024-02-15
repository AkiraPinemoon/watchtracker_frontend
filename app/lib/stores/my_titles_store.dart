import 'package:app/models/title.model.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'my_titles_store.g.dart';

// This is the class used by rest of your codebase
class MyTitlesStore = _MyTitlesStore with _$MyTitlesStore;

// The store-class
abstract class _MyTitlesStore with Store {
  _MyTitlesStore() {
    _titles.addAll([
      TitleModel(
        title: "Joey Pics",
        description: "Good content",
        id: 69,
        localImagePath: null,
      ),
      TitleModel(
        title: "Dominion",
        description: "Meteaters suck",
        id: 420,
        localImagePath: null,
      ),
      TitleModel(
        title: "Dekarldent VODs",
        description: "FCKAFD",
        id: 161,
        localImagePath: null,
      ),
      TitleModel(
        title: "Joey Pics",
        description: "Good content",
        id: 69,
        localImagePath: null,
      ),
      TitleModel(
        title: "Dominion",
        description: "Meteaters suck",
        id: 420,
        localImagePath: null,
      ),
      TitleModel(
        title: "Dekarldent VODs",
        description: "FCKAFD",
        id: 161,
        localImagePath: null,
      ),
    ]);
  }

  @observable
  // ignore: prefer_final_fields
  List<TitleModel> _titles = ObservableList.of([]);

  @computed
  List<TitleModel> get titles => _titles;

  @action
  Future<void> addTitle(TitleModel title) async {
    _titles.add(title);
  }
}
