import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.greenAccent.withOpacity(0.5),
      child:  ListTile(
        title: const Text('Title will be here'),
        subtitle:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Description will be here'),
            const  Text('Date: 12/12/2024',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
              ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: const Text('New',style: TextStyle(
                  color: Colors.purpleAccent,
                ),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                ),
                ButtonBar(
                  children: [
                    IconButton(onPressed: (){}, icon:const Icon(Icons.delete)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}