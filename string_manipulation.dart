void main() {
    String str1 = "Shubham ";
    String str2 = "Bansal";
    print(contactenateStrings(str1, str2));
    print(getIdxOfNonRepChar("geeksforgeeks"));
    print(getIdxOfNonRepChar("aabbccc"));
    countCharDigitsSp("Welcome to w3resource.com");
    maximumNumberOfChars("Welcome to w3resource.com");
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

// Count total numbers of chars, digits & special characters
void countCharDigitsSp(String s1) {
    int countChar = 0;
    int countDigit = 0;
    int countSpChar = 0;
   
   for(int idx = 0; idx < s1.length; idx++) {
       int asciiVal = s1[idx].codeUnits[0];
       if ((asciiVal >= 65 && asciiVal <= 90) || (asciiVal >= 97 && asciiVal <= 122)) {
           countChar++;
       } else if (asciiVal >= 48 && asciiVal <= 57) {
           countDigit++;
       } else {
           countSpChar++;
       }
   }
   print("Alphabets: $countChar");
   print("Digits: $countDigit");
   print("Sp. Chars: $countSpChar");
}

// Void frequently occurred character & its frequency
maximumNumberOfChars(String s1) {
    Map<String, int> freq = {};
    for (int idx = 0; idx < s1.length; idx++) {
        if (freq.containsKey(s1[idx])) {
            freq[s1[idx]] = freq[s1[idx]]! + 1;
            
        } else {
            freq[s1[idx]] = 0;
        }
    }
    int maxFreq = -1;
    String char = '';
    for (MapEntry mapEntry in freq.entries) {
        if (mapEntry.value > maxFreq) {
            maxFreq = mapEntry.value;
            char = mapEntry.key;
        }
    }
    print("Char: $char, frequency: $maxFreq");
}
