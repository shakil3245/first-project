import 'package:flutter/material.dart';
import 'package:travel_app/screens/detailsOfTravelBlog/detailspage.dart';
class buildTravelBlog extends StatefulWidget {
  @override
  State<buildTravelBlog> createState() => _buildTravelBlogState();
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

class _buildTravelBlogState extends State<buildTravelBlog> {

  List<Travel> genarateTravelBlog = [
    Travel(name: "Sikkim Tour",
        location: "Sikkim Zero Point",
        TravelImageUrl:"https://assets.traveltriangle.com/blog/wp-content/uploads/2019/11/Zero_Point_Sikkim_-_North_Sikkim.jpg"
    ),
    Travel(name: "Sajek Tour",
        location: "Sajek Vally",
        TravelImageUrl:"https://ttg.com.bd/uploads/tours/destinations/6444446K.jpg"
    ),
    Travel(name: "Meghaloy Tour",
        location: "Meghaloy",
        TravelImageUrl:"https://res.cloudinary.com/roundglass/image/upload/w_1104,h_736,c_fill/q_auto:best,f_auto/v1649766851/rg/collective/media/meghalaya-nongriat-double-decker-living-root-bridge-greenery-people-ashwin-ezhumalai-1649766850629.jpg"
    ),
    Travel(name: "Coxs Bazar Tour",
        location: "Coxs Bazar ",
        TravelImageUrl:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/99/54/30/swimming-pool.jpg?w=800&h=-1&s=1"
    ),
  ];
  final _pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller:_pageCtrl ,
      itemCount: genarateTravelBlog.length ,
        itemBuilder: (context,index){

        final list =genarateTravelBlog[index];
        var travel = list;

          return GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=> detailspage(travel:travel),
              ));
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20,bottom: 40,top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      list.TravelImageUrl,
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height,
                    ),
                  ),

                ),
                Positioned(
                    bottom: 80,
                    left: 15 ,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(list.name,style: TextStyle(fontSize: 18,color: Colors.white),),
                          Text(list.location,style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 25,color: Colors.white),),
                        ],
                      ),
                    )
                ),
                Positioned(
                  bottom: 11,
                    right: 40,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Icon(Icons.arrow_forward,color: Colors.white,),
                    ),
                ),
              ],
            ),
          );
        });
  }
}
