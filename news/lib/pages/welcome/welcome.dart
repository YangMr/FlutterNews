import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:news/common/utils/utils.dart';
import 'package:news/common/values/values.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  //页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: duSetHeight(60),
      ),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: duSetFontSize(24),
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat",
          color: AppColors.primaryText,
          height: 1,
        ),
      ),
    );
  }

  //页头说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        style: TextStyle(
            fontSize: duSetFontSize(16),
            fontFamily: "Avenir",
            color: AppColors.primaryText,
            fontWeight: FontWeight.normal,
            height: 1.3),
        textAlign: TextAlign.center,
      ),
    );
  }

  //特性说明
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: <Widget>[
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: duSetFontSize(16),
                  fontWeight: FontWeight.normal,
                  color: AppColors.primaryText,
                  fontFamily: "Avenir"),
            ),
          ),
        ],
      ),
    );
  }

  //开始按钮
  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        shape: RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
        onPressed: () {},
        child: Text(
          "Get started",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context,width: 375, height: 812 - 44 - 34, allowFontScaling: true);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              86,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            Spacer(),
            _buildStartButton(context),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// // import "package:flutter_screenutil/flutter_screenutil.dart";
// import 'package:news/common/utils/utils.dart';
// import 'package:news/common/values/values.dart';

// class WelcomePage extends StatefulWidget {
//   WelcomePage({Key key}) : super(key: key);

//   @override
//   _WelcomePageState createState() => _WelcomePageState();
// }

// class _WelcomePageState extends State<WelcomePage> {
// //页头标题
// Widget _buildPageHeadTitle() {
//   return Container(
//     margin: EdgeInsets.only(
//       top: duSetHeight(60 + 44.0),
//     ),
//     child: Text(
//       "Features",
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         fontSize: duSetFontSize(24),
//         fontWeight: FontWeight.w600,
//         fontFamily: "Montserrat",
//         color: AppColors.primaryText,
//         height: 1,
//       ),
//     ),
//   );
// }

// //页头说明
// Widget _buildPageHeaderDetail() {
//   return Container(
//     width: duSetWidth(242),
//     height: duSetHeight(70),
//     margin: EdgeInsets.only(top: duSetHeight(14)),
//     child: Text(
//       "The best of news channels all in one place. Trusted sources and personalized news for you.",
//       style: TextStyle(
//           fontSize: duSetFontSize(16),
//           fontFamily: "Avenir",
//           color: AppColors.primaryText,
//           fontWeight: FontWeight.normal,
//           height: 1.3),
//       textAlign: TextAlign.center,
//     ),
//   );
// }

// //特性说明
// Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
//   return Container(
//     width: duSetWidth(295),
//     height: duSetHeight(80),
//     margin: EdgeInsets.only(top: duSetHeight(marginTop)),
//     child: Row(
//       children: <Widget>[
//         Container(
//           width: duSetWidth(80),
//           height: duSetHeight(80),
//           child: Image.asset(
//             "assets/images/$imageName.png",
//             fit: BoxFit.none,
//           ),
//         ),
//         Spacer(),
//         Container(
//           width: duSetWidth(195),
//           child: Text(
//             intro,
//             textAlign: TextAlign.left,
//             style: TextStyle(
//                 fontSize: duSetFontSize(16),
//                 fontWeight: FontWeight.normal,
//                 color: AppColors.primaryText,
//                 fontFamily: "Avenir"),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// //开始按钮
// Widget _buildStartButton(BuildContext context) {
//   return Container(
//       width: duSetWidth(295),
//       height: duSetHeight(44),
//       margin: EdgeInsets.only(bottom: duSetHeight(20)),
//       child: FlatButton(
//         color: AppColors.primaryElement,
//         textColor: AppColors.primaryElementText,
//         shape: RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
//         onPressed: () {},
//         child: Text(
//           "Get started",
//         ),
//       ));
// }

//   @override
//   Widget build(BuildContext context) {
//     //设置屏幕适配
    // ScreenUtil.init(context,
    //     width: 375, height: 812 - 44 - 34, allowFontScaling: true);
// return Scaffold(
//   body: Center(
//     child: Column(
//       children: <Widget>[
//         _buildPageHeadTitle(),
//         _buildPageHeaderDetail(),
//         _buildFeatureItem(
//           "feature-1",
//           "Compelling photography and typography provide a beautiful reading",
//           86,
//         ),
//         _buildFeatureItem(
//           "feature-2",
//           "Sector news never shares your personal data with advertisers or publishers",
//           40,
//         ),
//         _buildFeatureItem(
//           "feature-3",
//           "You can get Premium to unlock hundreds of publications",
//           40,
//         ),
//         Spacer(),
//         _buildStartButton(context),
//       ],
//     ),
//   ),
// );
//   }
// }
