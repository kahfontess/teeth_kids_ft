import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotosRecord extends FirestoreRecord {
  FotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fotos');

  static Stream<FotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FotosRecord.fromSnapshot(s));

  static Future<FotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FotosRecord.fromSnapshot(s));

  static FotosRecord fromSnapshot(DocumentSnapshot snapshot) => FotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FotosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createFotosRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}
