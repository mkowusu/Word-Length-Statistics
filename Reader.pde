import java.util.*;
import java.lang.String;

String [] plays = {"Play1-AllsWellThatEndsWell.txt",
                   "Play2-TheTragedyofAntonyandCleopatra.txt",
                   "Play3-AsYouLikeIt.txt",
                   "Play4-TheComedyofErrors.txt",
                   "Play5-TheTragedyofCoriolanus.txt", 
                   "Play6-Cymbeline.txt", 
                   "Play8History-TheFirstPartofKingHenrytheFourth.txt",
                   "Play10History-TheLifeofKingHenrytheFifth.txt", 
                   "Play13History-TheThirdPartofKingHenrytheSixth.txt", 
                   "Play14History-KingHenrytheEighth.txt",
                   "Play18-LovesLabourLost.txt", 
                   "Play22-TheMerryWivesofWindsor.txt",
                   "Play23-AMidsummerNightsDream.txt",
                   "Play25-TheTragedyofOthelloMoorofVenice.txt",
                   "Play27History-KingRichardIII.txt",
                   "Play29-TheTamingoftheShrew.txt",
                   "Play30-TheTempest.txt",
                   "Play33History-TheHistoryofTroilusandCressida.txt",
                   "Play35-TheTwoGentlemanofVerona.txt",
                   "Play36-TheWintersTale.txt"
                 };
String [] sonnets = {"Sonnet1.txt", 
                     "Sonnet17.txt",
                     "Sonnet21.txt",
                     "Sonnet22.txt",
                     "Sonnet24.txt",
                     "Sonnet27.txt",
                     "Sonnet50.txt",
                     "Sonnet59.txt",
                     "Sonnet69.txt",
                     "Sonnet71.txt",
                     "Sonnet80.txt",
                     "Sonnet93.txt",
                     "Sonnet99.txt",
                     "Sonnet100.txt",
                     "Sonnet106.txt",
                     "Sonnet109.txt",
                     "Sonnet117.txt",
                     "Sonnet145.txt",
                     "Sonnet149.txt",
                     "Sonnet154.txt",
                   };

float [] playAverages = new float [20];
float [] sonnetAverages = new float [20];

float Reader (String textFile){

String[] lines = loadStrings(textFile);

String oneString = "";
for (int i = 0; i < lines.length; i++) {
  oneString = oneString + lines[i] + " ";
}

String[] words = split(oneString, " ");

int wordTot = words.length;
int wordLooper = wordTot;

//println(wordTot);
float wordAvg = 0;

String thing = new String(words[0]);

for(int i = 0; i < wordLooper; i++){
  thing = new String(words[i]);
  thing = thing.replaceAll("[^a-zA-Z]", "");
  thing = thing.replaceAll("\\s+", "");
  if(thing.equals(thing.toUpperCase()) && thing.length() > 1){
    //println(thing);
    wordTot--;
  }
   else{
     //println(thing);
    wordAvg += thing.length();
    }
  }
  //println(wordTot);
  //println(wordAvg);

float avg = wordAvg/wordTot;

//println("The average word length of this book is " + avg + ".");

return avg;

}

int Process (String [] play, String [] sonnet) {
// Process the plays
for (int i = 0; i < play.length; i++){
 playAverages[i] = Reader(play[i]);
}

// Process the sonnets
for (int i = 0; i < sonnet.length; i++){
 sonnetAverages[i] = Reader(sonnet[i]);
}
return 1;
}

void setup(){
  int thing = Process(plays, sonnets);
  
    // Display play analysis
for (int i = 0; i < plays.length; i++){
 println("Play Name: " + plays[i]);
 println("Play Mean Word Length: " + playAverages[i] + "\n");
}

// Display sonnet analysis
for (int i = 0; i < plays.length; i++){
 println(sonnets[i]); // Print sonnet number
 println("Sonnet Mean Word Length: " + sonnetAverages[i] + "\n");
  
}
}

void draw(){
  
}

/*float [] playAverages = new float [20];
float [] sonnetAverages = new float [20];

int Process (String [] play, String [] sonnet) {
// Process the plays
for (int i = 0; i < play.length; i++){
 playAverages[i] = Reader(play[i]);
}

// Process the sonnets
for (int i = 0; i < sonnet.length; i++){
 sonnetAverages[i] = Reader(sonnet[i]);
}
}

static String [] plays = {"Play1-AllsWellThatEndsWell.txt","Play2-TheTragedyofAntonyandCleopatra.txt"};
static String [] sonnets = {"Sonnet1.txt", "Sonnet17.txt"};

  int fucker = Process(plays, sonnets);
  
  // Display play analysis
for (int i = 0; i < play.length; i++){
 println("Play Name: " + play[i]);
 println("Play Mean Word Length: " + playAverages);
}

// Display sonnet analysis
for (int i = 0; i < play.length; i++){
 println(sonnet[i]); // Print sonnet number
 println("Sonnet Mean Word Length: " + sonnetAverages);
  
}*/

