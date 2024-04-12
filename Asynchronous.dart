import 'dart:async';

void main() async {
  // Call the main function
  await main1();
  // Call the second main function
  await main2();
}

// First main function
Future<void> main1() async {
  // void main1() async {
  print("Fetching weather data....");
  String weather = await fetchweatherData();
  print("weather data:$weather");
  //}
}

// Second main function
Future<void> main2() async {
  //void main2() async {
  // Start the asynchronous operation
  print("Start of the main program ()");
  String result = await fetchUserData();
  //This line will be executed only after fetchUserData() completes
  print("End of main() - User data: $result");
  //}
}

//future function to get weather data
Future<String> fetchweatherData() {
  return Future.delayed(Duration(seconds: 3), () {
    return "Sunny";
  });
}

// Future function to get user data
Future<String> fetchUserData() {
  // Simulate fetching user data asynchronously
  return Future.delayed(Duration(seconds: 2), () {
    return 'John Smith';
  });
}
