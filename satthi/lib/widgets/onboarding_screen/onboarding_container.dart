import 'package:flutter/material.dart';

class OnboardingContainerStarting extends StatefulWidget {
  const OnboardingContainerStarting({
    super.key,
    required this.imgUrl,
    required this.headline,
    required this.subHeadline,
  });

  final String imgUrl;
  final String headline;
  final String subHeadline;

  @override
  State<OnboardingContainerStarting> createState() =>
      _OnboardingContainerStartingState();
}

class _OnboardingContainerStartingState
    extends State<OnboardingContainerStarting> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // CircleAvatar and Image
          Expanded(
            flex: 1,
            child: Image.asset(
              widget.imgUrl,
              fit: BoxFit.fill,
              
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // Headline Text
          Flexible(
            flex: 1,
            child: Text(
              widget.headline,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
              textAlign: TextAlign.center,
            ),
          ),

          // SubHeadline Text
          Flexible(
            flex: 1,
            child: Text(
              widget.subHeadline,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
