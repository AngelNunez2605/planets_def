import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blackholes_record.g.dart';

abstract class BlackholesRecord
    implements Built<BlackholesRecord, BlackholesRecordBuilder> {
  static Serializer<BlackholesRecord> get serializer =>
      _$blackholesRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Size')
  int? get size;

  @BuiltValueField(wireName: 'Photo')
  String? get photo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlackholesRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..size = 0
    ..photo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blackholes');

  static Stream<BlackholesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlackholesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlackholesRecord._();
  factory BlackholesRecord([void Function(BlackholesRecordBuilder) updates]) =
      _$BlackholesRecord;

  static BlackholesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlackholesRecordData({
  String? name,
  String? description,
  int? size,
  String? photo,
}) {
  final firestoreData = serializers.toFirestore(
    BlackholesRecord.serializer,
    BlackholesRecord(
      (b) => b
        ..name = name
        ..description = description
        ..size = size
        ..photo = photo,
    ),
  );

  return firestoreData;
}
