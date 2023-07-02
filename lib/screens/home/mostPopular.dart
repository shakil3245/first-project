import 'package:flutter/material.dart';
import 'package:travel_app/screens/detailsOfTravelBlog/detailspage.dart';
class mostPopularPage  extends StatefulWidget {

  @override
  State<mostPopularPage> createState() => _mostPopularPageState();
}

class Travel{
  final String name;
  final String location;
  final String TravelImageUrl;

  Travel({
    required this.name,
    required this.location,
    required this.TravelImageUrl
  });
}

class _mostPopularPageState extends State<mostPopularPage> {
  List<Travel> mostPopular = [
    Travel(name: "Sikkim Tour",
        location: "Sikkim Zero Point",
        TravelImageUrl:"https://assets.traveltriangle.com/blog/wp-content/uploads/2019/11/Zero_Point_Sikkim_-_North_Sikkim.jpg"
    ),
    Travel(name: "Sajek Tour",
        location: "Sajek Vally",
        TravelImageUrl:"https://ttg.com.bd/uploads/tours/destinations/6444446K.jpg"
    ),
    Travel(name: "Meghaloy Tourr",
        location: "Meghaloy",
        TravelImageUrl:"https://res.cloudinary.com/roundglass/image/upload/w_1104,h_736,c_fill/q_auto:best,f_auto/v1649766851/rg/collective/media/meghalaya-nongriat-double-decker-living-root-bridge-greenery-people-ashwin-ezhumalai-1649766850629.jpg"
    ),
    Travel(name: "Coxs Bazar Tour",
        location: "Coxs Bazar ",
        TravelImageUrl:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/99/54/30/swimming-pool.jpg?w=800&h=-1&s=1"
    ),
  ];


  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      padding: const EdgeInsets.only(left: 20,bottom: 20),
      scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){

          final list = mostPopular[index];
          var traelpopiler = list;

          return GestureDetector(
            onTap: (){

            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      list.TravelImageUrl,
                    fit: BoxFit.cover,
                    width: 140,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Column(
                    children: [
                      Text(list.name,style: TextStyle(fontSize: 15,color: Colors.white),),
                      Text(list.location,style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],
                  ),
                )
              ],

            ),
          );
        },
        separatorBuilder: (_, index)=> SizedBox(width: 15,),
        itemCount: mostPopular.length);
  }
}
