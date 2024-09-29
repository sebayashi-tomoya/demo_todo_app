import 'package:demo_todo_app/presentation/theme/app_colors.dart';
import 'package:demo_todo_app/presentation/theme/hero_tags.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('検索'),
        backgroundColor: AppColors.main,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: HeroTags.searchButton,
            child: const Material(
              color: Colors.transparent,
              child: SearchBar(),
            ),
          ),
          // 他の検索関連のウィジェットをここに追加
        ],
      ),
    );
  }
}