///check_string_cursewords_english( string );

textt=argument0
numberofwords=8
wordind=0


curseword[0]="fuck";replacement[0]="luck";
curseword[1]="shit";replacement[1]="nono";
curseword[2]="bitch";replacement[2]="glitch";
curseword[3]="gay";replacement[3]="nae";
curseword[4]="futa";replacement[4]="no";
curseword[5]="penis";replacement[5]="groin";
curseword[6]="piss";replacement[6]="urine";
curseword[7]="ass";replacement[7]="behind";
curseword[8]="dick";replacement[8]="doofus";
curseword[9]="nigga";replacement[9]="lenny";
curseword[10]="nigger";replacement[10]="lenny";


repeat(numberofwords){
   
    textt=string_replace_all(textt,curseword[wordind],replacement[wordind]);//only lower case . _.
    if not (wordind==(numberofwords-1))
    {
        wordind+=1;
    }

}
return textt
