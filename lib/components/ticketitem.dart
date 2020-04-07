import 'package:flutter/material.dart';
import 'package:landmarkeat/model/ticket.dart';
import 'package:landmarkeat/utils/colors.dart';
import 'package:landmarkeat/utils/images.dart';
import 'package:landmarkeat/utils/margin.dart';
import 'package:landmarkeat/utils/resolution.dart';
import 'package:landmarkeat/utils/styles.dart';

class TicketItem extends StatelessWidget {
  final int index;

  TicketItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: screenWidth(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: screenWidth(context) * 0.27,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: Ticket.getAllTicket().elementAt(index).imagePath,
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          Ticket.getAllTicket().elementAt(index).name,
                          style: tStyle(
                              color: Ticket.getAllTicket()
                                      .elementAt(index)
                                      .isComplete
                                  ? kPrimaryColor
                                  : Colors.red,
                              size: 18,
                              weight: 6),
                        ),
                        YMargin(3),
                        Text(
                          Ticket.getAllTicket().elementAt(index).location,
                          style: tStyle(color: kFaded, size: 14, weight: 4),
                        ),
                        YMargin(8),
                        Text(
                          Ticket.getAllTicket().elementAt(index).price,
                          style: tStyle(
                              color: Ticket.getAllTicket()
                                      .elementAt(index)
                                      .isComplete
                                  ? kPrimaryColor
                                  : Colors.red,
                              size: 12,
                              weight: 5),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color:
                              Ticket.getAllTicket().elementAt(index).isComplete
                                  ? kPrimaryColor
                                  : Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          Ticket.getAllTicket()
                              .elementAt(index)
                              .quantity
                              .toString(),
                          style:
                              tStyle(color: Colors.white, weight: 6, size: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        YMargin(20),
      ],
    );
  }
}
