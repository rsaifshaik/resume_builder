import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Document> generateResumePDF() async {
  final Uint8List imageBytes = await _loadAssetImage('assets/IMG_20230604_223509.jpg');
  final pw.MemoryImage image = pw.MemoryImage(imageBytes);
  final pdf=pw.Document();
   pdf.addPage(
       pw.Page(
           build: (context) {
             final pdfHeight = PdfPageFormat.a4.height; // A4 page height
             final pdfWidth = PdfPageFormat.a4.width; // A4 page height
             return pw.SizedBox(
               height: pdfHeight,
               width: pdfWidth,
               child: pw.Stack(
                   children: [
                     pw.Positioned(
                         top: 30,
                         child: pw.Container(
                           height: pdfHeight * 0.2,
                           width: pdfWidth,
                           color: PdfColors.brown200,
                           child: pw.Row(
                             children: [
                               pw.SizedBox(
                                 width: pdfWidth*0.3+30+16
                               ),
                               pw.Column(
                                   crossAxisAlignment: pw.CrossAxisAlignment.start,
                                   children: [
                                     pw.SizedBox(height: 35),
                                     pw.Text('Shaik',style: pw.TextStyle(color: PdfColors.black,fontSize: 32,fontWeight: pw.FontWeight.bold)),
                                     pw.Text('Saif',style: pw.TextStyle(color: PdfColors.black,fontSize: 32,fontWeight: pw.FontWeight.bold)),
                                     pw.Text('Student',style: pw.TextStyle(fontSize: 20,color: PdfColors.brown)),
                                   ]
                               )
                             ]
                           ),
                         ),
                     ),
                      pw.Positioned(
                        left: 30,
                         child: pw.Container(
                           padding: pw.EdgeInsets.all(16.0),
                             height: pdfHeight,
                             width: pdfWidth*0.3,
                             color: PdfColors.green200,
                           child:  pw.Column(
                             crossAxisAlignment: pw.CrossAxisAlignment.start,
                             mainAxisAlignment: pw.MainAxisAlignment.start,
                             children: [
                               pw.SizedBox(height: 20),
                               pw.SizedBox(
                                 height: 180,
                                 width: 180,
                                 child: pw.Container(
                                   decoration: pw.BoxDecoration(
                                     shape: pw.BoxShape.circle, // This makes the container circular
                                     border: pw.Border.all(color: PdfColors.white, width: 5), // White border
                                   ),
                                   child: pw.ClipOval(
                                     child: pw.Image(image, fit: pw.BoxFit.cover),
                                   ),
                                 ),
                               ),
                               pw.SizedBox(height: 80),
                               pw.Text('PROFILE:',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,color: PdfColors.white)),
                               pw.SizedBox(height: 8),
                               pw.Text('Bachelor Of Technology',style: pw.TextStyle(color: PdfColors.white)),
                               pw.Text('Student.',style: pw.TextStyle(color: PdfColors.white)),
                               pw.SizedBox(height: 2),
                               pw.Text('I consider myself a responsible and orderly person.',style: pw.TextStyle(color: PdfColors.white)),
                               pw.SizedBox(height: 2),
                               pw.Text('I am looking forward for my first wor experience.',style: pw.TextStyle(color: PdfColors.white)),
                               pw.SizedBox(height: 20),
                               pw.Text('CONTACT ME:',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,color: PdfColors.white)),
                               pw.SizedBox(height: 8),
                               pw.Text('8465928934 ',style: pw.TextStyle(color: PdfColors.white)),
                               pw.SizedBox(height: 2),
                               pw.Text('rsaifshaik234@gmail.com',style: pw.TextStyle(color: PdfColors.white)),
                               pw.SizedBox(height: 2),
                               pw.Text('Guntur,Andhra Pradesh,India.',style: pw.TextStyle(color: PdfColors.white)),
                             ]
                           )
                         ),
                     ),
                     pw.Positioned(
                       top: pdfHeight * 0.2+30,  // Below the brown container
                       left: pdfWidth * 0.3+30,
                       bottom: 0,
                       right: 0,
                       child: pw.Container(
                         padding: pw.EdgeInsets.all(16),
                           color: PdfColors.white,
                           child: pw.Column(
                             crossAxisAlignment: pw.CrossAxisAlignment.start,
                               children: [
                                 pw.Text('Education', style: pw.TextStyle(
                                     fontSize: 20, fontWeight: pw.FontWeight.bold))
                                 , pw.SizedBox(height: 15),
                                 pw.Text('Vasireddy Venkatadri Institute Of Technology  -  (BTech)',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 16)),
                                 pw.SizedBox(height: 3),
                                 pw.Text('Electrical And Electronics Engineering.'),
                                 pw.SizedBox(height: 5),
                                 pw.Text('Intermediate College',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 16)),
                                 pw.SizedBox(height: 3),
                                 pw.Text('2019-2021.'),
                                 pw.SizedBox(height: 15),
                                 pw.Text('LANGUAGE',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                 pw.SizedBox(height: 3),
                                 pw.Text('English.'),
                                 pw.SizedBox(height: 3),
                                 pw.Text('Telugu.'),
                                 pw.SizedBox(height: 3),
                                 pw.Text('Urdu.'),
                                 pw.SizedBox(height: 15),
                                 pw.Text('SKILLS',style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 20)),
                                 pw.SizedBox(height: 3),
                                 pw.Text('Flutter.'),
                                 pw.SizedBox(height: 3),
                                 pw.Text('Dart.'),
                                 pw.SizedBox(height: 3),
                                 pw.Text('Firebase.'),
                                 pw.SizedBox(height: 15),
                                 pw.Text('EXPERIENCE',style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold)),
                                 pw.Row(
                                   crossAxisAlignment: pw.CrossAxisAlignment.end,
                                   children: [
                                     pw.Text("Flutter Development",style: pw.TextStyle(fontSize: 16)),
                                     pw.SizedBox(width: 8),
                                     pw.Text("(Aug 2024 - Present)",style: pw.TextStyle(fontSize: 10)),
                                   ]
                                 ),
                                 pw.Row(
                                   mainAxisAlignment: pw.MainAxisAlignment.start,
                                   children: [
                                     pw.Text("Udemy",style: pw.TextStyle(fontSize: 14)),
                                     pw.SizedBox(width: 8),
                                   ]
                                 )
                               ]
                           )
                       ),
                     ),
                   ]
               ),
            );
           }
       ),
     );
   return pdf;
}

Future<Uint8List> _loadAssetImage(String path) async {
  final ByteData data = await rootBundle.load(path);
  return data.buffer.asUint8List();
}