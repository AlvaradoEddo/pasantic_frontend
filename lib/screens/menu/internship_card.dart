import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/constants.dart';
import 'package:sampleproject/routes/router.gr.dart';
import 'package:sampleproject/size_data.dart';

class InternshipCard extends StatefulWidget {
  int id;
  String name;
  int durationMonths;
  String ownerName;

  InternshipCard(
      {required this.id,
      required this.name,
      required this.durationMonths,
      required this.ownerName});

  @override
  _InternshipCardState createState() => _InternshipCardState();
}

class _InternshipCardState extends State<InternshipCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: SizedBox(
        height: getProportionateScreenHeight(170),
        width: getProportionateScreenWidth(290),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                widget.name,
                textScaleFactor: 1.4,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade700),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text(
                widget.ownerName,
                textScaleFactor: 1.1,
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_sharp,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text('${widget.durationMonths} meses')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Detalles',
                        textScaleFactor: 1.2,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      TextButton.icon(
                        onPressed: () => {
                          AutoRouter.of(context)
                              .push(InternshipDetailRoute(id: widget.id))
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: kDisableColor,
                        ),
                        label: Text(''),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
