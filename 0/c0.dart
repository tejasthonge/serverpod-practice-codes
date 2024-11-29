


//requremts:
	1 flutter 
	2 dart
	3 docker 


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
//if also geting error conform the docker is runing 

/*
_ docker compose up --build --detach
WARN[0000] /Users/tejasthonge/coding/github/serverpod-practice-codes/0/my_pod/my_pod_server/docker-compose.yaml: the attribute `version` is obsolete, it will be ignored, please remove it to avoid potential confusion 
[+] Running 24/4
 ✔ redis Pulled                                                           26.3s 
 ✔ postgres_test Pulled                                                   34.8s 
 ✔ redis_test Pulled                                                      26.3s 
 ✔ postgres Pulled                                                        36.5s 
[+] Running 7/7
 ✔ Network my_pod_server_default            Created                        0.0s 
 ✔ Volume "my_pod_server_my_pod_test_data"  Created                        0.0s 
 ✔ Volume "my_pod_server_my_pod_data"       Created                        0.0s 
 ✔ Container my_pod_server-postgres-1       Started                        1.0s 
 ✔ Container my_pod_server-redis_test-1     Started                        1.0s 
 ✔ Container my_pod_server-postgres_test-1  Started                        1.0s 
 ✔ Container my_pod_server-redis-1          Started                        0.9s 
~/coding/github/serverpod-practice-codes/0/my_pod/my_pod_server >_ dart bin/main.dart --apply-migrations
SERVERPOD version: 2.2.0, dart: 3.5.4 (stable) (Wed Oct 16 16:18:51 2024 +0000) on "macos_arm64", time: 2024-11-29 02:35:10.166928Z
mode: development, role: monolith, logging: normal, serverId: default
SERVERPOD initialized, time: 2024-11-29 02:35:10.217938Z
Applied database migration:
 - 20241127144842904
Insights listening on port 8081
Server default listening on port 8080
Webserver listening on port 8082

*/

/*
A newly created Serverpod project has a preconfigured Docker instance with a Postgres database set up. Run the following command from the root of the server package to start the database:

$ docker compose up --build --detach

To stop the database run:

$ docker compose stop

To remove the database and delete all associated data, run:

$ docker compose down -v
*/


