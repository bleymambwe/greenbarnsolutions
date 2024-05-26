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
      height: 930,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                'Green Barn Solutions',
                style: TextStyle(fontSize: 23, color: Colors.grey),
              ),
              // Text(
              //   'Co-Founder',
              //   style: TextStyle(
              //       color: Colors.blueGrey,
              //       fontSize: 18,
              //       fontWeight: FontWeight.bold),
              // ),
            ],
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: Container(
              height: double.infinity,
              child: Text(
                '''
                We are building the world's first Electric Rotary Tiller, a sustainable solution designed to revolutionize farming practices by offering efficient cultivation for large fields. Powered by a robust 1471W battery capacity, our tiller excels in tilling soil up to 10mm deep, making it an indispensable tool for farmers seeking enhanced productivity. ''',
                textAlign: TextAlign.justify,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 250,
                child: Image.asset('blessingsmambwe.jpg'),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'Blessings Mambwe',
                    style: TextStyle(fontSize: 23, color: Colors.grey),
                  ),
                  Text(
                    'Co-Founder',
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
            child: Container(
              height: double.infinity,
              child: Text(
                '''  The Blessings Mambwe's expertise spans a diverse range of domains, showcasing a strong background in data science, machine learning, and innovative technological solutions. With experience at companies like Absa Bank Innovation Hub, ML Collective, 
                Konkola Copper Mines and Afrimeta, He has demonstrated proficiency in developing AI solutions, conducting research at the intersection of computer vision and reinforcement learning, and implementing efficient algorithms for various applications. His skills encompass Python programming, PyTorch, machine learning model development, data analysis, collaborative teamwork, innovative algorithm design, and full-stack development.
                .''',
                textAlign: TextAlign.justify,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 250,
                child: Image.asset('andrewchileshe.jpg'),
              ),
              SizedBox(
                width: 30,
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
            child: Container(
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
