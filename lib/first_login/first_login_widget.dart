import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_login_model.dart';
export 'first_login_model.dart';

/// First Login Welcome + Freemium Popup UI Screen
/// Design a modern, emotionally warm mobile UI screen for a
/// voice-emotion-based app called "Apno Ki Awaz", to be shown immediately
/// after the first successful login.
///
/// 🟡 Screen Background:
///
/// Use a soft, light cream color (#FFFDE7) as the main background, full
/// screen.
///
/// 🧠 Top Section (Center-Aligned):
///
/// Place the app logo (AI brain + human face + yellow heart + pulse beats) at
/// the top center, inside a small rounded rectangle box with a thin lime
/// yellow border.
///
/// The logo size should be medium-small, occupying top 12–15% of the screen.
///
/// 🟣 Welcome Text (Center Middle, stacked):
///
/// Just below the logo, center a 3-line welcome message:
///
/// Line 1: "WELCOME" — Bold, uppercase, large, in Deep Purple #7B1FA2,
/// Poppins font
///
/// Line 2: "to" — Smaller, light font weight, lowercase, soft gray
///
/// Line 3: "APNO KI AWAJ" — Slightly larger, playful brush font or rounded
/// Poppins, again in Purple #7B1FA2
///
/// 🟨 Pop-Up Card (Center Lower, ~65% height):
///
/// Center a pop-up card that says:
///
/// "FREEMIUM ACCESS ACTIVATED" — Bold, all-caps, centrally aligned
///
/// Card has:
///
/// Rounded corners
///
/// Border glow effect in lime yellow #CDDC39
///
/// Background white or faded purple with faint radial lines/glow emerging
/// outward
///
/// Padding and spacing make it look airy and celebratory
///
/// ⚡ Animation Suggestion (Back of Pop-Up):
///
/// Behind the pop-up card, show subtle spark/firework burst animations that
/// animate radially for 2–3 seconds.
///
/// Sparks should be soft curved strokes in yellow and purple, with glowing
/// fade-out.
///
/// This creates a celebratory moment of “access granted” — like unlocking a
/// treasure.
///
/// 📝 Side Note (Right Corner, Small Text):
///
/// Place a faint note in the top right saying:
///
/// "For first time login only ✅"
///
/// In smaller, light gray font, italicized or
/// cursive┌───────────────────────────────┐
/// │     [LOGO]                   │  ⬅️ Top 12–15%
/// │     WELCOME                  │
/// │     to                       │  ⬅️ Center Top 30–40%
/// │     APNO KI AWAJ             │
/// │                               │
/// │                               │
/// │     [FREEMIUM ACCESS CARD]   │  ⬅️ Center bottom ~65%
/// │     with glowing spark bg    │
/// │                               │
/// │     ┌──────────────┐         │
/// │     │ for first... │         │  ⬅️ Right top corner note
/// └───────────────────────────────┘
/// Fonts:
///
/// Main: Poppins (Bold for "Welcome", Medium/Regular for rest)
///
/// Optional: Brush Script or Semi-Handwritten for “Apno Ki Awaj”
class FirstLoginWidget extends StatefulWidget {
  const FirstLoginWidget({super.key});

  static String routeName = 'FirstLogin';
  static String routePath = '/firstLogin';

  @override
  State<FirstLoginWidget> createState() => _FirstLoginWidgetState();
}

class _FirstLoginWidgetState extends State<FirstLoginWidget>
    with TickerProviderStateMixin {
  late FirstLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstLoginModel());

    animationsMap.addAll({
      'stackOnPageLoadAnimation': AnimationInfo(
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
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 40.0, 24.0, 40.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 120.0,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFDE7),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: Color(0x00CDDC39),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 32.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 20.0,
                                              color: Color(0x40CDDC39),
                                              offset: Offset(
                                                0.0,
                                                0.0,
                                              ),
                                            )
                                          ],
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.white,
                                              Color(0x00F3E5F5)
                                            ],
                                            stops: [0.0, 1.0],
                                            begin:
                                                AlignmentDirectional(1.0, -1.0),
                                            end:
                                                AlignmentDirectional(-1.0, 1.0),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          border: Border.all(
                                            color: Color(0x00CDDC39),
                                            width: 2.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              ChoiceSelectionPageWidget
                                                  .routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.scale,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  duration: Duration(
                                                      milliseconds: 2000),
                                                ),
                                              },
                                            );
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.24, 0.16),
                                                child: Text(
                                                  'WELCOME',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displayMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF7B1FA2),
                                                        fontSize: 45.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displayMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.03, 0.49),
                                                child: Text(
                                                  'To',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.06, 0.8),
                                                child: Text(
                                                  'APNO KI AWAJ',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF7B1FA2),
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'stackOnPageLoadAnimation']!),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.23, -0.41),
                                      child: Text(
                                        'FREEMIUM ACCESS',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF7B1FA2),
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.1, -0.16),
                                          child: Text(
                                            'ACTIVATED',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF7B1FA2),
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.47, 0.41),
                                                child: Text(
                                                  'Enjoy premium features with your first login!',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF666666),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.05, 0.18),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/logo_-_front.png',
                                                    width: 71.7,
                                                    height: 90.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.celebration_outlined,
                                                color: Color(0x00CDDC39),
                                                size: 64.0,
                                              ),
                                              Container(
                                                width: 80.0,
                                                height: 4.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00CDDC39),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.0),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 1.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.06, -0.75),
                child: Image.asset(
                  'assets/images/logo_-_back.png',
                  width: 246.9,
                  height: 306.6,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
