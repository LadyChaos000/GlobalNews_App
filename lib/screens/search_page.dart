import 'package:flutter/material.dart';
import 'package:news_app/model/search_model.dart';
import 'package:news_app/services/search_news.dart';
import 'package:news_app/widgets/search_results.dart';

class SearchArticles extends StatefulWidget {
  const SearchArticles({super.key});

  @override
  State<SearchArticles> createState() => _SearchArticlesState();
}

class _SearchArticlesState extends State<SearchArticles> {
  TextEditingController _searchController = TextEditingController();
  List<SearchModel> searchResults = [];
  SearchNews searchNews = SearchNews();

  void _performSearch() async {
    searchResults.clear();
    String searchTerm = _searchController.text;
    await searchNews.searchNewsByName(searchTerm);

    setState(() {
      searchResults = searchNews.news;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Search News",
              style: TextStyle(
                  color: Colors.indigoAccent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search news here...',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search, color: Colors.indigoAccent),
                  onPressed: _performSearch,
                ),
              ),
            ),
          ),
          Expanded(
            child: SearchResults(searchResults: searchResults),
          ),
        ],
      ),
    );
  }
}
