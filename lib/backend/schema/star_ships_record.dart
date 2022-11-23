import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'star_ships_record.g.dart';

abstract class StarShipsRecord
    implements Built<StarShipsRecord, StarShipsRecordBuilder> {
  static Serializer<StarShipsRecord> get serializer =>
      _$starShipsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Size')
  int? get size;

  @BuiltValueField(wireName: 'Kilometers')
  int? get kilometers;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StarShipsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..size = 0
    ..kilometers = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('StarShips');

  static Stream<StarShipsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StarShipsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StarShipsRecord._();
  factory StarShipsRecord([void Function(StarShipsRecordBuilder) updates]) =
      _$StarShipsRecord;

  static StarShipsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStarShipsRecordData({
  String? name,
  String? description,
  int? size,
  int? kilometers,
}) {
  final firestoreData = serializers.toFirestore(
    StarShipsRecord.serializer,
    StarShipsRecord(
      (s) => s
        ..name = name
        ..description = description
        ..size = size
        ..kilometers = kilometers,
    ),
  );

  return firestoreData;
}
