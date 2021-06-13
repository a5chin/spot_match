import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  SwiperPageState createState() {
    return SwiperPageState();
  }
}

class SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("”Spot Name”"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          child: Swiper(
            itemBuilder: _swiperBuilder,
            itemCount: 3,
            viewportFraction: 0.8,
            scale: 0.5,
            pagination: new SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  color: Colors.black54,
                  activeColor: Colors.white,
                )),
            control: new SwiperControl(),
            scrollDirection: Axis.horizontal,
            autoplay: false,
            onTap: (index) => print ('clicked the index item'),
          )),
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (
        Image.network(
        "https://i0.wp.com/tabijikan.jp/wp-content/uploads/2017/11/20171102-1067-68-geroonsen-higaeri.jpg",
        fit: BoxFit.fill,
      )
    );
  }
}


class tileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("”Spot Name”"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          ),
          Row(
            children: [
              Text("data")
            ],
          )
        ]
      ),
      backgroundColor: Colors.white,
    );
  }
}
