part of 'theme.dart';

class Themes {
  // light theme
  static ThemeData get light {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      textTheme: ThemeData.light()
          .textTheme
          .apply(fontFamily: GoogleFonts.inter().fontFamily),
    );
  }

  // dark theme
  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      textTheme: ThemeData.dark()
          .textTheme
          .apply(fontFamily: GoogleFonts.inter().fontFamily),
    );
  }
}
