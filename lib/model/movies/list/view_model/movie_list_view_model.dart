import 'package:flutter/cupertino.dart';


import 'movie_list_item_view_model.dart';

abstract class MovieListViewModel {
  Stream<List<MovieListItemViewModel>> get movieList;
  Stream<StatefulWidget> get pushWidget;

  void cellSelected(int index);
  void viewLoaded();
  void reachingBottom();
  void dispose();
}