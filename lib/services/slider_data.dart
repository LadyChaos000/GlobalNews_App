import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:news_app/model/slider_model.dart';

class Sliders{
  List<sliderModel> sliders=[];

  Future<void> getSlider()async{
    String url= "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=876981f4b15d42c2a676026ea25abbc6";
    var response= await http.get(Uri.parse(url));

    var jsonData= jsonDecode(response.body);

    if(jsonData['status']=='ok'){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!=null && element['description']!=null){
          sliderModel slidermodel = sliderModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            author: element["author"],
          );
          sliders.add(slidermodel);
        }
      });
    }
  }
}