import 'package:flutter/material.dart';

void main() {}

class screenTwo extends StatefulWidget {
  const screenTwo({Key? key}) : super(key: key);

  @override
  State<screenTwo> createState() => _screenTwoState();
}

class _screenTwoState extends State<screenTwo> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      color: Color.fromARGB(255, 172, 49, 5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Color.fromARGB(255, 172, 49, 5),
                        ),
                        Icon(
                          Icons.filter_alt,
                          size: 30,
                          color: Color.fromARGB(255, 172, 49, 5),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Meus laudos",
                    style: TextStyle(
                        color: Color.fromARGB(255, 172, 49, 5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TabBar(
                  controller: _controller,
                  indicatorColor: Color.fromARGB(255, 172, 49, 5),
                  tabs: [
                    Tab(
                      child: Text(
                        "Diogo Santos",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(" "),
                    ),
                    Tab(
                      child: Text(" "),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600,
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  controller: _controller,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "Resultados",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.question_mark),
                                onPressed: (() {}),
                              )
                            ],
                          ),
                          Card(
                            child: Container(
                              height: 150,
                              width: 320,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Text(
                                          "Exames",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 15),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.star_border,
                                            size: 18,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "LIPID/TESTOL/K/PRL/PTF/VD...",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 172, 49, 5),
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "O.S 463-66157-20104 - 17/02/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 2, top: 15),
                                        child: Container(
                                          child: Text(
                                            "Médico",
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                          alignment: Alignment.topLeft,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, right: 2),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Eduardo Augusto De Araujo",
                                              style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Disponível",
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Colors.green,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              height: 150,
                              width: 320,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Text(
                                          "Exames",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 15),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.star_border,
                                            size: 18,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "SARSCOV2",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 172, 49, 5),
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "O.S 145-66030-15585 - 12/10/2021",
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 2, top: 15),
                                        child: Container(
                                          child: Text(
                                            "Médico",
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                          alignment: Alignment.topLeft,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, right: 2),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Fernando Butura Broeto",
                                              style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Consultado Web",
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Colors.green,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              height: 150,
                              width: 320,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Text(
                                          "Exames",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 15),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.star_border,
                                            size: 18,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "TESTOL/SANGUEO/K/PROGEST...",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 172, 49, 5),
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2),
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "O.S 575-64777-6819 - 09/05/2018",
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 2, top: 15),
                                        child: Container(
                                          child: Text(
                                            "Médico",
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                          alignment: Alignment.topLeft,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, right: 2),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Nely Rodrigues...",
                                              style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Disponível parcialmente",
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor:
                                                      Colors.yellow,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
