import 'package:flutter/material.dart';
import 'package:untitledflutter/detail_screen.dart';
import 'package:untitledflutter/model/tourism_model.dart';

class MainScreen extends StatelessWidget {

  const MainScreen ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),

      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
                return InkWell(
                  child: Card(
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(place.imageAsset),
                        ),
                        Expanded(
                            flex: 2,
                            child:  Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(place.name, style: TextStyle(fontSize: 20.0, color: Colors.black, backgroundColor: Colors.white ),  ),
                                  SizedBox(height: 10),
                                  Text(place.location, style: TextStyle(fontSize: 16, color: Colors.white, backgroundColor: Colors.black),)
                                ],
                              ),
                            )
                        )


                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place);
                    }));
                  },
                );
          },
        itemCount: tourismPlaceList.length,
      )



    );
  }

}