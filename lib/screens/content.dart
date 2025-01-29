import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'stateBox.dart'; // Ensure this import is correct

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Makes the content scrollable
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 289,
                  decoration: BoxDecoration(color: Colors.blue[100]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Lottie.network(
                      'https://assets8.lottiefiles.com/private_files/lf30_4FGi6N.json',
                      animate: false,
                      width: 300,
                      height: 280,
                    ),
                  ),
                ),
              ],
            ),
            Transform(
              transform: Matrix4.translationValues(0, -47, 0),
              child: Text(
                "Addition Multi Companies Groupe",
                style: GoogleFonts.mavenPro(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0, -20, 0),
              child: Column(
                children: [
                  Text(
                    "Covid-19 Statistics",
                    style: GoogleFonts.mavenPro(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "17/09/2020",
                        style: GoogleFonts.mavenPro(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.calendar_today),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: StateBox(
                          color: Colors.red,
                          value: "100,300",
                          total: "+345",
                          type: "total",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: StateBox(
                          color: Colors.green,
                          value: "70,345",
                          total: "+7630",
                          type: "Recovered",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: StateBox(
                          color: Colors.orange,
                          value: "50,320",
                          total: "+45625",
                          type: "Active",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: StateBox(
                          color: Colors.black,
                          value: "30,300",
                          total: "-3520",
                          type: "Alive",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Vaccine Statistics",
              style: GoogleFonts.mavenPro(
                  fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: StateBox(
                          color: Colors.blue,
                          value: "1.7M",
                          total: "1st Dose",
                          type: "aaaa",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: StateBox(
                          color: Colors.blue,
                          value: "2.8M",
                          total: "2nd Dose",
                          type: "bbb",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  StateBox(
                    color: Colors.blue,
                    total: "Vaccine rate",
                    value: "56.8",
                    type: "ccccc",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
