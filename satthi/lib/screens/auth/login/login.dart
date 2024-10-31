import 'package:flutter/material.dart';
import 'package:satthi/screens/auth/signup/type_of_acc.dart';

// Enum for account type
enum AccountType { Doctor, Patient, Hospital }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // GlobalKey for the Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Variables to store form values
  String? fullName;
  String? email;
  String? mobile;
  AccountType? selectedAccountType;

  // Function for TextFormField Widget
  Widget _textFormField({
    required String hintText,
    required String? Function(String?) validator,
    required void Function(String?) onSaved,
    required double width,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: width * 0.9,
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: hintText,
          ),
          validator: validator,
          onSaved: onSaved,
        ),
      ),
    );
  }

  // Function for DropdownButtonFormField
  Widget _accountTypeDropdown({
    required double width,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: width * 0.9,
        child: DropdownButtonFormField<AccountType>(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            labelText: "Select Account Type",
          ),
          value: selectedAccountType,
          items: AccountType.values.map((accountType) {
            return DropdownMenuItem<AccountType>(
              value: accountType,
              child: Text(
                accountType.name,
                style: TextStyle(color: Colors.black),
              ), // Display the name of enum value
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedAccountType = value;
            });
          },
          validator: (value) {
            if (value == null) {
              return 'Please select an account type';
            }
            return null;
          },
          onSaved: (value) {
            selectedAccountType = value;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapped outside of TextField
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 80,
                        ),
                        backgroundColor: Colors.blue,
                        radius: height * 0.08,
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        "Registration",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        "Please enter your email ID and mobile number. We will send an OTP to verify.",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Full name field

                      SizedBox(height: height * 0.03),

                      // Email field
                      _textFormField(
                        hintText: "Email",
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value;
                        },
                        width: width,
                      ),
                      SizedBox(height: height * 0.03),

                      // Mobile number field
                      _textFormField(
                        hintText: "Password",
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          mobile = value;
                        },
                        width: width,
                      ),
                      SizedBox(height: height * 0.03),

                      // Account type dropdown
                      _accountTypeDropdown(width: width),

                      SizedBox(height: height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => TypeOfAccount(PageIndexAt: 1,totalPages: 8, onAccountTypeSelected: (AccountType ) {  }, pageIndexAt: 8,)));
                            },
                            child: Text("Sign Up"),
                          ),
                          Text("Made with Satthi"),
                          TextButton(
                            onPressed: () {},
                            child: Text("Forget Password"),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),

                      // Submit button
                      SizedBox(
                        width: width * 0.9,
                        height: height * 0.07,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Perform registration or other actions with form values
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing...'),
                                ),
                              );
                              // Use fullName, email, mobile, and selectedAccountType variables
                              print('Full Name: $fullName');
                              print('Email: $email');
                              print('Mobile: $mobile');
                              print(
                                  'Account Type: ${selectedAccountType?.name}');
                            }
                          },
                          child: Text('Submit'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
