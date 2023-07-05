class FormColorsKeys {
  static Colors colors = const Colors();
  static ColorsComposition colorsComposition = const ColorsComposition();
}

class Colors {
  const Colors();
  String get form => 'formColors';
  String get ticketFields => 'ticketFields';
  String get color => 'color';
  String get name => 'name';
  String get code => 'code';
  String get description => 'description';
  String get numberOfColorsFields => 'numberOfColorsFields';
}

class ColorsComposition {
  const ColorsComposition();
  String get form => 'formColorsComposition';
  String get colorsFields => 'colorsOfCompositionFields';
}
