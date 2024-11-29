


//all the code is working and the server was started

//thire are thre files genarated by the servpod 
//1 client
//2 flutter
//3 server

//we clinet file contains all the client side code that means the we do not net to modify the
//flutter contain all the ui logic 

//as we writing the bakend we have to foucus on the server 

//it contains
/*
bin(mainfile)
-main.dart
config(all configuration filse as bellow)
-developmet.yaml
-genrated.yaml
-production.yaml
-password.yaml
-staging.yaml
-text.yaml
lib()
-scr
--endpoint
--future_calls
--genrated
--models
--web
--example_utils.dart
-server.dart


*/

//by defoal the serverpod start in devlpemet mode running on localy on our local pc

//	-- password.yaml that have all the secrate that requre for database  or other server

// 	-- endpoint.dart we have write service endpoind method
// 	 -servpod automatilcy genarate corrosponding methods for client 

//	-- models 
//		- we have write yaml file that varble are requre for us then it will automaticly genrate the dart model

//to genarate the files run
servepod generate


//## endpoints :
//	-it is nothing but connection to the client 
//	-we have write the enpoint method then corsponding client code will automaticly genrated 
//	- to write we have to enxtend to the Endpoint class of our classs
//		- the method must return value future
// 		- and the first parmetor is Session object
//			- session object have the information about the call we make and it provide the accasse to cache ,database and other serverpod future
//ex:
	class ExampleEndpoint extends Endpoint{
		
		Future<String> hello(Session sesson ,String name)async{
			return  ExampleUtil.buildGreeting(name);
		}
	}

//like above we can write the serveside code 
// and we accase them in flutter as the calling the method
//ex:

 final result = await client.example.hello(_textEditingController.text);
