import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>
{
    var num1=0,num2=0,sum=0;
    final TextEditingController t1 = new TextEditingController(text:"0");              //controoler1 for first Input entry of num1 from APP
    final TextEditingController t2 = new TextEditingController(text:"0");              //controller2 for Second Input entry of num2 from APP
  
    void doAddition()                                                                  //adding two numbers code
        {
            setState(()
            {
              num1 = int.parse(t1.text);                                                //fetch text entry of number1 and converted it to int    
              num2=int.parse(t2.text);                                                  //similarly number 2
              sum = num1 + num2;
            });
        }

    void doSubtraction()                                                                //Subtraction of two numbers
        {
            setState(()
            {
              num1 = int.parse(t1.text);
              num2=int.parse(t2.text);
              sum = num1 - num2;

            });
        }

      void doMultiplication()                                                         //multiplication of two numbers
        {
            setState(()
            {
              num1 = int.parse(t1.text);
              num2=int.parse(t2.text);
              sum = num1 * num2;

            });
        }

      void doDivision()                                                               //Division of two numbers
        {
            setState(()
            {
              num1 = int.parse(t1.text);
              num2=int.parse(t2.text);
              sum = (num1 / num2).toInt();
            });
        }     

      void doClear()                                                                 //clear function to reset values of num1 and num2
      {
          setState(() 
          {
            t1.text="0";
            t2.text="0";
          });
      }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
   ( appBar: new AppBar(title: new Text("Basic Calculator APP"),),                   //Title Bar name of APP
      body: new Container
            (
              padding: const EdgeInsets.all(20.0),
              child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                                      new Text("OUTPUT: $sum",style: new TextStyle(fontSize: 20.0,color: Colors.green),),
                                                      new TextField(
                                                                      keyboardType: TextInputType.number,
                                                                      decoration: new InputDecoration(hintText: "Enter Number 1"),
                                                                      controller: t1,
                                                                    ),
    
                                                      new TextField(
                                                                      keyboardType: TextInputType.number,
                                                                      decoration: new InputDecoration(hintText: "Enter Number 2"),
                                                                      controller: t2,
                                                                   ),
           
                                                      new Padding(padding: const EdgeInsets.only(top: 50.0),
                                                                 ),
           
                                                      new Row(
                                                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                               children: <Widget>[
                                                               new RaisedButton(
                                                                                  child: new Text("Add"),
                                                                                  color: Colors.blue,
                                                                                  onPressed: doAddition,
                                                                                ),
                                                      
                                                               new RaisedButton(
                                                                                  child: new Text("Sub"),
                                                                                  color: Colors.blue,
                                                                                  onPressed: doSubtraction,
                                                                                ),
               
                                                                                  ],
                                                              ),
           
                                                    new Padding(
             padding: const EdgeInsets.only(top: 20.0),
           ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               new RaisedButton(
                 child: new Text("Mul"),
                 color: Colors.blue,
                 onPressed: doMultiplication,
               ),
               new RaisedButton(
                 child: new Text("Div"),
                 color: Colors.blue,
                 onPressed: doDivision,
               ),
               
             ],
           ),

new Padding(
             padding: const EdgeInsets.only(top: 20.0),
           ),
           new Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new RaisedButton(
                 child: new Text("Clear"),
                 color: Colors.blue,
                 onPressed: doClear,
               ),
               
               
             ],
           ),

          


         ],
         
       ),
     ),   
    );
  }
}
