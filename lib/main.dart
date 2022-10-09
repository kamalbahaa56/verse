import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List varce = [
    {
      "line1":" لا تشك للناس جراح انت صاحبه",
      "line2":"لا يؤلم الجرح الا من به الم",
    },
    {
      "line1":"شكواك للناس يابن الناس منقصة",
      "line2":"ومن من الناس صاح ما به سقم",
    },
    {
      "line1":"من الناس صاح ما به سقم",
      "line2":"فالهم كالسيل والأمراض زاخرة",
    },
    {
      "line1":"حمر الدلائل مهما أهلها كتم",
      "line2":"فان شكوت لمن طاب الزمان له",
    },
    {
      "line1":"عيناك تغلي ومن تشكو له صنم",
      "line2":"وإذا شكوت لمن شكواك تسعده",
    },
    {
      "line1":"أضفت جرحاً لجرحك اسمه الندم",
      "line2":"هل المواساة يوما حررت وطنا",
    },
  ];
  int varceindex = 0;

  changeIndex(String direction)
  {
    // if(direction=="right")
    // {
    //    setState(() {
    //                   if( varceindex ==varce.length-1)
    //                 {
    //                   varceindex=0;
    //                 }
    //                   varceindex++;
    //                 });
    // }
    // else if(direction=="left"){
    //    setState(() {
    //                     if(varceindex==0)
    //                 {
    //                   varceindex=varce.length-1;
    //                 }
                    
    //                 else{
    //                    varceindex--;
    //                 }
                     
    //                 });
    // }


    switch (direction) {
      case "right":
        setState(() {
                      if( varceindex ==varce.length-1)
                    {
                      varceindex=0;
                    }
                      varceindex++;
                    });
        break;
      case "left":
       setState(() {
                        if(varceindex==0)
                    {
                      varceindex=varce.length-1;
                    }
                    
                    else{
                       varceindex--;
                    }
                     
                    });
      break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity  ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${varce[varceindex]['line1']}"   ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("${varce[varceindex]['line2']}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.deepOrange,
                    onPressed: (){
                   changeIndex('left');
                   
                  },child: Icon(Icons.arrow_left,size: 50,),),
                  SizedBox(width: 20,),
                    FloatingActionButton(
                   backgroundColor:  Colors.deepOrange,
                      onPressed: (){
                     changeIndex('right');
                    },child: Icon(Icons.arrow_right,size: 50),),
                ],
              )
            ],
          ),
        ),
      ),
    );
}
}