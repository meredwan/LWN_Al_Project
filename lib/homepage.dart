import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Row Column Assignment",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height:70,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade200,
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Row(
                            children: [
                              Container(
                                height: 65,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 65,
                                width: 150,
                                decoration: BoxDecoration(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Container(
                  height: 210,
                  width: 63,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade200,
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 20,
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(color: Colors.blueGrey),
                          ),
                          SizedBox(width: 20),
                          Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue.shade200,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
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
