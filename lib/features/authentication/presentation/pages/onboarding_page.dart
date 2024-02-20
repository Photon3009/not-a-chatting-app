import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:its_urgent/configurations/configurations.dart';
import 'package:its_urgent/configurations/router/router.gr.dart';
import 'package:its_urgent/features/app/presentation/its_urgent_scaffold.dart';
import 'package:its_urgent/features/authentication/presentation/single_onboarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  bool _showLoginSignupActions = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ItsUrgentScaffold(
      showAppBar: false,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              if (index + 1 == 4) {
                setState(() {
                  _showLoginSignupActions = true;
                });
              } else {
                setState(() {
                  _showLoginSignupActions = false;
                });
              }
            },
            children: [
              SingleOnboardingPage(
                illustration: Assets.images.onboardingVector1
                    .image(alignment: Alignment.bottomLeft),
                title: kOnboardTitle1,
                description: kOnboardDesc1,
                color: const Color(0xffB7D6D1),
              ),
              SingleOnboardingPage(
                  illustration:
                      Assets.images.onboardingVector3.image(fit: BoxFit.fill),
                  title: kOnboardTitle2,
                  description: kOnboardDesc2,
                  color: const Color(0xffE4C7B7)),
              SingleOnboardingPage(
                  illustration: Assets.images.onboardingVector4
                      .image(alignment: Alignment.bottomRight),
                  title: kOnboardTitle3,
                  description: kOnboardDesc3,
                  color: const Color(0xffBFBFBF)),
              SingleOnboardingPage(
                illustration:
                    Assets.images.onboardingVector2.image(fit: BoxFit.fill),
                title: kOnboardTitle4,
                description: kOnboardDesc4,
                color: const Color(0xffDAE1E9),
              ),
            ],
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SizedBox(
              width: width,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  effect: SwapEffect(
                    activeDotColor: Theme.of(context).primaryColor,
                    dotColor: Theme.of(context).primaryColor.withOpacity(0.5),
                    dotHeight: kPadding * 2,
                    dotWidth: kPadding * 2,
                    type: SwapType.yRotation,
                  ),
                  onDotClicked: (index) {
                    _controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInCubic,
                    );
                  },
                  count: 4,
                ),
              ),
            ),
          ),
          if (_showLoginSignupActions)
            const Positioned(bottom: 0, child: GetStartedAction()),
        ],
      ),
    );
  }
}

class GetStartedAction extends StatelessWidget {
  const GetStartedAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(
          kPadding * 4,
        ),
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  foregroundColor: Colors.white),
              onPressed: () {
                context.router.push(
                  const PhoneAuthRouter(
                    children: [
                      PhoneLoginRoute(),
                    ],
                  ),
                );
              },
              child: const Text('Get started'),
            ),
          ],
        ),
      ),
    );
  }
}
