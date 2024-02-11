// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_titles_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyTitlesStore on _MyTitlesStore, Store {
  Computed<List<TitleModel>>? _$titlesComputed;

  @override
  List<TitleModel> get titles =>
      (_$titlesComputed ??= Computed<List<TitleModel>>(() => super.titles,
              name: '_MyTitlesStore.titles'))
          .value;

  late final _$_titlesAtom =
      Atom(name: '_MyTitlesStore._titles', context: context);

  @override
  List<TitleModel> get _titles {
    _$_titlesAtom.reportRead();
    return super._titles;
  }

  @override
  set _titles(List<TitleModel> value) {
    _$_titlesAtom.reportWrite(value, super._titles, () {
      super._titles = value;
    });
  }

  late final _$addTitleAsyncAction =
      AsyncAction('_MyTitlesStore.addTitle', context: context);

  @override
  Future<void> addTitle(TitleModel title) {
    return _$addTitleAsyncAction.run(() => super.addTitle(title));
  }

  @override
  String toString() {
    return '''
titles: ${titles}
    ''';
  }
}
