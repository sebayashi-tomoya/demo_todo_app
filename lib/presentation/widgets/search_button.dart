import 'package:demo_todo_app/presentation/pages/search.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Search()),
        );
      },
    );
  }
}