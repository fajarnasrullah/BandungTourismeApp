import 'package:flutter/material.dart';
import 'package:untitledflutter/model/tourism_model.dart';




class DetailScreen extends StatelessWidget {
  final TourismPlace  place;
  const DetailScreen({Key? key, required this.place,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
            child:   Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>
            [
              Stack( children: <Widget>[
                Image.asset(place.imageAsset),
          SafeArea(
              child:
              Padding(padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                          },
                      ),
                    ),
                    const FavoriteButton()
                  ],
                ),
              ),
            ),
            ],
        ),

                    Container(

                      margin: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        place.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),


                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            SizedBox(height: 8.0),
                            Text(place.openDays, textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0),)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.access_time),
                            SizedBox(height: 8.0),
                            Text(place.openTime, textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.monetization_on),
                            SizedBox(height: 8.0,),
                            Text(place.ticketPrice, textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0))
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(16.0),
                    child: Text(place.description,
                      textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0),),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: place.imageUrls.map((url) {
                          return Padding(
                            padding: EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(url),
                            ),
                          );
                        }).toList()
                    ),
                  ),

                  // Image.asset('images/noah.jpg', width: 150, height: 100, alignment: Alignment.center,)



                ],
              ),
            )



    );
  }




}





class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon:
        Icon(
        isFavorite? Icons.favorite : Icons.favorite_border,
    color: Colors.red
    )
    );
  }

}


