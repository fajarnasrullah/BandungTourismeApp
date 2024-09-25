import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:untitledflutter/model/tes_event_model.dart';

import '../detail_event.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard(
      {super.key,
         this.image,
         this.date,
         this.textTitle,
        this.textSubTitle,
         this.views,
         this.likes,
         this.send,
      });

  final String? image;
  final String? date;
  final String? textTitle;
  final String? textSubTitle;
  final String? views;
  final String? likes;
  final String? send;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailEvent(eventData: eventList[],)));
      //   // Get.to(() => MemberView());
      // },
      borderRadius: BorderRadius.circular(15),
      child: Card(

        elevation: 3,
        child: Container(
          height: 400,
          width: 378,
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.cyan, width: 2.0)
          ),
          padding:
          const EdgeInsets.only(left: 23, top: 19, right: 23, bottom: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(image!), fit: BoxFit.cover)),
              ),
              const SizedBox(height: 10),
              Text(textTitle!, style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 5),
              Opacity(
                opacity: 0.76,
                child: Text(
                  textSubTitle!,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Color(0xFF086C9E)),
                      const SizedBox(width: 4),
                      Text(
                        date!,

                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye_sharp,
                          color: Color(0xFF086C9E)),
                      const SizedBox(width: 4),
                      Text(
                        views!,

                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Color(0xFF086C9E)),
                      const SizedBox(width: 4),
                      Text(
                        likes!,
                      )
                    ],
                  ),
                   Row(
                    children: [
                      Icon(Icons.send, color: Color(0xFF086C9E)),
                      const SizedBox(width: 4),
                      Text(
                        send!,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
