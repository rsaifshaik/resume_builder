import 'package:assignment/pdf_generator.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 30,
            child: Container(
              height: screenHeight * 0.2,
              width: screenWidth,
              color: Colors.brown[200],
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: screenWidth * 0.3 + 30 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Shaik',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Saif',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Student',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Left side profile section
          Positioned(
            left: 30,
            top: 0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              height: screenHeight,
              width: screenWidth*0.3,
              color: Colors.green[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  // Circular profile image
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/IMG_20230604_223509.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    'PROFILE:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Bachelor Of Technology', style: TextStyle(color: Colors.white)),
                  Text('Student.', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 2),
                  Text('I consider myself a responsible and orderly person.', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 2),
                  Text('I am looking forward to my first work experience.', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 20),
                  Text(
                    'CONTACT ME:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('8465928934 ', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 2),
                  Text('rsaifshaik234@gmail.com', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 2),
                  Text('Guntur, Andhra Pradesh, India.', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          // Main content (education, languages, skills, experience)
          Positioned(
            top: screenHeight * 0.2 + 30,
            left: screenWidth * 0.3 + 30,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Education',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Vasireddy Venkatadri Institute Of Technology  -  (BTech)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 3),
                  Text('Electrical And Electronics Engineering.'),
                  SizedBox(height: 5),
                  Text(
                    'Intermediate College',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 3),
                  Text('2019-2021.'),
                  SizedBox(height: 15),
                  Text(
                    'LANGUAGE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 3),
                  Text('English.'),
                  Text('Telugu.'),
                  Text('Urdu.'),
                  SizedBox(height: 15),
                  Text(
                    'SKILLS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 3),
                  Text('Flutter.'),
                  Text('Dart.'),
                  Text('Firebase.'),
                  SizedBox(height: 15),
                  Text(
                    'EXPERIENCE',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Flutter Development",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "(Aug 2024 - Present)",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Udemy",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)
            ),
            onPressed: () async {
            final pdf= await generateResumePDF();
            await Printing.layoutPdf(
              onLayout: (PdfPageFormat format) async => pdf.save(),
            );
          },
            child: Text('Show Resume PDF',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}


