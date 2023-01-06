import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orange_dc/config/app_colors.dart';
import 'package:orange_dc/models/service_model.dart';

class ServiceCard extends StatelessWidget {

  ServiceModel service;
  ServiceCard({Key? key , required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> service.screen)),
      child: Container(
        alignment: Alignment.center,
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: CustomTheme.getInstance(context).primaryColor(),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
             BoxShadow(
                color: CustomTheme.getInstance(context).shadowColor(),
                offset: Offset(10,10),
                blurRadius: 20,
                spreadRadius: 10,
            )
          ]
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: CustomTheme.getInstance(context).secondaryColor(),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: CustomTheme.getInstance(context).shadowColor(),
                          offset: Offset(10, 10),
                          blurRadius: 20,
                          spreadRadius: 15,

                      )
                    ]
                  ),
                  child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: service.widget
                  ),
              ),
              const SizedBox(height: 15,),
              Text(service.serviceName, style: const TextStyle(color: Colors.deepOrange, fontSize: 22, fontWeight: FontWeight.w500),),


            ],
          ),
      ),
    );
  }
}
