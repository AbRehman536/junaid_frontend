import 'package:flutter/material.dart';


class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s",
                width: 400,height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Text("Images"),
              Image.asset("assets/images/car1.jpg"),
              ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s")),

              ClipOval(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNubLmqdOK9pZWU-2IiD20cuSIdUUDi9-NvQ&s")),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/car1.jpg"),
            ),
              SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    )
                    , child: Text("Click Me")),
              ),
              Text("Click Me"),
              TextButton(onPressed: (){}, child: Text("Click Me")),
              GestureDetector(
                onTap: (){},
                  child: Icon(Icons.settings)),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings)),

            ],
          ),
        ),
      ),
    );
  }
}
