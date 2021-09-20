import 'package:flutter/material.dart';
import 'package:recipe_app/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.restaurant_menu),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Recipe App',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          RecipeCard(
              title: 'My recipe',
              rating: '5.0',
              cookTime: '20 mins',
              thumbnailUrl:
                  'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360'),
        ],
      ),
    );
  }
}
