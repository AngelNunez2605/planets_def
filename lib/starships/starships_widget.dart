import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StarshipsWidget extends StatefulWidget {
  const StarshipsWidget({Key? key}) : super(key: key);

  @override
  _StarshipsWidgetState createState() => _StarshipsWidgetState();
}

class _StarshipsWidgetState extends State<StarshipsWidget> {
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
                      'Starships',
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
                      'Real Starships',
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
                            'assets/images/starshipMK1.jpeg',
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
                            'assets/images/Starship_SN16.jpg',
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
                            'assets/images/Starship_SN21.jpg',
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
                            'assets/images/Super_Heavy_B3.jpg',
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
                            'assets/images/Super_Heavy_B4.jpeg',
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
                          FontAwesomeIcons.galacticSenate,
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
                          icon: FaIcon(
                            FontAwesomeIcons.galacticRepublic,
                            color: FlutterFlowTheme.of(context).primaryText,
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
                            'Starships_screen',
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
                                'assets/images/starshipMK1.jpeg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'StarShip MK1',
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
                                'assets/images/Starship_SN16.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Starship SN16',
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
                                'assets/images/Starship_SN21.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Starship SN16',
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
                                'assets/images/Super_Heavy_B3.jpg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Super Heavy B3',
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
                                'assets/images/Super_Heavy_B4.jpeg',
                                width: 125,
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              'Super Heavy B4',
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
