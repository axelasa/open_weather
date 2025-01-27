String extractLanguageCode(String languageString) {
  // Find the index of the first space
  int spaceIndex = languageString.indexOf(' ');

  // If a space is found, extract the substring before the space
  if (spaceIndex != -1) {
    return languageString.substring(0, spaceIndex);
  }

  // If no space is found, return the entire string (or handle as needed)
  return languageString;
}