public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public String nospace(String word1)
{

}
public boolean palindrome(String word)
{
  String pal = new String();
  String nospace = new String();

  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
      nospace = nospace + word.charAt(i);
    }
  }

  pal = nospace;

  for(int i = word.length()-1; i>=0; i--)
  {
    pal = pal + word.charAt(i);
  }
  if(pal.equals(word))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String rev = new String();
  for(int i = str.length()-1; i>=0; i--)
  {
    rev = rev + str.charAt(i);
  }
  return rev;
}