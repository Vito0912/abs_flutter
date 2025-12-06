// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_de.dart' as messages_de;
import 'messages_en.dart' as messages_en;
import 'messages_fr.dart' as messages_fr;
import 'messages_hr.dart' as messages_hr;
import 'messages_it.dart' as messages_it;
import 'messages_nb.dart' as messages_nb;
import 'messages_nl.dart' as messages_nl;
import 'messages_pt.dart' as messages_pt;
import 'messages_pt_BR.dart' as messages_pt_br;
import 'messages_ru.dart' as messages_ru;
import 'messages_sl.dart' as messages_sl;
import 'messages_ta.dart' as messages_ta;
import 'messages_uk.dart' as messages_uk;
import 'messages_zh.dart' as messages_zh;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'de': () => new SynchronousFuture(null),
  'en': () => new SynchronousFuture(null),
  'fr': () => new SynchronousFuture(null),
  'hr': () => new SynchronousFuture(null),
  'it': () => new SynchronousFuture(null),
  'nb': () => new SynchronousFuture(null),
  'nl': () => new SynchronousFuture(null),
  'pt': () => new SynchronousFuture(null),
  'pt_BR': () => new SynchronousFuture(null),
  'ru': () => new SynchronousFuture(null),
  'sl': () => new SynchronousFuture(null),
  'ta': () => new SynchronousFuture(null),
  'uk': () => new SynchronousFuture(null),
  'zh': () => new SynchronousFuture(null),
};

MessageLookupByLibrary? _findExact(String localeName) {
  switch (localeName) {
    case 'de':
      return messages_de.messages;
    case 'en':
      return messages_en.messages;
    case 'fr':
      return messages_fr.messages;
    case 'hr':
      return messages_hr.messages;
    case 'it':
      return messages_it.messages;
    case 'nb':
      return messages_nb.messages;
    case 'nl':
      return messages_nl.messages;
    case 'pt':
      return messages_pt.messages;
    case 'pt_BR':
      return messages_pt_br.messages;
    case 'ru':
      return messages_ru.messages;
    case 'sl':
      return messages_sl.messages;
    case 'ta':
      return messages_ta.messages;
    case 'uk':
      return messages_uk.messages;
    case 'zh':
      return messages_zh.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) {
  var availableLocale = Intl.verifiedLocale(
    localeName,
    (locale) => _deferredLibraries[locale] != null,
    onFailure: (_) => null,
  );
  if (availableLocale == null) {
    return new SynchronousFuture(false);
  }
  var lib = _deferredLibraries[availableLocale];
  lib == null ? new SynchronousFuture(false) : lib();
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new SynchronousFuture(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(String locale) {
  var actualLocale = Intl.verifiedLocale(
    locale,
    _messagesExistFor,
    onFailure: (_) => null,
  );
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
