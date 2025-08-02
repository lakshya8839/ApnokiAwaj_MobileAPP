import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

/// Let's Connect Page
/// Design a modern, emotionally expressive mobile app screen titled "Let’s
/// Connect" for an app called Apno Ki Awaj.
///
/// Use a soft cream-colored background (#FFFDE7).
///
/// At the top, include a small logo (brain + heart with AI pulse), followed
/// by the app name:
///
/// Text: Apno Ki Awaj
///
/// Font: Rounded, handwritten-style Poppins, in dark purple (#7B1FA2) and
/// lime yellow (#CDDC39) accents
///
/// Below that, center a Lottie-style animated scene with expressive character
/// silhouettes (2–3 people), each with a speech bubble. Ensure their
/// connection feels warm, human, and emotional. Let the animation appear to
/// "breathe" or subtly pulse, showing emotional warmth and active listening.
///
/// Beneath the animation, add the tagline in handwriting-style font:
///
/// “Because love deserves a voice that stays”
///
/// Gradient color from #7B1FA2 to #CDDC39
///
/// At the bottom, include a bold, rounded "Let’s Connect !!" button:
///
/// Purple text on a white background, outlined with a thick yellow border
///
/// Slight 3D feel or shadow
///
/// Entire screen should follow minimal, cream-padded layout with friendly
/// spacing, soft shadows, and mobile-responsive look.
class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  static String routeName = 'LandingPage';
  static String routePath = '/landingPage';

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFFDE7),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x337B1FA2),
                            offset: Offset(
                              0.0,
                              4.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/logo_-_front.png',
                                width: 200.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Apno Ki Awaj',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                color: Color(0xFF7B1FA2),
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                                lineHeight: 1.2,
                              ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
                Container(
                  width: double.infinity,
                  height: 280.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x1A7B1FA2),
                        offset: Offset(
                          0.0,
                          6.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Stack(
                    children: [
                      Lottie.asset(
                        'assets/jsons/Artificial_Intelligence_Chatbot.json',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ],
                  ),
                ),
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Because love deserves a voice',
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: ' that stays',
                        style: TextStyle(),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).warning,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                          lineHeight: 1.3,
                        ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 280.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            color: Color(0x4DCDDC39),
                            offset: Offset(
                              0.0,
                              6.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Color(0xFFCDDC39),
                          width: 3.0,
                        ),
                      ),
                      child: Stack(
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(UserConsentWidget.routeName);
                            },
                            text: 'Let\'s Connect !!',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: double.infinity,
                              padding: EdgeInsets.all(8.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF7B1FA2),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ].divide(SizedBox(height: 32.0)),
            ),
          ),
        ),
      ),
    );
  }
}
