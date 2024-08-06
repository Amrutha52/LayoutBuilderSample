import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget 
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    int count = 2;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints)
      {
        if(constraints.maxWidth > 700 && constraints.maxWidth < 1000)
          {
            count = 3;
          }
        else if(constraints.maxWidth > 1000)
          {
            count = 4;
          }
        return GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: count, // Ethano width varunne aa width anusariche UI build aavum
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
            itemBuilder: (context,index) => Container(
              color: Colors.yellow,
            )
        );
      }
      ),
    );
  }
}
