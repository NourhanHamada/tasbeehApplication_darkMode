import 'package:flutter/material.dart';
import '../constant.dart';

class AzkarCard extends StatefulWidget {

  var count;
  var text;

  var _isVisible = true;

  AzkarCard({super.key,
     required  this.count,
     required this.text
   });



  @override
  State<AzkarCard> createState() => _AzkarCardState();
}

class _AzkarCardState extends State<AzkarCard> {
  @override
  Widget build(BuildContext context) {
    // Visibility Widget to hide widget when it's Zero
    return Visibility(
      visible: widget._isVisible,
      child: GestureDetector(
        onTap: (){
          if(widget.count > 0){
            setState(() {
              widget.count--;
            });
          }
          else if(widget.count == 0){
            setState(() {
              widget._isVisible = !widget._isVisible;
            });
          }
        },
        child: Card(
          color: card,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${widget.text}',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                      // shape: BoxShape.rectangle
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    vertical: 2),
                    child: Text(
                      '${widget.count}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: white,
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}