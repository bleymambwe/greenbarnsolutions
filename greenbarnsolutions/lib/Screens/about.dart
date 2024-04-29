import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.black87,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('andrewchileshe.jpg'),
              ),
              Column(
                children: [
                  Text(
                    'Andrew Chileshe Bwalya',
                    style: TextStyle(fontSize: 23, color: Colors.grey),
                  ),
                  Text(
                    'Founder',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                '''Andrew Chileshe Bwalya is the visionary behind Green Barn Solutions. With a background in mechanical engineering and sustainability consulting, Andrew brings invaluable expertise to our mission. With over six years at Solid Green, Andrew has mastered building energy modeling, data analysis, and thermal comfort assessments. His tenure at North Atlantic Engineering Consultants further fortified his skills in mechanical engineering and sustainability support. Andrew's academic achievements include a Mechanical Engineering Degree from the University of South Africa, complemented by certifications in Microsoft Cloud for Sustainability and Sustainability Foundations.''',
                textAlign: TextAlign.justify,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
