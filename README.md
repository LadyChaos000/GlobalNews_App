# Global News App

This is a Flutter application developed for accessing global news conveniently. It provides breaking news and trending articles across various categories. Below is an overview of the application structure and the technologies used.

## Technologies Used

- **Flutter:** The application is built using the Flutter framework, which is Google's UI toolkit for crafting natively compiled applications for mobile, web, and desktop from a single codebase.
- **Dart:** Dart is the programming language used for developing Flutter applications.
- **VS Code:** Visual Studio Code is the integrated development environment (IDE) used for writing and debugging the Flutter code.

## Features

- **Categories:** The app offers various news categories for users to explore. Each category is represented by an image and can be tapped to view news specific to that category.
- **Breaking News:** Displays a carousel of breaking news articles. Users can swipe through the carousel to view different articles.
- **Trending News:** Provides a list of trending news articles. Users can scroll through the list to discover trending topics.
- **Search:** Allows users to search for articles by keywords. Upon entering a search query, users are presented with relevant articles matching their search criteria.

## Components

- **HomePage:** The main screen of the app, displays breaking news, trending news, and news categories.
- **CategoryTile:** Represents a single category with an image and category name. Tapping on a category tile navigates users to the respective category news page.
- **BlogTile:** Represents a single news article with an image, title, and description. Tapping on a news article tile navigates users to view the full article.
- **ArticleView:** Displays the full content of a news article, including the article title, image, and detailed description.
- **SearchArticles:** Allows users to search for news articles by entering keywords.

## Getting Started

To run the application:

1. Ensure you have Flutter and Dart installed on your development environment.
2. Clone this repository to your local machine.
3. Open the project in Visual Studio Code.
4. Connect a device or set up an emulator.
5. Run the application using the command `flutter run` in the terminal.

## Acknowledgments

This application utilizes data from various news sources. Special thanks to the providers of the news APIs and services used in this project.

## License

Global News App is licensed under the [MIT License](LICENSE).
