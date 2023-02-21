import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), //.copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => MyWidgetState();
}

class MyWidgetState  extends State<MyWidget>{
   get borderRadius => BorderRadius.circular(8.0);
   TextEditingController _controller = new TextEditingController();
    String? data;
    String? val1 = "ONE";
    String? val2 = "TWO";
    String? val3 = "THREE";
    String? val4 = "FOUR";
    String? val5 = "FIVE";
    String? val6 = "SIX";
    String? val7 = "SEVEN";
    String? val8 = "EIGHT";
    String? val9 = "NINE";
    String? val10 = "TEN";
    String? val11 = "ELEVEN";
    String? val12 = "TWELVE";
    String? val13 = "THIRTEEN";
    String? val14 = "FOURTEEN";
    String? val15 = "FIFTEEN";
    String? val16 = "SIXTEEN";
    String? val17 = "SEVENTEEN";
    String? val18 = "EIGHTEEN";
    String? val19 = "NINETEEN";
    String? val20 = "TWENTY";
    String? val21 = "TWENTY-ONE";
    String? val22 = "TWENTY-TWO";
    String? val23 = "TWENTY-THREE";
    String? val24 = "TWENTY-FOUR";
    String? val25 = "TWENTY-FIVE";
    String? val26 = "TWENTY-SIX";
    String? val27 = "TWENTY-SEVEN";
    String? val28 = "TWENTY-EIGHT";
    String? val29 = "TWENTY-NINE";
    String? val30 = "THIRTY";
    String? val31 = "THIRTY-ONE";

     controllerData() {
    setState(() {
      data = _controller.text;
    });
    if(data == '1'){
      print(val1);
      Text('TextController: $val1');
      
    }else if(data == '2'){
      print(val2);

    }else if(data == '3'){
      print(val3);

    }else if(data == '4'){
      print(val4);

    }else if(data == '5'){
      print(val5);

    }else if(data == '6'){
      print(val6);

    }else if(data == '7'){
      print(val7);

    }else if(data == '8'){
      print(val8);

    }else if(data == '9'){
      print(val9);

    }else if(data == '10'){
      print(val10);

    }else if(data == '11'){
      print(val11);

    }else if(data == '12'){
      print(val12);

    }else if(data == '13'){
      print(val13);

    }else if(data == '14'){
      print(val14);

    }else if(data == '15'){
      print(val15);

    }else if(data == '16'){
      print(val16);

    }else if(data == '17'){
      print(val17);

    }else if(data == '18'){
      print(val18);

    }else if(data == '19'){
      print(val19);

    }else if(data == '20'){
      print(val20);

    }else if(data == '21'){
      print(val21);

    }else if(data == '22'){
      print(val22);

    }else if(data == '23'){
      print(val23);

    }else if(data == '24'){
      print(val24);

    }else if(data == '25'){
      print(val25);

    }else if(data == '26'){
      print(val26);

    }else if(data == '27'){
      print(val27);

    }else if(data == '28'){
      print(val28);

    }else if(data == '29'){
      print(val29);

    }else if(data == '30'){
      print(val30);

    }else if(data == '31'){
      print(val31);

    }
  }
    
  @override
  Widget build(BuildContext context) {
    
  // print('object: ${_controller.text}');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

             Padding(
               padding: const EdgeInsets.only(left: 10, right: 10),
               child: TextField(
                maxLength: 2,
                    keyboardType: TextInputType.number,
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please enter Number less than 32'
                    ),
                  )
             ),
             SizedBox(height: 10,),
             ElevatedButton(
              onPressed: (){
                controllerData();
                
              },
              child: Text('Submit'),
              ),
           SizedBox(height: 30,),

              data == '1' ? Text('Value: $val1') 
            : data == '2' ? Text('Value: $val2') 
            : data == '3' ? Text('Value: $val3')
            : data == '4' ? Text('Value: $val4')
            : data == '5' ? Text('Value: $val5')
            : data == '6' ? Text('Value: $val6')
            : data == '7' ? Text('Value: $val7')
            : data == '8' ? Text('Value: $val8')
            : data == '9' ? Text('Value: $val9')
            : data == '10' ? Text('Value: $val10')
            : data == '11' ? Text('Value: $val11')
            : data == '12' ? Text('Value: $val12')
            : data == '13' ? Text('Value: $val13')
            : data == '14' ? Text('Value: $val14')
            : data == '15' ? Text('Value: $val15')
            : data == '16' ? Text('Value: $val16')
            : data == '17' ? Text('Value: $val17')
            : data == '18' ? Text('Value: $val18')
            : data == '19' ? Text('Value: $val19')
            : data == '20' ? Text('Value: $val20')
            : data == '21' ? Text('Value: $val21')
            : data == '22' ? Text('Value: $val22')
            : data == '23' ? Text('Value: $val23')
            : data == '24' ? Text('Value: $val24')
            : data == '25' ? Text('Value: $val25')
            : data == '26' ? Text('Value: $val26')
            : data == '27' ? Text('Value: $val27')
            : data == '28' ? Text('Value: $val28')
            : data == '29' ? Text('Value: $val29')
            : data == '30' ? Text('Value: $val30')
            : data == '31' ? Text('Value: $val31')
            :Text('Wrong Input')

            
          ],
        ),
      ),
    );
  }
}

