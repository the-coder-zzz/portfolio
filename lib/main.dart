import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: const Color.fromARGB(255, 96, 96, 96),
              indicator: CircleTabIndicator(color: Colors.black, radius: 3),
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Personal',
                ),
                Tab(
                  icon: Icon(Icons.school),
                  text: 'Education',
                ),
                Tab(
                  icon: Icon(Icons.build),
                  text: 'Skills',
                ),
                Tab(
                  icon: Icon(Icons.interests),
                  text: 'Interests',
                ),
                Tab(
                  icon: Icon(Icons.contact_mail),
                  text: 'Contact',
                ),
              ],
            ),
            title: Text(
              'My Profile',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: [
              PersonalInfoTab(),
              EducationTab(),
              SkillsTab(),
              InterestsTab(),
              ContactTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    // Adjust the vertical offset to move the circle indicator up
    final Offset circleOffset =
        Offset(cfg.size!.width / 2, cfg.size!.height - radius - 6);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}

class PersonalInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20.0, bottom: 16.0),
            // padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      spreadRadius: 12,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Angel P. Baldoza',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 39, 39, 39),
              shadows: [
                Shadow(
                  blurRadius: 3.0,
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            '21 years old',
            style: TextStyle(
              color: const Color.fromARGB(255, 39, 39, 39),
              fontSize: 15.0,
              shadows: [
                Shadow(
                  blurRadius: 3.0,
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.0),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                left: 25.0, right: 25.0, top: 16.0, bottom: 20.0),
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, left: 35.0, right: 35.0),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Bio',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 39, 39, 39),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12.0),
                Text(
                  '"To live is to live, not exist"',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 39, 39, 39),
                  ),
                ), // Add some space between the texts
                SizedBox(height: 7.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: const Color.fromARGB(255, 39, 39, 39),
                      size: 15.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'I like reading books',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 39, 39, 39),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.computer,
                      color: const Color.fromARGB(255, 39, 39, 39),
                      size: 15.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'I like to program',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 39, 39, 39),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.movie,
                      color: const Color.fromARGB(255, 39, 39, 39),
                      size: 15.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'I like watching movies',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 39, 39, 39),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Academic Journey",
            style: TextStyle(
                color: const Color.fromARGB(255, 39, 39, 39),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          EducationItem(
            logo: 'images/bsu_logo.png',
            degree: 'Bachelor of Science in Information Technology',
            institution: 'Batangas State University - TNEU',
            period: '2021 - Present',
          ),
          SizedBox(height: 30),
          EducationItem(
            logo: 'images/sti_logo.png',
            degree: 'TVL - MAWD',
            institution: 'STI Colleges Batangas',
            period: '2019 - 2021',
          ),
          SizedBox(height: 30),
          EducationItem(
            logo: 'images/bsu_logo.png',
            degree: 'Junior High School',
            institution: 'Batangas State University - TNEU',
            period: '2015 - 2019',
          ),
          SizedBox(height: 30),
          EducationItem(
            logo: 'images/cdsd_logo.png',
            degree: 'Elementary',
            institution: 'Casa De San Domenico',
            period: '2015 - 2019',
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String logo;
  final String degree;
  final String institution;
  final String period;

  const EducationItem({
    Key? key,
    required this.logo,
    required this.degree,
    required this.institution,
    required this.period,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        // borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(8),
            child: Image.asset(logo, fit: BoxFit.contain),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    degree,
                    style: TextStyle(
                      color: Color.fromARGB(255, 49, 49, 49),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    institution,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    period,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Technical Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          SkillItem(
            icon: Icons.laptop,
            skill: 'Web Development',
          ),
          SizedBox(height: 16),
          SkillItem(
            icon: Icons.design_services,
            skill: 'Web Design',
          ),
          SizedBox(height: 24),
          Text(
            'Non-technical Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          SkillItem(
            icon: Icons.check_circle,
            skill: 'Adaptability',
          ),
          SizedBox(height: 16),
          SkillItem(
            icon: Icons.check_circle,
            skill: 'Creativity',
          ),
          SizedBox(height: 16),
          SkillItem(
            icon: Icons.check_circle,
            skill: 'Communication',
          ),
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final IconData icon;
  final String skill;

  const SkillItem({
    Key? key,
    required this.icon,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          SizedBox(width: 16),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 14),
          ),
          SizedBox(width: 16),
          Text(
            skill,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255), // Light beige background
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Field of Interest',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2), // Slightly darker beige
              // borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'I am very fond of programming so I have deep interests in '
              'developing systems and websites. I also enjoy designing the '
              'front end of websites and applications. '
              'My curiosity in technology often leads me to explore new '
              'frameworks and tools, enhancing my skills in both backend '
              'and frontend development. I find satisfaction in creating '
              'user-friendly interfaces that are not only aesthetically '
              'pleasing but also efficient and responsive.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2), // Slightly darker beige
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The research areas I am passionate about are:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                ResearchItem(Icons.language, 'Artificial Intelligence'),
                ResearchItem(Icons.computer, 'Machine Learning'),
                ResearchItem(
                    Icons.settings_applications_sharp, 'New Technologies'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResearchItem extends StatelessWidget {
  final IconData iconData;
  final String topic;

  const ResearchItem(this.iconData, this.topic);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.black,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            topic,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Contact',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            ContactItem(
              icon: Icons.email,
              info: 'baldozaaa@gmail.com',
            ),
            SizedBox(height: 15),
            ContactItem(
              icon: Icons.phone,
              info: '09219896234',
            ),
            SizedBox(height: 24),
            Text(
              'My Socials',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            SocialMediaItem(icon: Icons.facebook, info: 'gab horseman'),
            SizedBox(height: 15),
            SocialMediaItem(icon: Icons.camera_alt, info: 'sfajskdfklpmn'),
            SizedBox(height: 15),
            SocialMediaItem(icon: Icons.music_note, info: 'postyyy'),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String info;

  const ContactItem({
    Key? key,
    required this.icon,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            height: 27,
            width: 27,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 15),
          ),
          SizedBox(width: 16),
          Text(
            info,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class SocialMediaItem extends StatelessWidget {
  final IconData icon;
  final String info;

  const SocialMediaItem({
    Key? key,
    required this.icon,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 18),
          ),
          SizedBox(width: 16),
          Text(
            info,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
