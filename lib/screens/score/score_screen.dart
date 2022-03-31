import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:domasnabr2/constants.dart';
import 'package:domasnabr2/controllers/question.dart';
import 'package:flutter_svg/svg.dart';
import 'package:domasnabr2/Lokacija/lok.dart';
import 'package:restart_app/restart_app.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kWhiteColor),
              ),
              Spacer(flex: 1,),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kWhiteColor),
              ),
              Spacer(flex: 6),
        InkWell(
        onTap: () {
          Restart.restartApp();
          
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Text(
              "Започни го квизот одново",
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: Colors.black),
            ),
          ),
        ),
              Spacer(flex: 6,),
              Text("Внесете локација и слика",style: Theme.of(context).textTheme.headline6!.copyWith(color: kWhiteColor),),
              IconButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
             icon: Icon(Icons.location_on,size: 40)),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}
