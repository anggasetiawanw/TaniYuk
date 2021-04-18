//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/ph.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/ppf.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/suhu_air.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/suhu_kelembaban.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/tds.dart';
import 'package:tanikyukv2/ui/main_page/dash_page/components/waktu.dart';
import '../../../../size_config.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('taniyuk');
    String lahan = "kantor";
    // DocumentSnapshot document = users.doc('kantor');
    return StreamBuilder<DocumentSnapshot>(
      stream: users.doc(lahan).snapshots(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        var data = snapshot.data!;
        return Container(
          //width: double.infinity,
          height: getProportionateScreenHeight(370),
          margin: EdgeInsets.all(getProportionateScreenWidth(10)),
          child: Row(
            children: [
              Column(
                children: [
                  Waktu(),
                  PPF(
                    text: data["ic"].toString(),
                  ),
                  SuhuKelembaban(
                    suhu: data["sr"].toString(),
                    kel: data["kel"].toString(),
                  ),
                ],
              ),
              Column(
                children: [
                  PH(
                    text: data["ph"].toString(),
                  ),
                  TDS(
                    text: data["tds"].toString(),
                  ),
                  SuhuAir(
                    suhuAir: data["sa"].toString(),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
