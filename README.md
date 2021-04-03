# Using tokens with Agora Video Call

A sample repo that demonstrates how you can use dynamic tokens generated from a serveer into your application.

## Pre-requisites

- '>= Flutter 1.0.0'
- Agora [Developer Account](https://console.agora.io/)

## Create an Account and Obtain an App ID

To build and run the sample application, first obtain an app ID:

1. Create a developer account at agora.io. Once you finish the sign-up process, you are redirected to the dashboard.
2. Navigate in the dashboard tree on the left to Projects > Project List.
3. Copy the app ID that you obtain from the dashboard into a text file. You will use this when you launch the app.

## Update and Run the Sample Application

1. Open the AppID.dart file and add the app ID.

```const appID = '<--Add your App Id here-->';```
 
2. . Install all the dependencies

```flutter pub get```

3. Add your server link to CallPage.dart
```var baseUrl = '';```

4. Once the build is complete, use the below given command to run the app. 

```flutter run```

## Resources

- You can find the complete API Documentation over [here](https://docs.agora.io/en/Video/API%20Reference/flutter/index.html).
- You can refer this [blog](https://meherdeept.medium.com/group-video-calling-using-agoras-flutter-sdk-53abbef1bb55) where I will walk you through the process of building a group video calling application.
- I also invite you to join [Agora.io Developer Slack Community](https://agoraio.slack.com/). 