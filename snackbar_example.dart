import 'package:flutter/material.dart';

class SnackbarExample extends StatefulWidget {
  SnackbarExample({super.key});

  @override
  State<SnackbarExample> createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  TextEditingController name = TextEditingController();

  bool checkBox = false;
  String selectedValue = "English";
  String selectedValueRadio = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
            ),
          ),

          ElevatedButton(
              onPressed: () {

                if(name.text == ""){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 2),
                        //action: SnackBarAction(
                        //  label: label,
                        //onPressed: onPressed),
                        content: Text("incorrect user name....")
                    ),
                  );
                }
                else
                {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.cyan,
                        duration: Duration(seconds: 2),
                        //action: SnackBarAction(
                        //  label: label,
                        //onPressed: onPressed),
                        content: Text("User name:${name.text}")
                    ),
                  );
                }

              },
              child: Text("SnackBar Button")
          ),

          ElevatedButton(
            onPressed: ()
            {
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Delete!!!!"),
                      content: Text("Do U Really Want to Delete This Account"),
                      actions: [
                        TextButton(onPressed: (){

                        }, child: Text("Yes")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("No")),
                      ],
                    );
                  }
              );
            }, child: Text("Alter Dialog"),
          ),

          // dropdown

          Text("DropDown List"),

          Center(
            child: DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text("English"),
                    value: "English",
                  ),
                  DropdownMenuItem(
                    child: Text("Hindi"),
                    value: "Hindi",
                  ),
                  DropdownMenuItem(
                    child: Text("Gujarati"),
                    value: "Gujarati",
                  ),
                ],
                value: selectedValue,
                onChanged: (Value){
                  print(Value);
                  setState(() {
                    selectedValue = Value!;
                  });

                }
            ),
          ),

          // radiobutton
          Text("RadioButton"),

          RadioListTile(
            title: Text("Male"),
              value: "Male",
              groupValue: selectedValueRadio,
              onChanged: (value){
                setState(() {
                  selectedValueRadio = value!;
                });
              },
          ),
          RadioListTile(
            title: Text("FeMale"),
            value: "FeMale",
            groupValue: selectedValueRadio,
            onChanged: (value){
              setState(() {
                selectedValueRadio = value!;
              });
            },
          ),

          //checkbox

          Text("CheckBox"),

          Row(
            children: [
              Checkbox(
                  value: checkBox,
                  onChanged: (value){
                    setState(() {
                      checkBox = value!;
                    });
                  }
              ),
              Text("Terms and Condition")
            ],
          )

        ],
      ),
    );
  }
}
