import 'package:assignment/screens/english_poem_details.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  List<Map> englishPoems = [
    {
      "title": "The Road Not Taken",
      "poem":
          "Two roads diverged in a yellow wood,\nAnd sorry I could not travel both...",
      "writer": "Robert Frost",
    },
    {
      "title": "Ozymandias",
      "poem":
          "I met a traveller from an antique land\nWho said: Two vast and trunkless legs of stone...",
      "writer": "Percy Bysshe Shelley",
    },
    {
      "title": "Daffodils",
      "poem":
          "I wandered lonely as a cloud\nThat floats on high o’er vales and hills...",
      "writer": "William Wordsworth",
    },
    {
      "title": "Still I Rise",
      "poem":
          "You may write me down in history\nWith your bitter, twisted lies...",
      "writer": "Maya Angelou",
    },
    {
      "title": "If—",
      "poem":
          "If you can keep your head when all about you\nAre losing theirs and blaming it on you...",
      "writer": "Rudyard Kipling",
    },
    {
      "title": "Annabel Lee",
      "poem": "It was many and many a year ago,\nIn a kingdom by the sea...",
      "writer": "Edgar Allan Poe",
    },
    {
      "title": "Hope is the thing with feathers",
      "poem": "Hope is the thing with feathers\nThat perches in the soul...",
      "writer": "Emily Dickinson",
    },
    {
      "title": "A Dream Within A Dream",
      "poem": "All that we see or seem\nIs but a dream within a dream...",
      "writer": "Edgar Allan Poe",
    },
    {
      "title": "Sonnet 18",
      "poem":
          "Shall I compare thee to a summer’s day?\nThou art more lovely and more temperate...",
      "writer": "William Shakespeare",
    },
    {
      "title": "Invictus",
      "poem": "I am the master of my fate,\nI am the captain of my soul.",
      "writer": "William Ernest Henley",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          EnglishPoemDetails(poem: englishPoems[index]),
                ),
              );
            },
            title: Text(englishPoems[index]['title'], style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            subtitle: Text(englishPoems[index]['writer'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black12, thickness: 2);
        },
        itemCount: englishPoems.length,
      ),
    );
  }
}
