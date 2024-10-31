import 'package:flutter/material.dart';

final InputDecorationTheme satthiInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: Colors.grey[200],  // Light gray background for input fields in light theme

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.grey[500]!,  // Lighter gray border for enabled state
      width: 1.5,
    ),
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.black,  // Black border when focused
      width: 1.5,
    ),
  ),

  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.redAccent,  // Red border for error state in light theme
      width: 1.5,
    ),
  ),

  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: Colors.redAccent,  // Red border when focused in error state
      width: 1.5,
    ),
  ),

  hintStyle: TextStyle(
    color: Colors.grey[600],  // Darker gray hint text for visibility
    fontSize: 16.0,
  ),

  labelStyle: TextStyle(
    color: Colors.grey[700],  // Darker gray for labels
    fontSize: 16.0,
  ),

  floatingLabelStyle: TextStyle(
    color: Colors.black,  // Black for floating label when focused
    fontSize: 16.0,
  ),

  errorStyle: TextStyle(
    color: Colors.redAccent,  // Red for error text
  ),
);
