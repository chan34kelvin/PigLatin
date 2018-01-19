public void setup() 
{
	String[] lines= {"curn","usuckdick","quick","quicy","aeiou","star","fuck"};
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
    for(int i = 0; i < sWord.length(); i++){
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u'){
      return i;
    }
    if(sWord.substring(0,2).equals("qu")){
      return 3;
    }
    }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
  if(findFirstVowel(sWord) == 0){
    return sWord +"way";
  }
  if(findFirstVowel(sWord) == 3){
    return sWord.substring(2)+"qu";
  }
  if(findFirstVowel(sWord) >=1){
    return sWord.substring(1)+sWord.substring(0,1)+"ay";
  }
	else
	{
		return "ERROR!";
	}
}
