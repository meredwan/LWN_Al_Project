import 'package:assignment/screens/bangla_poem_details.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> banglaPoem = [
    {
      "title": "সোনার তরী",
      "poem":
          "আজি এ প্রভাতে রবির কর\nকেমনে পশিল প্রাণের পর,\nকেমনে পশিল গগনের আলো\nআমার হৃদয়ের কপাটে গো?",
      "writer": "রবীন্দ্রনাথ ঠাকুর",
    },
    {
      "title": "বিদায়",
      "poem":
          "তোমার পথের ধূলি হইতে\nভালোবাসি অন্তর হতে—\nতুমি যেথা যাও চলে,\nআমি থাকি তেমনি তলে।",
      "writer": "কাজী নজরুল ইসলাম",
    },
    {
      "title": "আমি ক্লান্ত",
      "poem":
          "আমি ক্লান্ত, আমি শ্রান্ত,\nবিপদপথে হইয়াছি নিঃশেষ,\nতবু ফিরে চাই তোমার মুখে—\nসান্ত্বনার শেষ আশা।",
      "writer": "জীবনানন্দ দাশ",
    },
    {
      "title": "বাংলার মুখ",
      "poem":
          "বাংলার মুখ আমি দেখিয়াছি,\nতাই আমি পৃথিবীর রূপ খুঁজিতে যাই না আর।",
      "writer": "জীবনানন্দ দাশ",
    },
    {
      "title": "দুর্দিন",
      "poem":
          "এই দুর্দিনে ডাকো বন্ধু,\nআলোকের টানে এসো চলো,\nজ্বেলে দাও দীপ দিগন্তে—\nতোমার আলোয় সব ভুলে যাই।",
      "writer": "সুকান্ত ভট্টাচার্য",
    },
    {
      "title": "চিরদিন কাহারো সমান না যায়",
      "poem":
          "চিরদিন কাহারো সমান না যায়,\nদিন যেমন যায়, যায় রাতিও,\nসুখ যেমন আসে, যায় বাতিও।",
      "writer": "মাইকেল মধুসূদন দত্ত",
    },
    {
      "title": "চিরদিন কাহারো সমান না যায়",
      "poem":
          "চিরদিন কাহারো সমান না যায়,\nদিন যেমন যায়, যায় রাতিও,\nসুখ যেমন আসে, যায় বাতিও।",
      "writer": "মাইকেল মধুসূদন দত্ত",
    },
    {
      "title": "চিরদিন কাহারো সমান না যায়",
      "poem":
          "চিরদিন কাহারো সমান না যায়,\nদিন যেমন যায়, যায় রাতিও,\nসুখ যেমন আসে, যায় বাতিও।",
      "writer": "মাইকেল মধুসূদন দত্ত",
    },
    {
      "title": "চিরদিন কাহারো সমান না যায়",
      "poem":
          "চিরদিন কাহারো সমান না যায়,\nদিন যেমন যায়, যায় রাতিও,\nসুখ যেমন আসে, যায় বাতিও।",
      "writer": "মাইকেল মধুসূদন দত্ত",
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
                      (context) => BanglaPoemDetails(poem: banglaPoem[index]),
                ),
              );
            },
            title: Text(
              banglaPoem[index]['title'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              banglaPoem[index]['writer'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.black12, thickness: 2);
        },
        itemCount: banglaPoem.length,
      ),
    );
  }
}
