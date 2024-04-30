import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'generate_certificate.dart';

class Certificates extends StatelessWidget {
  const Certificates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('List of Certificates', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: CertificatesAll(),
    );
  }
}

class CertificatesAll extends StatelessWidget {
  const CertificatesAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scrollbar(
      child: SingleChildScrollView(
        child: Column (
          children: [
            SubListCard(),
            SubListCard(),
            SubListCard(),
            SubListCard(),
            SubListCard(),
            SubListCard(),
            SubListCard(),
            SubListCard(),
            SubListCard(),
          ],
        ),
      ),
    );
  }
}

class SubListCard extends StatelessWidget {
  const SubListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateCertificate()));
        },
        child: Container(
          height: 116,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            // border: Border.all(color: Colors.black),
            color: Color(0xffF7F6FA),
          ),
          child: Container(
            margin: const EdgeInsets.fromLTRB(12,12,32,12),
            decoration: BoxDecoration(
              // color: Colors.red,
                borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                Container(
                  height: 92,
                  width: 92,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage( 'assets/images/img.png'
                      // 'https://s3-alpha-sig.figma.com/img/3253/fa48/fc945b367f950af9acb56a8ddc271da6?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=onELZWhKevBWADoTXFE955DK26EZEsdtb6gteDQEksJ1fIcNWRMY2h-nkEbyEwrh8-g4abWvK1EB83x2MQ0VbHxcpLlW2hjkgT~e~LGLCj6w6Yl7-PNljEWuuMrXN1rA0EHdowqTZmQuDDr0kTnjdbqdLgdROeB-FyJ~K4nmyovXbFOmIq5c5xUP8cw73hcKZV-DIAmzDWD6T7-YRs88SXlD-gWdSESNo4Qcij3texY6yBmgfXZaag2NXilvew8J5OEXcd~NN8ehLsA-NTIJcnSjll3YC~zgEtpMMsaKQpKXjAIjQ6JFvhLvuTl2nGiK9uhaBw-cLpYkYY~GLxVvkw__'
                      ,
                    ), fit: BoxFit.fitHeight),
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ), SizedBox(width: 19,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 158,
                      child: Text('Road to success with Eric Bernard', style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ), overflow: TextOverflow.ellipsis, maxLines: 2,),
                    ),
                    SizedBox(height: 10,),
                    Text('Earned on 23rd March'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

