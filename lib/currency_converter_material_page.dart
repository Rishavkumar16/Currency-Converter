import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  double result=0;
  final TextEditingController textEditingController=TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border=  OutlineInputBorder(
      borderSide: BorderSide(
        width: 7,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(40)
      ),
    );

    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white12,
        title: const Text(
          'CURRENCY CONVERTER',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

      ),
      backgroundColor: Colors.white60,
      body:  Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('INR $result',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration:const InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: (){
                  result = double.parse(textEditingController.text) * 82.94;
                  setState(() {  });
                },

                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize:const Size(double.infinity,50),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),

                child: const Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white70,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

