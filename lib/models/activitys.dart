class Activity {
  String ActivityName;
  String ActivityPlace;
  String ActivityCountry;
  String ActivityImageUrl;
  String ActivityDescription;
  String hotelStartingTime;
  String hotelEndingTime;
  String ActivityPrice;
  Activity(
      {required this.ActivityName,
      required this.ActivityPlace,
      required this.ActivityCountry,
      required this.ActivityImageUrl,
      required this.ActivityDescription,
      required this.hotelStartingTime,
      required this.hotelEndingTime,
      required this.ActivityPrice});
}

List<Activity> Activitys = [
  Activity(
      ActivityName: "Hotel",
      ActivityPlace: "Goa",
      ActivityCountry: "India",
      ActivityImageUrl:
          "https://plus.unsplash.com/premium_photo-1675745329954-9639d3b74bbf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWx8ZW58MHx8MHx8fDA%3D",
      ActivityDescription: "Rocking Place",
      hotelStartingTime: "9:00 Am",
      hotelEndingTime: "7:30 Pm",
      ActivityPrice: "120"),
  Activity(
      ActivityName: "Nova",
      ActivityPlace: "Visakapatanam",
      ActivityCountry: "India",
      ActivityImageUrl:
          "https://images.unsplash.com/photo-1618773928121-c32242e63f39?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ActivityDescription: "Unique place",
      hotelStartingTime: "8:00 Am",
      hotelEndingTime: "9:30 Pm",
      ActivityPrice: "250"),
  Activity(
      ActivityName: "Samrat Hotel",
      ActivityPlace: "Hyderabad",
      ActivityCountry: "India",
      ActivityImageUrl:
          "https://plus.unsplash.com/premium_photo-1661964225206-fd5d445a6edd?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ActivityDescription: "Food is owesem",
      hotelStartingTime: "10:00 Am",
      hotelEndingTime: "8:30 Pm",
      ActivityPrice: "320"),
  Activity(
      ActivityName: "Happy Hotel",
      ActivityPlace: "Delhi",
      ActivityCountry: "India",
      ActivityImageUrl:
          "https://images.unsplash.com/photo-1606046604972-77cc76aee944?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ActivityDescription: "Food is owesem",
      hotelStartingTime: "10:00 Am",
      hotelEndingTime: "8:30 Pm",
      ActivityPrice: "500"),
];
