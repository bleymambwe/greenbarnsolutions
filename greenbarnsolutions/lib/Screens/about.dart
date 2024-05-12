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
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 250,
                child: Image.asset('blessingsmambwe.jpg'),
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
              child: Text(
                '''  The Blessings Mambwe's expertise spans a diverse range of domains, showcasing a strong background in data science, machine learning, and innovative technological solutions. With experience at companies like Absa Bank Innovation Hub, ML Collective, Konkola Copper Mines, IO Technologies, Afrimeta, and Enlight, they have demonstrated proficiency in developing AI solutions, conducting research at the intersection of computer vision and reinforcement learning, and implementing efficient algorithms for various applications. Their skills encompass Python programming, PyTorch, machine learning model development (including Yolov8), data analysis, collaborative teamwork, innovative algorithm design, and full-stack development using technologies like Flutter, Dart, FastAPI, and Docker. Additionally, their academic endeavors, such as designing the Enlight device, reflect a commitment to research and innovation, particularly in areas related to audio processing and automation. Overall, they possess a versatile skill set and a track record of delivering impactful solutions across different industries and projects.''',
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
