import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
   DateTime? _dateTime;
   TimeOfDay? _timeOfDay;


  getDate()async{
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year-25),
        lastDate: DateTime(DateTime.now().year+10)
    );
    setState(() {
      _dateTime = date!;
    });
  }

  getTime() async {
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now());
    setState(() {

      _timeOfDay = time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
    getDate();
  }

  @override
  Widget build(BuildContext context) {
    final dateTEController = TextEditingController(text: _dateTime == null? "Chose a date":"${_dateTime?.year}-${_dateTime?.month}-${_dateTime?.day}");
    final timeTEController = TextEditingController(text: _timeOfDay == null? "Chose time":"${_timeOfDay?.hour}:${_timeOfDay?.minute} ${_timeOfDay!.period == DayPeriod.am ? 'AM' : 'PM'}");
    return Scaffold(
      appBar: AppBar(title: Text("Date Time Picker"),centerTitle: true,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextFormField(
              controller: dateTEController,
              decoration:  InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  getDate();
                }, icon: Icon(Icons.calendar_month)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,bottom: 24),
            child: TextFormField(
              controller: timeTEController,
              decoration:  InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  getTime();
                }, icon: Icon(Icons.timelapse_outlined)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),


            ),
          ),
          ElevatedButton(onPressed: (){
            getDate();
          }, child:Text("Get Date")),
          ElevatedButton(onPressed: (){
            getTime();
          }, child:Text("Get Time")),
          _dateTime == null? Text("Chose a date"): Text("Selected Date: ${_dateTime?.year}-${_dateTime?.month}-${_dateTime?.day}"),
          _timeOfDay == null? Text("Chose a Time"): Text("Selected Time: ${_timeOfDay?.hour}:${_timeOfDay?.minute} ${_timeOfDay!.period == DayPeriod.am ? 'AM' : 'PM'}")
        ],
      ),

    );
  }
}
