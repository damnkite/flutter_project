import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TermOfUse extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<TermOfUse>{
  bool _myBoolean = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Terms of Use"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(7),
            //width: double.infinity,
            child: Column(
              children: [
               _buildText2(),
                SizedBox(height: 10.0),
                _buildText3(),
                Row(
                  children:[
                    SizedBox(height:15.0),
                    _buildText1(),
                    SizedBox(height:5.0),
                    Checkbox(
                      value: _myBoolean,
                      onChanged: (value) {
                        setState(() {
                          _myBoolean = value; // rebuilds with new value
                          }
                        );
                      },
                      activeColor: Color(0xff06bbfb),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }

  Widget _buildText1() {
    return Text("Do you agree to the User Agreement?", style: TextStyle(
      fontSize: 15.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      ),
    );
  }
  Widget _buildText2() {
    return  Text("Please read the terms and conditions of this End User License Agreement (“Agreement”) carefully before you use the Solution (as defined below). This is a legally binding contract. By assenting electronically, or installing the Solution or using the Solution, you accept all the terms and conditions of this Agreement on behalf of yourself and any entity or individual you represent or for whose Device you acquire the Solution (collectively “you”). If you do not agree with the terms and conditions of this Agreement, do not continue the installation process, do not use the Solution and delete or destroy all copies of the Solution in your possession or control.",
        style: TextStyle(
        fontSize: 17.0,
        color: Colors.black,
    ),
    );
  }
  Widget _buildText3() {
    return Text("This Agreement relates to your use of certain software Software, services or hardware and related firmware, including any Updates (each, a “Solution”) in connection with which you are accepting this Agreement, and any related Documentation. In this Agreement, “Vendor” means the entity identified here as providing the Solution to you; “Documentation” means any user manuals and instructions provided with the Solution; and “Applicable Conditions” means collectively the Subscription Period together with the types of Devices, Permitted Number of Devices, other transaction terms, conditions and documents you accepted when you acquired the Solution (including any terms and conditions of sale), and any distribution agreement, reseller agreement, partner agreement or other agreement between you and Vendor or other member of Vendor Group, as well as the other limitations described by Section 2 and the Documentation. Please note that this Agreement comes in two parts. Sections 1 through 12 of this Agreement apply to all Solutions, including those listed below. Section 13 sets out additional terms and conditions affecting specific Solutions or categories of Solutions, including Third Party Software, Services and other Products (Section 13.1); Managed Service Provider Licenses (Section 13.2); Browser Cleanup (Section 13.3); WiFi Finder (Section 13.4); Avast Family Space (also sold as Star Guard Family and Vodafone Family Protect and WINDTRE Family Protect) (Section 13.5); Mobile Apps (Section 13.613.6); Technician Edition (Section 13.7); Assurance Plan (Section 13.8); Premium Technical Support (Section 13.9); Remote Access; Assistance Software (Section 13.10); Avast Driver Updater (Section 13.11), Avast Secure Web Gateway or Avast Secure Internet Gateway (Section 13.12), certain HMA services (Section 13.13), Vendor's Virtual Private Network Solutions (Section 13.14), any dongle or appliance Avast provides you as part of your subscription (Section 13.15), and Mobile Threat Intelligence Platform (Section 13.16). This Agreement supersedes and replaces any other agreement you previously entered into with respect to a prior version of the Solution.",
      style: TextStyle(
        fontSize: 13.0,
        color: Colors.black54,
      ),
    );
  }

  }