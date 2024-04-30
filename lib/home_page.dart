import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homepagecsreen/Assessments/assessment_screen.dart';
import 'package:homepagecsreen/assessments_page.dart';
import 'package:homepagecsreen/company_contentall.dart';
import 'recommendation_page.dart';
import 'certificates.dart';
import 'practice_text_page.dart';
import 'practices_audio_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<MenuItem> (
              padding: EdgeInsets.all(10),
              child: Container(
                child: Icon(Icons.menu),
                margin: EdgeInsets.all(10),),

              onSelected: (value) {
                if(value == MenuItem.item1) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Certificates(),
                  ));
                }
                if(value == MenuItem.item2) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Certificates(),
                  ));
                }
                if(value == MenuItem.item4) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Certificates(),
                  ));
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: MenuItem.item1,
                  child: Text('Recommendations'),),
                const PopupMenuItem(
                  value: MenuItem.item2,
                  child: Text('Company Content'),),
                const PopupMenuItem(
                  value: MenuItem.item3,
                  child: Text('Courses'),),
                const PopupMenuItem(
                    value: MenuItem.item4,
                    child: Text(' Certificates'),
                )
              ])
        ],
        elevation: 0,
        leading: Image.network(
          'https://media.licdn.com/dms/image/D560BAQGybNxcB5JALg/company-logo_200_200/0/1704363558329/thriving_springs_logo?e=2147483647&v=beta&t=jMPHAVtkJNcschbyCcq1Zj4uOSM7wYiyDDEMfJKv7Qw'
          ,scale: 7.5,
        ),
        leadingWidth: 65,
        titleSpacing: -0,
        title: const Text(
          "Thriving Springs",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.4,
            fontFamily: "Manrope_bold",
          ),
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 235,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFBECEFE),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdx7HjRXcShPt-oR-OPPYLL8IZWWiNIcnvPAASBPvGIw&s',
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Verdigris Green",
                              style: TextStyle(
                                fontFamily: "Manrope_bold",
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(79, 55, 139, 1),
                                fontSize: 20,
                                letterSpacing: 0.2,
                              ),
                            ),
                            Text(
                              "Congrats you have reach Platinum",
                              style: TextStyle(
                                fontFamily: "Manrope_bold",
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(79, 55, 139, 1),
                                fontSize: 12,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Your Thrive Miles",
                          style: TextStyle(
                            color: Color.fromRGBO(79, 55, 139, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Manrope_bold",
                            letterSpacing: 0.2,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "10000",
                          style: TextStyle(
                            color: Color.fromRGBO(79, 55, 139, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Manrope_bold",
                            letterSpacing: 0.2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("my_learning");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 66,
                            width: 93,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontFamily: "Manrope_bold",
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(79, 55, 139, 1),
                                    fontSize: 15,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Rank",
                                  style: TextStyle(
                                    fontFamily: "Manrope_bold",
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(79, 55, 139, 1),
                                    fontSize: 12,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 66,
                          width: 93,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "98%",
                                style: TextStyle(
                                  fontFamily: "Manrope_bold",
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(79, 55, 139, 1),
                                  fontSize: 15,
                                  letterSpacing: 0.2,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Percentile",
                                style: TextStyle(
                                  fontFamily: "Manrope_bold",
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(79, 55, 139, 1),
                                  fontSize: 12,
                                  letterSpacing: 0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 66,
                          width: 93,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: "Manrope_bold",
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(79, 55, 139, 1),
                                  fontSize: 15,
                                  letterSpacing: 0.2,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Certificates",
                                style: TextStyle(
                                  fontFamily: "Manrope_bold",
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(79, 55, 139, 1),
                                  fontSize: 12,
                                  letterSpacing: 0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Recommendations",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Manrope_bold",
                          letterSpacing: 0.2,
                        ),
                      ),
                      // const SizedBox(
                      //   width: 2,
                      // ),
                      const Icon(
                        Icons.info_outline,
                        size: 15,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReccomendationPage()));
                        },
                        child: const Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0056D2),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Manrope_bold",
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24,),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigCards(),
                    BigCards(),
                    BigCards(),BigCards(),BigCards(),BigCards(),
                  ],
                ),
              ),
                ],
              ),
            ),
              SizedBox(height: 24,),

              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Company Content",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Manrope_bold",
                            letterSpacing: 0.2,
                          ),
                        ),
                        // const SizedBox(
                        //   width: 2,
                        // ),
                        const Icon(
                          Icons.info_outline,
                          size: 15,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CompanyContentPageAll()));
                          },
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff0056D2),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Manrope_bold",
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),

                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CompanyContent(),
                          CompanyContent(),CompanyContent(),CompanyContent(),
                          CompanyContent(),CompanyContent(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24,),

              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: const Text(
                            "Assessments",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Manrope_bold",
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   width: 2,
                        // ),
                        const SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AssessmentScreen()));
                          },
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff0056D2),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Manrope_bold",
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),

                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AssessmentCard(), AssessmentCard(),AssessmentCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Practices",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Manrope_bold",
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   width: 2,
                      // ),
                      const SizedBox(
                        width: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AudioPage()));
                        },
                        child: const Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0056D2),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Manrope_bold",
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24,),

                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PracticeCard(),
                        PracticeCard(), PracticeCard(), PracticeCard(),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}


