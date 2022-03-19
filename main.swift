/*
Space = 3 spaces
*/
// enter messages

var encrypt = "look for the north star"
var decrypt = ".--. .-.. . .- ... .   .... . .-.. .--.   -- ."

// encrypt

var alphaToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--",
  "'": ".----."
]
var encryptText = ""
for alpha in encrypt {
  if let morseChar = alphaToMorse["\(alpha)"]{
    encryptText += morseChar + " "
  } else{
  encryptText+="  "
}
}
  print(encryptText)

//decrypt

var decryptedMsg = ""
var morse = ""
var arrayMorse = [String]()
for char in decrypt {

  if char != " " {
 
  morse.append(char)
  } else {
switch morse {
 case "": 
 morse += " "
 case " ":
 arrayMorse.append(" ")
 morse = ""
 default:    
 arrayMorse.append(morse)
 morse = ""
}
}
}
arrayMorse.append(morse)
var morseToAlpha: [String: String] = [:]
for (letter,morseChar) in alphaToMorse{
  morseToAlpha[morseChar] = letter
}
for morseValue in arrayMorse { 
  if let alphaChar = morseToAlpha[morseValue]{
    decryptedMsg += alphaChar
  } else {
    decryptedMsg += " "
  }
}
print (decryptedMsg)