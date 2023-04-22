For Firestore connection 

1. Setup your Cloud Firestore 
2. Remove the google-service.json file from the app folder inside android folder
3. Add your google-service.json file in the same folder you will get during setup 
4. Remove the 3rd classpath in the build.gradle file inside android folder and add your classpath 
5. Remove Plugin at the end from build.gradle file inside app folder and add your Plugin "you will get at the setup"
6. check the following dependencies in the pubspec.yaml file 
cloud_firestore: ^4.5.1
firebase_database: ^10.1.0
firebase_core: ^2.9.0
7. If not there install it 

