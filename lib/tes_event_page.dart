import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitledflutter/detail_event.dart';
import 'package:untitledflutter/model/program_card.dart';
import 'package:untitledflutter/model/tes_category_model.dart';
import 'package:untitledflutter/model/tes_event_model.dart';
import 'package:untitledflutter/second_screen.dart';


class EventScreen extends StatefulWidget {

  // final CategoryList category;

  // final List<EventList> eventList;

  const EventScreen({Key? key,}) : super(key: key);

  @override
  _EventState createState() => _EventState();


  
  

}

class _EventState extends State<EventScreen> {
  String _textSend = '';
  // late final CategoryList category;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[

          //1. Searchbar
          Container(
            color: Color(0xFF12AEC7),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    _textSend = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 20.0, color: Colors.white),
                  ),
                  hintText: 'Input Something',
                  prefixIcon: Icon(
                    Icons.text_fields,
                    size: 30.0,
                  ),

                  suffixIcon: IconButton(
                      icon: Icon(Icons.arrow_circle_right),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            SecondScreen(textFromEvent: _textSend,)
                        ));
                      }
                  )

                ),

              ),
            ),
          ),

          // 2. Category
          // SizedBox(
          //   height: 70,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: category.category.length,
          //     itemBuilder: (context, index) {
          //       final textCategory = category.category[index];
          //       return Padding(
          //         padding:  EdgeInsets.symmetric( vertical: 15.0, horizontal: 10.0),
          //         child:
          //         SizedBox(
          //           child: ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //               elevation: 3,
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(30),
          //                 side:  BorderSide(color: Color(0xFF086C9E))
          //               ),
          //
          //               backgroundColor: Colors.white, // Set background color
          //             ),
          //
          //             onPressed: () {
          //               // Action when button is pressed
          //             },
          //             child: Text(textCategory),
          //           ),
          //         )
          //
          //       );
          //     }
          //
          //   ),
          // ),

         Padding(
             padding: EdgeInsets.only(left: 30.0, right: 30.0,bottom: 30.0),
             // child:Expanded(

               child: ListView.builder(
                 shrinkWrap: true,
                 // physics: NeverScrollableScrollPhysics(),
                 // scrollDirection: Axis.vertical,
                   itemCount: eventList.length,
                   itemBuilder: (context, index) {
                     final EventList event = eventList[index];
                     return InkWell(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>
                             DetailEvent(eventData: event,)
                         ));
                       },
                       child:  Padding(
                         padding: EdgeInsets.symmetric(vertical: 10.0),
                         child: ProgramCard(
                           image: event.imageUrl,
                           date: event.date,
                           textTitle: event.title,
                           textSubTitle: event.description!,
                           views: event.views,
                           likes: event.likes,
                           send: event.send,

                         ),
                       ),

                     ) ;

                   },


                   ),
             )
         // )

        ]
      )
    );


  }

}


