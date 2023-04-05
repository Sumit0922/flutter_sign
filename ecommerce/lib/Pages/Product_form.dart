import 'package:ecommerce/ApiCall/ApiCalling.dart';
import 'package:ecommerce/model/ModelUse.dart';
import 'package:flutter/material.dart';
import '../model/Image Picker.dart';
import '../ApiCall/ImageUpload.dart';
class ProductForm extends StatefulWidget {
  const ProductForm({Key? key,}) : super(key: key);
  @override
  State<ProductForm> createState() => _ProductFormState();
}
class _ProductFormState extends State<ProductForm> {
  TextEditingController name= TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController image= TextEditingController();
  TextEditingController  quantity = TextEditingController();
  ApiCall apiCall = ApiCall();
  String Url = "";
  @override
  Widget build(BuildContext context) {

      return Scaffold(
     resizeToAvoidBottomInset: false,
      body:
        SingleChildScrollView(
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Text('Product Form',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 35),),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    TextField(
                    controller: name,
                    decoration: InputDecoration(
                    labelText: "Product-name",
                    hintText: "Enter Product-name",
                    prefixIcon: Icon(Icons.verified_user),
    border: OutlineInputBorder(),
    ),
    ),

   const SizedBox(
    height: 12,
    ),
    TextField(
    controller: price,
    decoration: InputDecoration(
    labelText: "Price",
    hintText: "Enter Price",
    prefixIcon: Icon(Icons.price_change_rounded),
    border: OutlineInputBorder(),

    ),
    ),
    SizedBox(
    height: 12,
    ),
                     Container(
                       child: MyImage(getApiUrl: (value){
                            Url =value;
                         print("UPLOADED URL : $Url");
                       }),
                     ),

                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: quantity,
                      decoration: InputDecoration(
                        labelText: "Quantity",
                        hintText: "Enter Quantity",
                        prefixIcon: Icon(Icons.production_quantity_limits),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),


    ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12, minimumSize: Size(180,45)),
    onPressed:
    ()  {
  if(name.text.isEmpty || price.text.isEmpty || quantity.text.isEmpty){
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text("Error: Field cannot be empty."
            "Please enter a value in this field before submitting"),
        duration: Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      ),
    );
  }



      final myData = MyData(
            Productname: name.text,
            price: price.text,
            Image: Url,
            Quantity: quantity.text,
      );
      apiCall.loginUser(context ,myData );
      name.clear();
      price.clear();
     quantity.clear();

    }, child: Text('Submit',style: TextStyle(fontStyle:FontStyle.italic,fontWeight:FontWeight.bold,fontSize:22),),
    )
      ],
    ),
              ),
            ),
    ],
          ),
        ),
    );
  }
}

