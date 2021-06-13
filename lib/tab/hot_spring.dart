import 'package:flutter/material.dart';
import 'package:spot_match/tileInfo.dart';

class HotSpring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: (index % 2 == 0) ? Colors.white : Colors.blue,
            child: ListTile(
              contentPadding: EdgeInsets.all(5.0),
              onTap: ()=> {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SwiperPage()
                    )
                )
              },
              leading: Image.network("https://i0.wp.com/tabijikan.jp/wp-content/uploads/2017/11/20171102-1067-68-geroonsen-higaeri.jpg", width: 70,),
              title: Text(
                "Spot Name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: (index % 2 == 0) ? Colors.blue : Colors.white
                ),
              ),
              subtitle: Text(
                "This is spot introduce sentence.The left square inputs picture. If you click the right button, you will see detail page explained this spot.",
                style: TextStyle(
                  color: (index % 2 == 0) ? Colors.blue : Colors.white
                ),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.arrow_forward_rounded),
                    foregroundColor: (index % 2 == 0) ? Colors.white : Colors.blue,
                    backgroundColor: (index % 2 == 0) ? Colors.blue : Colors.white,
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}