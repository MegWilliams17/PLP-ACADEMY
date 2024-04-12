void main() {
  // Get the current date and time
  //Timezone based
  DateTime now = DateTime.now();

  // To calculate a future date by adding 7 days to the current date
  DateTime futureDate = now.add(Duration(days: 7));

  // To create a DateTime object representing an earlier date
  DateTime earlierDate = DateTime(2024, 3, 20);

  // Parse a string to DateTime
  DateTime parsedDate = DateTime.parse('2024-04-05');

  // Format the currrent date tp "yyyy-MM-dd"format
  // // 2024-03-28
  String formattedDate =
      '${now.year}-${_AddLeadingZero(now.month)}-${_AddLeadingZero(now.day)}';

  // format the current time to 'HH:mm:ss' format
  String formattedTime =
      '${_AddLeadingZero(now.hour)}:${_AddLeadingZero(now.minute)}:${_AddLeadingZero(now.second)}';

  // Format the parsed date in a custom format
  String CustomFormattedDate =
      '${_getMonthAbbreviation(parsedDate.month)} ${parsedDate.day}, ${parsedDate.year}';

  // Calculate the difference in days between the current date and an earlier date
  int differenceInDays = now.difference(earlierDate).inDays;

  // Print the current date and timw
  print("Current Date and Time is : $now");

  // Print the formatted date
  print("Formatted Date is : $formattedDate");

  // Print the formatted time
  print("formattedTime is : $formattedTime");

  // Print the future date
  print("Date 7days from now is : $futureDate");

  // Print the difference in days
  print(
      "The difference between $now and $earlierDate is : $differenceInDays days");

  // Print the parsed date
  print("Parsed Date: $parsedDate");

  // Print the custom fommatted date
  print("Custom Formatted Date: $CustomFormattedDate");

  //  Print the specific components of the current date
  print("Year: ${now.year}");
  print("Month: ${now.month}");
  print("Day : ${now.day}");
  print("Hour: ${now.hour}");
  print("Minute: ${now.minute}");
  print("Seconds: ${now.second}");
}

// function to add leading zero to a number if needed
String _AddLeadingZero(int value) {
  return value.toString().padLeft(2, '0');
}

// Function to get the month abbreviation
String _getMonthAbbreviation(int month) {
  return [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ][month - 1];
}
