void main() {
    String str1 = "Shubham ";
    String str2 = "Bansal";
    print(contactenateStrings(str1, str2));
    print(getIdxOfNonRepChar("geeksforgeeks"));
    print(getIdxOfNonRepChar("aabbccc"));
}

// Add 2 Strings
String contactenateStrings(String str1, String str2) {
    return(str1 + str2);
}

// Find index of first non-repeating character in String
int getIdxOfNonRepChar(String str) {
    Map<String, List<int>> nonRepCharMap = {};
    for (int idx = 0; idx < str.length; idx++) {
        if (nonRepCharMap.containsKey(str[idx])) {
            nonRepCharMap[str[idx]]!.add(idx);
            continue;
        }
        nonRepCharMap[str[idx]] = [idx];
    }
    for (MapEntry mapEntry in nonRepCharMap.entries) {
        if (mapEntry.value.length == 1) {
            return mapEntry.value[0];
        }
    }
    return -1;
}
