import processing.core.PApplet;

public class Sketch extends PApplet {
  public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");
    for (int i=0; i < lines.length; i++) 
    {
      noCapitals(lines[i]);
      noSpaces(lines[i]);
      onlyLetters(lines[i]);
      if(palindrome(onlyLetters(noSpaces(noCapitals(lines[i]))))==true)
      {
        System.out.println(lines[i] + " IS a palindrome.");
      }
      else
      {
        System.out.println(lines[i] + " is NOT a palindrome.");
      }
    }
  }
  public boolean palindrome(String last)
  {
  String backwards = reverse(last);
  if (last.equals(backwards)) {
    return true;
  }
  else return false;
  }

  public String reverse(String last)
  {
    String s = "";
    for (int i = last.length(); i > 0; i--) {
      s = s + last.substring(i-1,i);
    }
  return s;
  }

  public String noCapitals(String word){
    return word.toLowerCase();
  }

  public String noSpaces(String word){
  String noSpace = "";
  for (int i = 0; i < word.length(); i++) {
    if (word.charAt(i) != ' ') {
      noSpace = noSpace + word.charAt(i);
    }
  }
  return noSpace;
  }
  
  public String onlyLetters(String noSpace){
  String letter = "";
  for (int i = 0; i < noSpace.length(); i++) {
    if (Character.isLetter(noSpace.charAt(i)) == true) {
      letter = letter + noSpace.charAt(i);
    }
  }
  return letter;
  }
}
