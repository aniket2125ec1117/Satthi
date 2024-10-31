import 'package:flutter/material.dart';

final TextTheme satthiTextTheme = TextTheme(
  displayLarge: const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: Colors.black, // Black text for large headlines in light theme
  ),
  displayMedium: const TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.w600,
    color: Colors.black87, // Slightly faded black for medium headlines
  ),
  displaySmall: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: Colors.grey[800], // Dark gray for small headlines or sub-headings
  ),
  bodyLarge: const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: Colors.black87, // Black for large body text
  ),
  bodyMedium: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey[700], // Slightly lighter gray for medium body text
  ),
  bodySmall: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey[600], // Darker gray for small text like captions
  ),
  labelLarge: const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.black, // Bold black for buttons and labels
  ),
);
