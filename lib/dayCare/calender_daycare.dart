import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tubes_sipaw/constants.dart';

class CalendarPages extends StatefulWidget {
  @override
  _CalendarPagessState createState() => _CalendarPagessState();
}

class _CalendarPagessState extends State<CalendarPages> {
  CalendarController _calendarController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _calendarController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonSColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Select Date", style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarController: _calendarController,
            initialCalendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            formatAnimation: FormatAnimation.slide,
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
              leftChevronIcon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15,),
              rightChevronIcon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              leftChevronMargin: EdgeInsets.only(left: 70),
              rightChevronMargin: EdgeInsets.only(right: 70),
            ),
            calendarStyle: CalendarStyle(
              weekendStyle: TextStyle(
                color: Colors.white
              ),
              weekdayStyle: TextStyle(
                color: Colors.white
              )
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(
                color: Colors.white
              ),
              weekdayStyle: TextStyle(
                color: Colors.white
              )
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white
              ),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("28 Januari 2021", style: TextStyle(
                            color: kButtonSColor,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Column(
                        children: [
                          dayTask("10 am", "Muhammad Ramdan"),
                          dayTask("11 am", "Muhammad Fahmi"),
                          dayTask("2 pm", "Siti Nurholis"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Row dayTask(String time, String name)
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width*0.2,
          child: Text(time, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ), textAlign: TextAlign.right,),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(20),
            color: kButtonSColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 10,),
                Text('Care', style: TextStyle(
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 5,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.timer, color: Colors.white,),
                    SizedBox(width: 5,),
                    Text("$time - 5 pm", style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("Client Rating", style: TextStyle(
                      color: Colors.yellow[700],
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(width: 5,),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star),
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 0.5,
                  color: Colors.yellow[700],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.call, color: Colors.white,),
                    SizedBox(width: 5,),
                    Icon(Icons.mail_outline, color: Colors.white,),
                    Expanded(
                      child: Container(),
                    ),
                    Text("\$50", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                )

              ],
            ),
          ),
        )
      ],
    );
  }
}


