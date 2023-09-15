import 'package:flutter/material.dart';
import 'object_utils.dart';

class DraggableObject extends StatefulWidget {
  final Map<String, dynamic> initialData;
  
  DraggableObject({this.initialData});

  @override
  _DraggableObjectState createState() => _DraggableObjectState();
}

class _DraggableObjectState extends State<DraggableObject> {
  // Your object state variables here
  
  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: /* Your Object Representation */,
      feedback: /* Your Drag Feedback */,
      onDragEnd: (details) {
        // Update object position
      },
    );
  }
}
