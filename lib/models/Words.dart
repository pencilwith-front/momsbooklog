import 'package:flutter_tagging/flutter_tagging.dart';

class Words extends Taggable {
  ///
  final String name;
  final String definition;

  /// Creates Language
  Words({
    this.name,
    this.definition,
  });

  @override
  List<Object> get props => [name];

  /// Converts the class to json string.
  String toJson() => '''  {
    "name": $name,\n
    "position": $definition\n
  }''';
}
