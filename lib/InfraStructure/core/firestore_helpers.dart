import 'package:cloud_firestore/cloud_firestore.dart' as fireStore;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:todo_app/Domain/core/errors.dart';
import 'package:todo_app/InfraStructure/auth/firebase_auth_facade.dart';

class FireStoreHelper {
  FirebaseFirestore _firestore;
  FireStoreHelper(this._firestore);
  dynamic getCurrentUserDocument() {
    var userOption = FirebaseAuthFacade(FirebaseAuth.instance, GoogleSignIn())
        .getSignedInUser();
    var user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return _firestore
        .collection('users')
        .doc(user!.id!.getOrCrash());
  }

   fireStore.CollectionReference  getNotesCollection() {
     return getCurrentUserDocument().collection('notes');
  }
}
