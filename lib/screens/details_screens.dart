import 'package:flutter/material.dart';

/// Product Screen
class ProductScreen extends StatefulWidget {
  final Map<String, dynamic> burger;

  const ProductScreen({super.key, required this.burger});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  double _value = 20;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.burger["title"])),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                fit: BoxFit.cover,
                widget.burger["image"],
                height: 250,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.burger["title"],
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "The Cheeseburger Wendy’s Burger is a classic fast food burger that packs a punch of flavor in every bite...",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Spicy", style: const TextStyle(fontSize: 22)),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0XFFef2a39),
                            inactiveTickMarkColor: Colors.grey,
                            thumbColor: Color(0XFFef2a39),
                          ),
                          child: Slider(
                            min: 0,
                            max: 100,

                            value: _value,
                            onChanged: (newValue) {
                              setState(() {
                                _value = newValue;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Mild", style: TextStyle(color: Colors.red),), SizedBox(width: 50,), Text("Hot")],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Portion", style: const TextStyle(fontSize: 22)),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() => quantity--);
                                }
                              },
                              icon: const Icon(Icons.remove_circle, color: Colors.red),
                            ),
                            Text(quantity.toString(), style: const TextStyle(fontSize: 18)),
                            IconButton(
                              onPressed: () {
                                setState(() => quantity++);
                              },
                              icon: const Icon(Icons.add_circle, color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 104,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text(
                      "\$8.24",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black45,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "ORDER NOW",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
