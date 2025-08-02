import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about_team_model.dart';
export 'about_team_model.dart';

/// Prompt for “About the Team” Section – Apno Ki Awaz
/// Design a web or mobile UI section titled “Brains Behind the Build” to
/// showcase the student co-founders of the emotional AI app Apno Ki Awaz.
///
/// 💡 Design Goals:
///
/// Visually reflect warmth, empathy, and creativity
///
/// Must align with brand color palette:
///
/// 🟣 Purple: #7B1FA2 (primary)
///
/// 🟡 Lime Yellow: #CDDC39 (secondary)
///
/// 🤍 Cream Background: #FFFDE7
///
/// Use soft shadows, rounded cards, and clean modern font (Poppins)
///
/// 🧑‍🤝‍🧑 Layout:
///
/// Two or more profile cards placed side-by-side (responsive layout)
///
/// Title at top center:
///
/// Heading: “Brains Behind the Build” (bold, gradient purple)
///
/// Subheading: “Student Innovators Who Dared to Dream & Do” (gray text, soft)
///
/// 📇 Team Member Card Design:
///
/// Rounded rectangle with soft cream background
///
/// Top: Circular photo of the member
///
/// Name (bold, black) and title (light gray) below photo
///
/// Three icons for LinkedIn, GitHub, and Email (monochrome or brand-colored
/// icons)
///
/// Bottom tag/button:
///
/// Text: “Available for Hiring”
///
/// Gradient button in brand tones: lime to cyan or purple to teal
///
/// Subtle bounce or glow on hover/tap
///
/// ✨ Styling Details:
///
/// Shadow under each card (light, diffused)
///
/// Slight scaling animation on card hover/tap
///
/// Smooth transitions
///
/// Fonts: Use Poppins Medium and Light
///
/// All assets must feel emotionally expressive but modern
///
/// This section should celebrate the student spirit, innovation, and personal
/// drive, while blending perfectly into the emotionally soft design of Apno
/// Ki Awaz.
class AboutTeamWidget extends StatefulWidget {
  const AboutTeamWidget({super.key});

  static String routeName = 'AboutTeam';
  static String routePath = '/aboutTeam';

  @override
  State<AboutTeamWidget> createState() => _AboutTeamWidgetState();
}

class _AboutTeamWidgetState extends State<AboutTeamWidget> {
  late AboutTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutTeamModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Brains Behind the Build',
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
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                      ),
                      Text(
                        'Student Innovators Who Dared to Dream & Do',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                              color: Color(0xFF757575),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 24.0,
                      mainAxisSpacing: 24.0,
                      childAspectRatio: 0.7,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 24.0,
                                color: Color(0x1A000000),
                                offset: Offset(
                                  0.0,
                                  8.0,
                                ),
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 120.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF5F5F5),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://images.unsplash.com/photo-1601412436009-d964bd02edbc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTQxMDk4OTd8&ixlib=rb-4.1.0&q=80&w=1080',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xFFCDDC39),
                                          width: 4.0,
                                        ),
                                      ),
                                      child: Container(
                                        width: 200.0,
                                        height: 200.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/Lakshya_-_photo.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Lakshya Chalana',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF212121),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Co-Founder',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF757575),
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.97, 0.97),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 23.48,
                                  fillColor:
                                      FlutterFlowTheme.of(context).warning,
                                  icon: FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await launchURL(
                                        'https://www.linkedin.com/in/lakshya-chalana-886306285?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 24.0,
                                color: Color(0x1A000000),
                                offset: Offset(
                                  0.0,
                                  8.0,
                                ),
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 120.0,
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF5F5F5),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'https://images.unsplash.com/photo-1492106087820-71f1a00d2b11?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NTQxMDk4OTd8&ixlib=rb-4.1.0&q=80&w=1080',
                                          ).image,
                                        ),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xFFCDDC39),
                                          width: 4.0,
                                        ),
                                      ),
                                      child: Container(
                                        width: 200.0,
                                        height: 200.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/palak-photo.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Palak Saini',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF212121),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'Co-Founder ',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF757575),
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.98, 0.98),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 25.86,
                                  fillColor:
                                      FlutterFlowTheme.of(context).warning,
                                  icon: FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await launchURL(
                                        'https://www.linkedin.com/in/palak-saini-7868b921b');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F9FA),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Color(0xFFCDDC39),
                        width: 2.0,
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 32.0))
                    .addToStart(SizedBox(height: 40.0))
                    .addToEnd(SizedBox(height: 40.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
