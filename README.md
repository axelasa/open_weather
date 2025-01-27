# open_weather


## Getting Started

# Project Name

## Description
A brief description of your project, its purpose, and what it accomplishes.

## Features
- List the key features of your project.
- Highlight any unique or innovative aspects.

## Technical Challenges

During the development of this project, I encountered several technical challenges. Below, I outline these challenges and how I addressed them.

### Challenge 1: [Brief Description of the Challenge]
**Problem:**  
fl_chart: being the first time using fl_charts I was challenged buy how to structure my data to show my mornings as the lowest point
my noon times as the highest point and my evenings as the smooth curve heading to wards my lowest point.
even removing the extra data that comes with the y and x axis was a huge gamble

**Solution:**  
I was able to go through the documentation to get my way around it and to achieve my line graph as intended
**Outcome:**  
my Line graph now shows temperature in between the different times of the day
### Challenge 2: [Brief Description of the Challenge]
**Problem:**  
getting data from the provided API: the provided api was not giving back any data but giving a 404 or a 401 error.
this really frustrated me as the api didn't seem to be faulty at first.

**Solution:**  
after going through the Open Weather api documentation, I realised that the final part of the api was not provided 
and also came across so much more that would make the app interactive and easy to use and also meet all the requirements 
and added in an additional feature to change language
**Outcome:**  
The app is Complete


# **Getting Started**

Clone the Repository:

bash

git clone https://github.com/your-username/your-repo-name.git
cd open_weather
Install Dependencies:
Run the following command to install all the required dependencies:

terminal

flutter pub get

API_KEY=your_api_key_here => Get your own API key From 'https://openweathermap.org/api' 
Running the App
Connect a Device:

Ensure your emulator is running or your physical device is connected via USB.

Verify the device is recognized by running:

terminal

flutter devices
Run the App:
Use the following command to run the app in debug mode:

terminal

flutter run
Hot Reload:
While the app is running, you can use hot reload to see changes instantly. Save your changes in the IDE, and the app will update automatically.

Building the App
For Android
Generate a Release APK:

terminal

flutter build apk
The APK file will be located in build/app/outputs/flutter-apk/app-release.apk.

Generate an App Bundle (for Google Play):

terminal

flutter build appbundle
The app bundle will be located in build/app/outputs/bundle/release/app-release.aab.


```bash
flutter pub get
