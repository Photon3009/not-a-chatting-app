// Global APP - specific constants

import 'package:its_urgent/configurations/constants/fonts.gen.dart';
// ///Generate by running ```fluttergen``` in the terminal

export 'assets.gen.dart';
export 'fonts.gen.dart';

const kAppTitle = 'Hackmate';
const kMontserratFontFamily = FontFamily.montserrat;

const kApiEndpoint = 'https://cloud.appwrite.io/v1';
const kProjectId = '65d08a96adf4855f1abc';

const kAppIdentifier = 'its_urgent';

const envIdDev = '$kAppIdentifier-dev';
const envIdProd = '$kAppIdentifier-prod';

const kDefaultCountryCode = '+91';

///Collections
const kUsersCollection = 'users';
const kOtpLength = 6;

///Form control names
const kPhoneField = 'phone';
const kOtpField = 'otp';
const kNameField = 'name';
const kEmailField = 'email';
const kQuestionField = 'question';
const kAnswerField = 'answer';

///User prefs
const userSurveyAttemptedPref = 'user_survey_attempted';

///Route metadata keys
const kShowAppBar = 'showAppBar';

///Onboarding text
const kOnboardTitle1 = "Welcome to\nIt's Urgent App";
const kOnboardDesc1 = "The place where urgent communication is intentional";
const kOnboardTitle2 = "How to use\nIt's Urgent App";
const kOnboardDesc2 =
    "Connect with your contacts, set personalized challenges, and experience controlled disruptions. ";
const kOnboardTitle3 = "Add Challenges";
const kOnboardDesc3 =
    "Set up personalized challenges. These challenges will appear on the other user's side when they are trying to reach out to you while you are in Do Not Disturb (DND) mode";
const kOnboardTitle4 = "Create Your Account to Continue";
const kOnboardDesc4 =
    "Create an account to save your data and lets It’s Urgent to notify your friends that it’s really urgent";
