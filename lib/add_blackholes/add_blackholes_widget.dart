import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBlackholesWidget extends StatefulWidget {
  const AddBlackholesWidget({Key? key}) : super(key: key);

  @override
  _AddBlackholesWidgetState createState() => _AddBlackholesWidgetState();
}

class _AddBlackholesWidgetState extends State<AddBlackholesWidget> {
  TextEditingController? descriptionController;
  TextEditingController? nameController;
  TextEditingController? sizeController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      final blackholesCreateData = createBlackholesRecordData(
        name: nameController!.text,
        description: descriptionController!.text,
        size: int.parse(sizeController!.text),
      );
      await BlackholesRecord.collection.doc().set(blackholesCreateData);
    });

    descriptionController = TextEditingController();
    nameController = TextEditingController();
    sizeController = TextEditingController();
  }

  @override
  void dispose() {
    descriptionController?.dispose();
    nameController?.dispose();
    sizeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('Blackholes_screen');
                  },
                  child: Text(
                    'Black holes',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 40,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'You are adding a new Balck hole.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: TextFormField(
                        controller: nameController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Name of the black hole',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: TextFormField(
                        controller: descriptionController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Description of the black hole',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        maxLines: 3,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: TextFormField(
                        controller: sizeController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Size of the black hole',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).lineColor,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final blackholesCreateData = createBlackholesRecordData(
                        name: nameController!.text,
                        description: descriptionController!.text,
                        size: int.parse(sizeController!.text),
                      );
                      await BlackholesRecord.collection
                          .doc()
                          .set(blackholesCreateData);

                      context.pushNamed('Blackholes_screen');
                    },
                    text: 'Submit',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