class BigCards extends StatelessWidget {
  const BigCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 280,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Card(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/6e66/7023/0293ca02d133f9c288ffc0e052628516?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kLjv-W14vTK9VcQfC9gkRyXiejtoXZNamjgkOzkPcVPOfogBMDx6LEiY8Egv8KFMYYvVYO8VzzGdPeJCFMvCEy~avbQS45XtLFMUyWGoVw9brMUyMYTVN-UPNPwg3~8hopOeGTKpWmV3-Rorv4t2xiOKS5Wpc4EROj3tN63aLi4q~YqUIDL7WyukwIsTCTia35Y4gc5Lh~5dtN08ycspqqEYofofqO43YPOFFBr9zLpanTnhIY88It-~ZKdGo8Hl4EOHRizQfBk~BPg~zpcQNEXwa4500J5raCa4Su~MJYZwVfl26Hz29mnBPXdWP40H6H6ZHjSY3hGJLIborj0OeA__',
            ), height: 157.5, width: 280, fit: BoxFit.cover,),
            LinearProgressIndicator(
              minHeight: 6,
              value: 0.3,
              color: Colors.green,
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('The Lean Startup method with Eric Ries ',style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ), maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text('1hr 20min', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                  SizedBox(width: 10, ),
                  Text('· 500 Thrive Miles', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                  SizedBox(width: 10,),
                  Text('· Certificate', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CompanyContent extends StatelessWidget {
  const CompanyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 280,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Card(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/bc38/d40d/c29d9fb163f85b649033b588caa73bf1?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YRSFgpYMihmdXfunT6j52wXEEzJibaGJwzXY2iqCvYR2I6TRubyNy9busgEqPT8NewPl98Kqyih50ZDX-zDPjcWZELoLR9G5Mf-QoNyDmLxuOvY3JAcsL00HOAh6VIEsyoGt5qSimiHJflQKZD~o~ST85z1zN9gj0iYLp1m0pK-XdrmZRI4GX6-w0hj-BdbiLTljhnvBC9Njy9gU7pIwS0~8xCOZWXo2K29rKYbfpmD-FjI35BrdlYZz1qxOSuS9X15alQehUcy3ABCLt0IgAf2ymZwVah7Ry5RCHQac80eY9FXX07qMdfelF~tB7b9amMo-iTaEvrhrLjijyJr6fw__',
            ), height: 157.5, width: 280, fit: BoxFit.cover,),
            LinearProgressIndicator(
              minHeight: 6,
              value: 0.3,
              color: Colors.green,
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Leading from back to front  A course for Leaders',style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ), maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
            SizedBox(height: 9,),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text('1hr 20min', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                  SizedBox(width: 10, ),
                  Text('· 500 Thrive Miles', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                  SizedBox(width: 10,),
                  Text('· Certificate', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AssessmentCard extends StatelessWidget {
  const AssessmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305,
      width: 170,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Card(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/1949/36db/f548e5df794956c5efbaabbe0ad4352d?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DOErhMJwvkLoFDpC6XOQb1cUA65TEWwby5D6JQ-imw1J6cu2HgvVXg-XajSKHUyYtDF1Avua~gOSDDk52AhFHRp1GAgaQT289yqLfvfZRV6zPHoC0Qxe8Ys713LvSo3ZYSgO1~RMhfdu8ReGdhYAfJAQiao5SRut9G7uhdVLZIleIh01DD~3YoalCOTHWigGcYmS6fUx4Ck9~p4bP8n0M0USptk~1kShoU4o6ISsIbGhcU2-GrC-5O7VF93tooBdlqG0VbHoOzy6TR~egrdnkhIu8~E3PAdOhu5VO2JDKWa2QmYBv~FqZkJ5pkRlEN7o6VcX9uOwhi1by0ObmAXe0w__',
            ), height: 170, width: 170, fit: BoxFit.cover,),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Lean Startup method with Eric Ries Gorden ',style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ), maxLines: 2, overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 8,),
                  Text('11 attempts', style: TextStyle(
                    fontFamily: "Roboto",
                    // fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),),
                  SizedBox(height: 8, ),
                  Text("Progress", style: TextStyle(
                    fontFamily: "Roboto",
                    // fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class PracticeCard extends StatelessWidget {
  const PracticeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Card(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/deeb/646a/5fea437e99192e6217a7e929757ab99b?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sizug4kG7ECdg6rWECtttPU1SrJyfm6fYkowOcxOhStrUMoQPLRpiLclecnveb5jMMCiF7pecu54QI7lzoLBrJJcfX12G9Kt5pzx1Ni-zQVe-MzdaJSR~3isyzsb5TZXWgXiKpRPjbOOSO0-Dp4QF-KuO84M9EBV4zuwwSbTkyXqc926F0AkNyHIovxt-zLn7hH~xku7GCUvc67awHATCwd~82lHO2shV04FyX2n2tmz2CHC0oB3njIaT~my8J3UagJKUkTLTFAOOV13Z9rUZCfpHMqTFEHFWqCpPhv4fJX51~5zvH0-kx0iJUmBbn6MtZz2WXslQOJtIw-wJd-jcg__',
            ), height: 170, width: 170, fit: BoxFit.cover,),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Lean Startup method with Eric Ries Gorden ',style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ), maxLines: 2, overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 10,),
                  Text('Todo', style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.white
                  ),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuItem {
  item1, item2, item3, item4
}



