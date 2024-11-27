


//requremts:
	1 flutter 
	2 dart
	3 docker (optionl)


// this above comad to creat or install the nesseory packges of serverpod in dart or ourpc
dart pub global activate serverpod_cli

//next creating the project 
serverpod create my_pod 

//next run the docker
cd my_pod/my_pod_server
docker compose up --build --detach

//in my_pod thire are three file 
//1 .one is for client that does not have to change
//2 .second is flutter that contain flutter app 
//3 .server that we have to overite all the models and serverside logic and all the stafs


//to run the code we have come in cd my_pod and then my_server and run
 dart bin/main.dart --apply-migrations

//if gotting the error then it need the postgresql install by using this commadn for the mac 
brew services start postgresql  

//then again run the 
dart bin/main.dart --apply-migrations



