import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:freelancer_contest1/screentwo.dart';

void main() {}

class screenOne extends StatefulWidget {
  const screenOne({Key? key}) : super(key: key);

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              child: SafeArea(
                child: Stack(
                  children: [
                    Carousel(
                        images: [
                          Image.asset("assets/image1.png"),
                          Image.asset("assets/image2.jpg"),
                          Image.asset("assets/image3.jpg"),
                        ],
                        dotIncreasedColor: Colors.pink,
                        dotSpacing: 18.0,
                        dotSize: 7.0,
                        dotIncreaseSize: 2.0,
                        indicatorBgPadding: 8,
                        boxFit: BoxFit.fill,
                        dotBgColor: Colors.grey[300]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              "icon",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "sabin",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 3),
                                ),
                              ),
                              Text(
                                "Medicina Diagóstica",
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Text(
                                "DS",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.notifications),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Olá, Diogo Santos",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 172, 49, 5),
                                  fontSize: 22,
                                  wordSpacing: 2),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Ver Perfil",
                              style: TextStyle(color: Colors.grey[600]),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 23.0),
                child: Text(
                  "Para seu dia a dia",
                  style: TextStyle(
                      color: Color.fromARGB(255, 130, 17, 150),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        child: Container(
                          height: 160,
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 5),
                                child: Text(
                                  "Atendimento \nMóvel",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 172, 49, 5),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 2),
                                child: Text(
                                  "Faça o seu \nagendamento",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          height: 160,
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Icon(
                                  Icons.airplanemode_active,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 5),
                                child: Text(
                                  "Atendimento \nAeroporto Brasília",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 172, 49, 5),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 2),
                                child: Text(
                                  "Faça o seu \npré cadastro",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const screenTwo()));
                          },
                          child: Card(
                            child: Container(
                              height: 160,
                              width: 160,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Icon(
                                      Icons.file_copy,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 30, left: 5),
                                    child: Text(
                                      "Laudos",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              Color.fromARGB(255, 172, 49, 5),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 2),
                                    child: Text(
                                      "suas ordens de \nserviço",
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 160,
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.local_hospital,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 5),
                                  child: Text(
                                    "Tipos de exames",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 172, 49, 5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 2),
                                  child: Text(
                                    "informações",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          child: Container(
                            height: 160,
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 5),
                                  child: Text(
                                    "Unidades",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 172, 49, 5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 2),
                                  child: Text(
                                    "Ache a mais próxima",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 160,
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.file_copy,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 5),
                                  child: Text(
                                    "Ultrassom",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 172, 49, 5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 2),
                                  child: Text(
                                    "Acompanhe em tempo",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
