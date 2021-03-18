// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  static m0(name, lastName) => "Hola ${name} ${lastName}";

  static m1(qty) => "${Intl.plural(qty, zero: 'No tienes notificaciones', one: 'Solo tienes 1 notificación', other: 'Tienes ${qty} notificaciones')}";

  static m2(name) => "Hola ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "english" : MessageLookupByLibrary.simpleMessage("Inglés"),
    "german" : MessageLookupByLibrary.simpleMessage("Alemán"),
    "helloWorld" : MessageLookupByLibrary.simpleMessage("Hola mundo"),
    "mxSpanish" : MessageLookupByLibrary.simpleMessage("Español MX"),
    "spanish" : MessageLookupByLibrary.simpleMessage("Español"),
    "textoMultiplesVariables" : m0,
    "textoPlural" : m1,
    "textoVariable" : m2
  };
}
