import 'package:flutter/material.dart';
import 'package:satthi/screens/auth/login/login.dart';
import 'package:satthi/widgets/onboarding_screen/onboarding_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _index = 0;

  final List<Widget> _onBoardingContainer = const [
    OnboardingContainerStarting(
      imgUrl: "assets/images/Sathi.png",
      headline: "Welcome to Satthi",
      subHeadline:
          "Your personalized health companion. Streamlining hospital processes and saving time when it matters most",
    ),
    OnboardingContainerStarting(
      imgUrl: "assets/images/reception.png",
      headline: "Skip the Reception",
      subHeadline:
          "Find and book appointments with doctors near you, easily and quickly.",
    ),
    OnboardingContainerStarting(
      imgUrl: "assets/images/record.png",
      headline: "Organize Health Records",
      subHeadline:
          "Keep all your medical records and prescriptions securely in one place, accessible anytime.",
    ),
    OnboardingContainerStarting(
      imgUrl: "assets/images/hospital.png",
      headline: "Find the Right Hospital, Fast",
      subHeadline:
          "Get matched with the best hospital for your condition before the ambulance arrives, minimizing delays and unnecessary referrals.",
    ),
  ];

  void nextPage() {
    if (_index < _onBoardingContainer.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      );
    }
  }

  void skipPage() {
    _pageController.animateToPage(
      _onBoardingContainer.length - 1,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                });
              },
              controller: _pageController,
              itemCount: _onBoardingContainer.length,
              itemBuilder: (context, index) {
                return _onBoardingContainer[index];
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: skipPage,
                  child: Text(
                    "Skip",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _onBoardingContainer.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey,
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 16,
                  ),
                ),
                TextButton(
                  onPressed: nextPage,
                  child: Text(
                    "Next",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
