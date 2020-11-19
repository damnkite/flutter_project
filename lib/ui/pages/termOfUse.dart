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
        body: Center(
          child: Column(
            children: [
              SizedBox(height:280.0),
              _buildText(),
              SizedBox(height:5.0),
              Checkbox(
                value: _myBoolean,
                onChanged: (value) {
                  setState(() {
                    _myBoolean = value; // rebuilds with new value
                  });
                },
               activeColor: Color(0xff06bbfb),


              ),
            ],
          ),
        )
    );
  }

  Widget _buildText() {
    return Text("Do you agree to the User Agreement?", style: TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    );
  }

}