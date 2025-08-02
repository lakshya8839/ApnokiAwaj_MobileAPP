import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'choice_selection_page_model.dart';
export 'choice_selection_page_model.dart';

/// Action Selection UI (Let’s Chat / Let’s Talk Page)
/// Design a mobile app screen for “Apno Ki Awaz” with a clean, modern,
/// emotionally expressive style.
///
/// Use a cream background (#FFFDE7) and soft shadows. At the top center,
/// place a small round logo (AI brain + human face split with yellow heart
/// and pulse) aligned left. On the top-right, show a user profile icon with a
/// soft outline in deep purple (#7B1FA2).
///
/// In the main section, center two user figures side-by-side (one in yellow
/// #CDDC39, one in purple #7B1FA2), with a chat bubble icon between them.
/// Below it, place a rounded button saying “Let’s Chat” with yellow outline
/// and bold text in deep purple, using Poppins font.
///
/// Below the button, display the text:
/// “What would you like to do?”
/// in bold light purple or gray, modern handwriting or rounded font.
///
/// Under that, place another button with text “Let’s Talk” in similar style —
/// yellow border, purple text.
///
/// At the bottom, two characters (again purple and yellow) appear on either
/// side with wave lines next to them, symbolizing voice communication. These
/// icons should be minimal, expressive, and animated-like in appearance.
///
/// Maintain a clean, calming, soft interface with generous padding, rounded
/// corners, and minimal distractions. Layout must feel emotionally warm and
/// community-focused.
class ChoiceSelectionPageWidget extends StatefulWidget {
  const ChoiceSelectionPageWidget({super.key});

  static String routeName = 'ChoiceSelectionPage';
  static String routePath = '/choiceSelectionPage';

  @override
  State<ChoiceSelectionPageWidget> createState() =>
      _ChoiceSelectionPageWidgetState();
}

class _ChoiceSelectionPageWidgetState extends State<ChoiceSelectionPageWidget> {
  late ChoiceSelectionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChoiceSelectionPageModel());
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
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFF6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/logo_-_front.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x20000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            UserProfileSidebarWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                              ),
                            },
                          );
                        },
                        child: Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF7B1FA2),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://images.unsplash.com/photo-1544005313-94ddf0286df2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTM5MTM5MDZ8&ixlib=rb-4.1.0&q=80&w=1080',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: Color(0x20000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF7B1FA2),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 333.4,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0x10FFFFFF),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 12.0,
                                color: Color(0x15000000),
                                offset: Offset(
                                  0.0,
                                  4.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Lottie.asset(
                                  'assets/jsons/Positive_feedback_Like.json',
                                  width: 200.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                  animate: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(UploadyourChatWidget.routeName);
                            },
                            text: 'Let\'s Chat',
                            options: FFButtonOptions(
                              width: 280.0,
                              height: 55.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 0.0, 32.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00FFFDE7),
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
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Color(0xFFCDDC39),
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          Text(
                            'What would you like to do?',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.purple,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed(
                                  PremiumFeaturesPageWidget.routeName);
                            },
                            text: 'Let\'s Talk',
                            options: FFButtonOptions(
                              width: 280.0,
                              height: 55.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 0.0, 32.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00FFFDE7),
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
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Color(0xFFCDDC39),
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ].divide(SizedBox(height: 32.0)),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 73.77,
                  decoration: BoxDecoration(
                    color: Color(0x10FFFFFF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x15000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF7B1FA2),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x20000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.waving_hand_rounded,
                                  color: Color(0x00FFFDE7),
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Container(
                              width: 30.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF7B1FA2),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            Container(
                              width: 20.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF7B1FA2),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            Container(
                              width: 25.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF7B1FA2),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                        Icon(
                          Icons.mic_rounded,
                          color: Color(0xFF7B1FA2),
                          size: 32.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 25.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDDC39),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            Container(
                              width: 20.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDDC39),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            Container(
                              width: 30.0,
                              height: 4.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDDC39),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            Container(
                              width: 37.04,
                              height: 37.04,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDDC39),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x20000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  Icons.waving_hand_rounded,
                                  color: Color(0xFF7B1FA2),
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ],
                    ),
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
