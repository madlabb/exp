# Instagram Clone


## YouTube Video Link
(https://youtu.be/BBccK1zTgxw) 

## Installation
After cloning this repository, migrate to ```instagram-flutter-clone``` folder. Then, follow the following steps:
1. Create New Project in Firebase
2. From Left Side Bar, Click on
	Build -> Authentication -> Get Started -> Email/Password -> Enable Email/Password -> Save
3. From Left Side Bar, Click on
	Build -> Firestore Database -> Get Started
	Start in Test Mode -> Next -> Select Location and then click Enable
	In Cloud Firestore Page,
	Click on Rules and replace this 
  ```bash
	match /{document=**} {
      allow read, write;
    	} 
  ```   
  Click Publish

4. From Left Side Bar, Click on
	Build -> Storage -> Get Started
	Start in Test Mode -> Next -> Select Location 	and then click Enable
	In Storage Page,
	Click on Rules and replace this 
  
  ```bash
	match /{document=**} {
      allow read, write;
    	} 
  ```
  Click Publish

5. Go on Project Overview
	Click </> to Add Firebase to your web app
	Add nickname and register the app
	
	Copy all of the contents in firebaseConfig
	example:-
  ```bash
	  apiKey: "AIzaSyC0ubTb6Uf-CC-TsuwtxDQ4sVkrgqcsqko",
  	authDomain: "instaaaa-f925a.firebaseapp.com",
  	projectId: "instaaaa-f925a",
  	storageBucket: "instaaaa-f925a.appspot.com",
  	messagingSenderId: "953403467871",
  	appId: "1:953403467871:web:2f50ddec05e4b4254a53ea"
  ```
  
  And then paste this in main.dart file where
  ```bash

	// paste here option is written
  ```
  
Then run the following commands to run your app:

## For Flutter in Android Studio

1. Go in pubspec.yaml file and click **pub get**
2. Before running the app. Paste **--web-renderer html** in Additional Args Option <br />
   Run -> Edit Configurations -> Paste in additional args  <br />
   **Note:** If you run without pasting this command, your output will not show any images in Instagram App
3. Now select the Chrome Web as device and click Run Button


## For Flutter in Vs Code or Terminal use these commands

```bash
  flutter pub get
  flutter run -d chrome --web-renderer html (to see the best output)
```


## In signup page

**Fill all the input fields including profile image; otherwise you will get error**



## Tech Used
**Server**: Firebase Auth, Firebase Storage, Firebase Firestore

**Client**: Flutter, Provider
    
## Feedback

If you have any feedback, please reach out to me at no.way.please@gmail.com

