import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'favorite.dart';
import 'home.dart';
import 'settings.dart';
import 'states.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottom(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

  List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    FavoriteScreen(),
    SettingsScreen(),
  ];
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.store),
    ),
    BottomNavigationBarItem(
      label: "Category",
      icon: Icon(Icons.category),
    ),
    BottomNavigationBarItem(
      label: "Favorite",
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: "Settings",
      icon: Icon(Icons.settings),
    ),
  ];
}
