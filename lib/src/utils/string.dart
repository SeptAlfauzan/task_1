String formattedRatingReviews({required double rating}) => "$rating reviews";
String formattedDistance({required double distance}) =>
    distance / 1000.0 >= 1.0 ? "${distance / 1000.0} km" : "$distance m";
