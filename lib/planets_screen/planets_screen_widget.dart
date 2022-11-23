import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanetsScreenWidget extends StatefulWidget {
  const PlanetsScreenWidget({Key? key}) : super(key: key);

  @override
  _PlanetsScreenWidgetState createState() => _PlanetsScreenWidgetState();
}

class _PlanetsScreenWidgetState extends State<PlanetsScreenWidget> {
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
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Planets');
                        },
                        text: '',
                        icon: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        options: FFButtonOptions(
                          width: 50,
                          height: 50,
                          color: Color(0x00FFFFFF),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Image.asset(
                    'assets/images/solar_system.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.85, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Text(
                      'Planets',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Icon(
                        Icons.star_sharp,
                        color: Color(0xFFFFA600),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                      child: Text(
                        'GAS',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
                      child: Icon(
                        Icons.public,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      '124 145 KM',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                  ],
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryColor,
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          indicatorColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          tabs: [
                            Tab(
                              text: 'Description',
                            ),
                            Tab(
                              text: 'km',
                            ),
                            Tab(
                              text: 'Map',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Text(
                                'Each of these planets takes a different amount of time to travel around the Sun. For the Earth, this journey is 365.25 days long, but for a faraway planet like Neptune, it takes 165 years.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                              ),
                              Text(
                                '124 145 KM',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                    ),
                              ),
                              Image.asset(
                                'assets/images/solar_system.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      icon: Icon(
                        Icons.contact_support_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 50,
                        height: 50,
                        color: Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(80, 0, 80, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('database');
                        },
                        text: '',
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 50,
                          height: 50,
                          color: Color(0x004B39EF),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: '',
                      icon: Icon(
                        Icons.gps_fixed,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 50,
                        height: 50,
                        color: Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
