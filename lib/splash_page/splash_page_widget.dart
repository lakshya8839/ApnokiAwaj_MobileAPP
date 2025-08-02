import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'splash_page_model.dart';
export 'splash_page_model.dart';

/// Prompt for Image Generation (Splash Screen for “Apno Ki Awaz”):
///
/// Design a mobile splash screen for an emotionally expressive app named
/// “Apno Ki Awaz”.
///
/// 🔹 Background: Use a clean, soft cream background (#FFFDE7).
///
/// 🔹 Main Visual (Centered):
///
/// A large, elegant logo featuring a split design: one half shows a human
/// face, the other half an AI brain.
///
/// In the center of this split, include a yellow heart with a pulse beat line
/// running through it, symbolizing emotion and life.
///
/// 🔹 Motion Element (between logo and title):
///
/// Add a subtle, animated voice pulse wave in lime yellow (#CDDC39), smoothly
/// looping.
///
/// This pulse should stretch horizontally across the screen in a soft glowing
/// pattern, placed just below the logo and above the app name.
///
/// 🔹 Text Styling (Center aligned below logo):
///
/// App Title: “Apno Ki Awaz”
///
/// Font: Poppins, Bold, Modern
///
/// Color: Deep Purple (#7B1FA2)
///
/// Size: Large, centered
///
/// Subtitle: “Because love deserves a voice that stays
/// ”
///
/// Font: Regular Poppins
///
/// Color: Soft Gray or Light Purple (slightly lighter than the title)
///
/// Size: Medium
///
/// 🔹 Loading Animation:
///
/// Three animated dots centered below the subtitle.
///
/// Match their color with the title (#7B1FA2), and animate them with a soft
/// bounce or fade-in-out loop.
///
/// 🔹 Overall Feel:
///
/// Emotionally warm, modern, minimal
///
/// Should feel like a gentle, heartfelt welcome.
///
/// This is for a voice-driven emotional wellness app.
class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({
    super.key,
    this.logo,
  });

  /// logo
  final FFUploadedFile? logo;

  static String routeName = 'SplashPage';
  static String routePath = '/splashPage';

  @override
  State<SplashPageWidget> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget>
    with TickerProviderStateMixin {
  late SplashPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashPageModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0x00FFFDE7),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFFFFDE7),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/logo_-_front.png',
                        width: 379.4,
                        height: 379.92,
                        fit: BoxFit.cover,
                        alignment: Alignment(0.0, 0.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(LandingPageWidget.routeName);
                      },
                      child: Lottie.asset(
                        'assets/jsons/Audio&Voice-A-002.json',
                        width: 179.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                        frameRate: FrameRate(60.0),
                        animate: true,
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: FlutterFlowTimer(
                        initialTime: _model.timerInitialTimeMs,
                        getDisplayTime: (value) =>
                            StopWatchTimer.getDisplayTime(
                          value,
                          hours: false,
                          milliSecond: false,
                        ),
                        controller: _model.timerController,
                        updateStateInterval: Duration(milliseconds: 1000),
                        onChanged: (value, displayTime, shouldUpdate) {
                          _model.timerMilliseconds = value;
                          _model.timerValue = displayTime;
                          if (shouldUpdate) safeSetState(() {});
                        },
                        onEnded: () async {
                          context.pushNamed(
                            LandingPageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 1500),
                              ),
                            },
                          );
                        },
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                      ),
                    ),
                  ].divide(SizedBox(height: 32.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
