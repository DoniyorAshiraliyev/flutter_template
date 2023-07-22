import 'package:flutter/material.dart';
import 'package:flutter_template/models/user/user.dart';
import 'package:flutter_template/repositories/user_repository.dart';
import 'package:flutter_template/services/network_services/http/apis.dart';
import 'package:flutter_template/services/network_services/http/http_service.dart';
import 'package:mockito/mockito.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  String data="No Data";
  @override
  void initState() {
    fetchUser();
    // TODO: implement initState
    super.initState();
  }

   fetchUser() {
  HttpService.GET(Api.user ,HttpService.paramEmpty()).then((value) {
    if(value!=null){
        getResponse(value);
    }
  
   });
  }
  void getResponse(String response) {
    setState(() {
      data = response;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GitHub User Account Info",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
       initialData: const CircularProgressIndicator(),

        builder: (context,snapshot) {
        
           if(snapshot.hasData){
            return Text(
            data,
            style: Theme.of(context).textTheme.bodyMedium,
          );
           }
           else {
             return const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              );
           }
          
        }
      ),
    );
  }
}
