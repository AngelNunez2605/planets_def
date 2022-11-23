import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackholesWidget extends StatefulWidget {
  const BlackholesWidget({Key? key}) : super(key: key);

  @override
  _BlackholesWidgetState createState() => _BlackholesWidgetState();
}

class _BlackholesWidgetState extends State<BlackholesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Black holes',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 35,
                          ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Text(
                      'Galaxy',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/Holmberg_15A.jpg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/Messier_87.jpg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/NGC_1600.jpg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/NGC_4889.jpg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/S5_0014+81.jpg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/SDSS_J0100+2802.jpg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/ton618.jpeg',
                            width: 200,
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                        text: '',
                        icon: FaIcon(
                          FontAwesomeIcons.galacticRepublic,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                        options: FFButtonOptions(
                          width: 50,
                          height: 50,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 180, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: '',
                          icon: Icon(
                            Icons.auto_awesome,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            height: 50,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'Blackholes_screen',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.topToBottom,
                              ),
                            },
                          );
                        },
                        text: '',
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 50,
                          height: 50,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/Holmberg_15A.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Holmberg 15A',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/Messier_87.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Messier 87',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/NGC_1600.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'NGC 1600',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/NGC_4889.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'NGC 4889',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/S5_0014+81.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'S5 0014+81',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/SDSS_J0100+2802.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'SDSS J0100+2802',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/images/ton618.jpeg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'ton618',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                    ],
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
