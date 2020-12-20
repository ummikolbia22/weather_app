import 'package:flutter/material.dart';
import 'package:weather_app/utils/common.dart';

class CityScreen extends StatelessWidget{

//   @override
//   _CityScreenState createState() => _CityScreenState();
// }
//
// class _CityScreenState extends State<CityScreen> {
  String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/weather2-01.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Theme(
                  data: ThemeData(
                    primaryColor: Colors.grey,
                    primaryColorDark: Colors.white,
                  ),
                  child: TextField(
                    onChanged: (value) {
                      cityName = value;
                    },
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        icon: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        fillColor: Color(0x29ffffff),
                        hintText: 'Enter City',
                        hintStyle: TextStyle(
                          color: Color(0x29fffffff),
                        )),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                splashColor: Colors.orange,
                color: Color(0x10000000),
                child: Text(
                  'Search Location',
                  style: ButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
