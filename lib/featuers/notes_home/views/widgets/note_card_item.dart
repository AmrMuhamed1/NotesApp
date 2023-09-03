import 'package:flutter/material.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16,right: 20),
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text('Flutter Tips',style: TextStyle(
                color: Colors.black,
                fontSize: 26
            ),),
            subtitle: Opacity(
              opacity: 0.5,
              child: const Text('Build Your Career with me',style: TextStyle(
                color: Colors.black,
                fontSize: 20,

              ),),
            ),
            trailing: IconButton(onPressed: (){},icon: const Icon(Icons.delete,size: 33,color: Colors.black,),),
          ),
          Opacity(
            opacity: 0.5,
            child: const Text('May21,2022',style: TextStyle(
                color: Colors.black
            ),),
          ),
        ],),
    );
  }
}
