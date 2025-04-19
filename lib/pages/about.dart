import 'package:flutter/material.dart';
import 'package:noorventures/widget/widget_support.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdf9a0f),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: 50.0, left: 20.0, right: 20.0
          ),
          child: Container(
            child: Column(
              children: [
                Image.asset("images/logonoorventure.png",
                    height: 200, width: 220,
                    fit: BoxFit.cover
                ),
                SizedBox(height: 50.0,),
                Container(
                  height: 45.0,
                  width: 180,
                  padding: EdgeInsets.only(left: 40.0),

                  decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("About Us", style: TextStyle(
                          fontSize: 25.0, color: Colors.white,
                          fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Text(
                    "NoorVentures is a multi-industry investment and business integration platform that fosters sustainable growth, funding, and project incubation. Our diversified portfolio includes:",
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.ac_unit_rounded, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Noor’s Kitchen", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("A leading food delivery and catering service in Bangladesh, serving individuals and corporate clients with a commitment to quality and hygiene."
                      , style: AppWidget.roiTextFieldStyle(),
                      ),
                    ],
                  )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.ac_unit_rounded, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Kaphia Restaurant", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),
                Container(
                    child: Column(
                      children: [
                        Text("A fine dining experience with a focus on premium service and exquisite culinary offerings."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.ac_unit_rounded, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Angelica’s Color", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),
                Container(
                    child: Column(
                      children: [
                        Text("A beauty and fashion brand that provides innovative and high-quality beauty products and services."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.ac_unit_rounded, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Noor Properties", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),
                Container(
                    child: Column(
                      children: [
                        Text("A real estate and development firm dedicated to providing high-value residential and commercial projects."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                      Container(
                          height: 45.0,
                          width: 200,
                          padding: EdgeInsets.only(left: 30.0),

                          decoration: BoxDecoration(
                              color:Colors.black,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.visibility, color: Colors.white,size: 30.0,),
                              SizedBox(width: 10.0,),
                              Text("Our Vision", style: TextStyle(
                                  fontSize: 20.0, color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                SizedBox(height: 20.0,),


                Container(
                    child: Column(
                      children: [
                        Text("To revolutionize the investment landscape by integrating technology, strategic partnerships, and diversified business operations into a single, user-friendly digital ecosystem."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.monetization_on, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Our Financial Strength", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),

                Container(
                    child: Column(
                      children: [
                        Text("NoorVentures operates with a strong financial foundation, as evidenced by our detailed financial statements and banking reports from Islami Bank Bangladesh PLC and City Bank Limited ￼ ￼ ￼. Our consistent revenue growth and transactional activities reflect a stable and scalable business model, making us a trusted platform for investors and stakeholders."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.question_answer, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Why Invest in NoorVentures?", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),

                Container(
                    child: Column(
                      children: [
                        Text("* Diversified Business Portfolio – Investments in multiple thriving industries ensure risk mitigation and long-term profitability."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Strong Financial Backing – Well-documented financial statements highlight our revenue streams, operational stability, and growth trajectory."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Client & Partner Trust – We have a growing clientele, including individual customers, corporate entities, and strategic partners."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Integrated Digital Platform – Our upcoming NoorVentures App will streamline investment opportunities, funding options, and business collaborations."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.monitor_heart_outlined, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Investment Strategies", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),

                Container(
                    child: Column(
                      children: [
                        Text("NoorVentures follows a hybrid investment approach that integrates equity funding, venture capital, and strategic partnerships across multiple industries. Our investment model includes:"
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        SizedBox(height: 10.0,),
                        Text("* Direct Business Investments – Funding and expanding existing NoorVentures businesses such as Noor’s Kitchen, Kaphia Restaurant, Angelica’s Color, and Noor Properties."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Startup Incubation & Funding – Providing early-stage capital, mentorship, and market access to promising startups in food, retail, real estate, and technology."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Real Estate & Asset Growth – Strategic acquisition and development of high-value properties under Noor Properties, ensuring long-term financial security."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Equity Partnerships – Collaborating with external investors and businesses for joint ventures, revenue-sharing models, and franchising opportunities."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        SizedBox(height: 10.0,),
                        Text("Our NoorVentures App will facilitate seamless investment tracking, funding applications, and business collaborations for stakeholders."
                          , style: AppWidget.bluegreyTextFieldStyle(),
                        ),
                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.center_focus_strong, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Market Positioning", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),

                Container(
                    child: Column(
                      children: [
                        Text("NoorVentures positions itself as a multi-industry investment hub that brings together entrepreneurs, investors, and businesses under one ecosystem. Our competitive advantages include:"
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        SizedBox(height: 10.0,),
                        Text("* Technology-Driven Investment – Digital integration of financial transactions, business performance analytics, and investor dashboards."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Diversified Revenue Streams – Operating across hospitality, beauty, real estate, and finance, reducing industry-specific risks."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Trust & Financial Stability – Backed by strong financial statements ￼ ￼ ￼and established client relationships, making NoorVentures a secure investment choice."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Global Expansion Potential – With scalable business models, NoorVentures aims to expand internationally, particularly in emerging markets across Asia and the Middle East."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),

                      ],
                    )
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.center_focus_strong, color: Colors.green,size: 20.0,),
                      SizedBox(width: 10.0,),
                      Text("Future Goals & Expansion Plan", style: AppWidget.bluegreyTextFieldStyle(),)
                    ],
                  ),
                ),

                Container(
                    child: Column(
                      children: [
                        Text("* NoorVentures A user-friendly platform where investors can explore funding opportunities, track business growth, and collaborate on new projects."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        SizedBox(height: 10.0,),
                        Text("* Scale Noor’s Kitchen & Kaphia Restaurant – Expansion through franchising, cloud kitchens and international outlets."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Strengthen Real Estate Portfolio – Acquisition and development of commercial and residential properties under Noor Properties."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Develop a Venture Capital Wing – Supporting promising startups with financial backing, mentorship, and strategic partnerships."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        Text("* Global Brand Recognition – Establish NoorVentures as a leading investment and business ecosystem in South Asia and beyond."
                          , style: AppWidget.roiTextFieldStyle(),
                        ),
                        SizedBox(height: 20.0,),
                        Text("This enhanced Business Description ensures NoorVentures stands out as a financially stable, technology-driven, and globally scalable investment platform."
                          , style: AppWidget.bluegreyTextFieldStyle(),
                        ),

                      ],
                    )
                ),
              ],
                ),
          ),
        
        ),
      ),
    );
  }
}
