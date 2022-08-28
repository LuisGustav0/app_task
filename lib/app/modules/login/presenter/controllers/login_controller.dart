import 'package:app_task/app/core/routers/app_router.dart';
import 'package:app_task/app/core/user/user_auth.dart';
import 'package:asuka/asuka.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @observable
  bool isLoading = false;

  @action
  void setIsLoading(bool value) {
    isLoading = value;
  }

  @action
  Future<void> onLoginFailure({String? message}) async {
    AsukaSnackbar.warning(message ?? 'Falha ao logar!').show();
  }

  @action
  Future<void> login() async {
    try {
      setIsLoading(true);

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      final GoogleSignInAuthentication? _googleAuth =
          await googleUser?.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: _googleAuth?.idToken,
        accessToken: _googleAuth?.accessToken,
      );

      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(authCredential);

      final User? userAuth = userCredential.user;
      final String? name = userAuth?.displayName;
      final String? email = userAuth?.email;
      final String? picture = userAuth?.photoURL;
      final String? token = await userAuth?.getIdToken();

      UserAuth.instance.add(
        name: name!,
        email: email!,
        token: token!,
        picture: picture,
      );

      Modular.to.pushNamed(AppRouter.HOME);
    } on Exception catch (error) {
      await onLoginFailure(message: error.toString());
    } catch (error) {
      await onLoginFailure(message: error.toString());
    } finally {
      setIsLoading(false);
    }
  }

  @action
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();

    UserAuth.instance.clear();

    Modular.to.pushNamedAndRemoveUntil(AppRouter.LOGIN, (_) => false);
  }
}
