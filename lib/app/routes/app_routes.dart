// ignore_for_file: constant_identifier_names
part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const STAMP_DETAILS = _Paths.STAMP_DETAILS;
  static const EDIT_PROFILE = _Paths.EDIT_PROFILE;
  static const DASH = _Paths.DASH;
  static const QR = _Paths.QR;
  static const CHAT = _Paths.CHAT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const STAMP_DETAILS = '/stamp-details';
  static const EDIT_PROFILE = '/edit-profile';
  static const DASH = '/dash';
  static const QR = '/qr';
  static const CHAT = '/chat';
}
