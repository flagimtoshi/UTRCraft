///scr_build_struc_from_file( x, y, filename );
/*---------------------------------------------------------------------------------------



                      /!\  Nicht fertig, nur im Weltbau nutzen  /!\
     (oder NUR!!!)



---------------------------------------------------------------------------------------*/
obj_player.stoprender=1; // beendet das Render

var xxx = argument0;//   wo die Struktur
var yyy = argument1;//   gebaut werden soll

var file = argument2;
if file=0{
get_open_filename(""    // Datei laden
,"test.struct");
}

ini_open(file); // Datei lesen

wallins=ini_read_real("Extras","Walls",0) // Anzahl der Objecte
var i; // index des Objectes
var xx, yy; // x und y coordinaten
var pxx, pyy; // nächsten x und y coordinaten

i=wallins

/*while (i>0){
xx=ini_read_real("Map","wallx"+string(i),0) // liest die coordinaten von jetzt
yy=ini_read_real("Map","wally"+string(i),0)

if i-1!=0{
pxx=ini_read_real("Map","wallx"+string(i-1),0) // liest die coordinaten von später
pyy=ini_read_real("Map","wally"+string(i-1),0)
}else{
pxx=pxx; // nichts
pyy=pyy;
}

//if place_meeting(xxx+xx,yyy+yy,obj_solid){  // Checkt Kollision
//instance_create(xxx+xx,yyy+yy,obj_nova_des);} //Wenn Kollision dann boom
instance_create(xxx+xx,yyy+yy,obj_nova_des);
instance_create(xxx+pxx,yyy+pyy,obj_nova_des);

i-=1;
}

i=wallins*/

while (i>0){

xx=ini_read_real("Map","wallx"+string(i),0) // liest die coordinaten von jetzt
yy=ini_read_real("Map","wally"+string(i),0)

if i-1!=0{
pxx=ini_read_real("Map","wallx"+string(i-1),0) // liest die coordinaten von später
pyy=ini_read_real("Map","wally"+string(i-1),0)
}else{
pxx=pxx; // nichts
pyy=pyy;
}

insts=ini_read_real("Map","wallprp"+string(i),0) // liest den Index und übersetzt ihn
BSTrans=BlockSave[insts];

if (wallins = i){ // Der Reparatur Script der mir meine Träume eine gute Person zu sein erfüllt
   
    instance_activate_region(xxx+xx-8,yyy+yy-8,xxx+xx+16,yyy+yy+16,1);
    if place_meeting(xxx+xx,yyy+yy,obj_solid){  // Checkt Kollision
    instance_create(xxx+xx,yyy+yy,obj_nova_des);} //Wenn Kollision dann boom
    // Fertigt die Region fürs Bauen an
    
}else{

    instance_activate_region(xxx+pxx-8,yyy+pyy-8,xxx+pxx+16,yyy+pyy+16,1);
    if place_meeting(xxx+pxx,yyy+pyy,obj_solid){  // Checkt Kollision
    instance_create(xxx+pxx,yyy+pyy,obj_nova_des);} //Wenn Kollision dann boom
    // Fertigt die nächste Region fürs Bauen an
    ioo=instance_create(xxx+xx,yyy+yy,BSTrans); // setzt Block der geholt wird

}

i-=1; // ein Index weniger (nächstes Object)

}

ini_close(); // fixst memory leaks und säubert das Code
obj_player.stoprender=0;  //startet das Render erneut
