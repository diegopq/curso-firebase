// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class AppLocalizations {
  AppLocalizations();
  
  static AppLocalizations current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      AppLocalizations.current = AppLocalizations();
      
      return AppLocalizations.current;
    });
  } 

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Hola mundo`
  String get helloWorld {
    return Intl.message(
      'Hola mundo',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `Hola {name}`
  String textoVariable(Object name) {
    return Intl.message(
      'Hola $name',
      name: 'textoVariable',
      desc: '',
      args: [name],
    );
  }

  /// `Hola {name} {lastName}`
  String textoMultiplesVariables(Object name, Object lastName) {
    return Intl.message(
      'Hola $name $lastName',
      name: 'textoMultiplesVariables',
      desc: '',
      args: [name, lastName],
    );
  }

  /// `{qty, plural, zero{No tienes notificaciones} one{Solo tienes 1 notificación} other{Tienes {qty} notificaciones}}`
  String textoPlural(num qty) {
    return Intl.plural(
      qty,
      zero: 'No tienes notificaciones',
      one: 'Solo tienes 1 notificación',
      other: 'Tienes $qty notificaciones',
      name: 'textoPlural',
      desc: '',
      args: [qty],
    );
  }

  /// `Inglés`
  String get english {
    return Intl.message(
      'Inglés',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Español`
  String get spanish {
    return Intl.message(
      'Español',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `Alemán`
  String get german {
    return Intl.message(
      'Alemán',
      name: 'german',
      desc: '',
      args: [],
    );
  }

  /// `Español MX`
  String get mxSpanish {
    return Intl.message(
      'Español MX',
      name: 'mxSpanish',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'MX'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}