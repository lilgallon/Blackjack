// Pour le son (library = minim)
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer hit;
AudioPlayer gg;
AudioPlayer ambiance;

//Tout ce qui conserne les états du jeu
final int EXTRA=2;
final int ACCUEIL=0;
final int OPTIONS=1;
final int EN_COURS = 10;
final int PAUSE = 20;
final int FINI = 30;
final int CHOIX = 11;
final int MISE = 12;
int etatJeu = ACCUEIL;

// Initialisation
boolean findepartie=false;
boolean coucher = false;
boolean appliquer=false;

// Indique que le nombre de parties est égal à 1
int parties = 1;

// Déclare les tableaux
int paquet[] = new int [52];
int cartesTirees[] = new int [40];
int choixas[] = new int [5]; // tableau avec les choix d'as
int carte[] = new int [5];

// Déclare les variables image
PImage jeton ;
PImage jeton2 ;
PImage jetonC ;
PImage billets;
PImage hitm;
PImage fond;

// Déclare lles variables qui vont être chargées avec le menu options
int son;
int ecran;
int argent1;
int argent2;
int argent3;
int compte;

// Les polices d'écriture
PFont menu;
PFont classic;

// Pour la rotation au menu
float rotation = 0;

// Ce qui concerne la partie
int victoire;                 
int cartesC=0;
int cartesJ;
boolean partiecommence=true;
int mainJ = 1;
int etatfin;
boolean quitter=false;
int scoreC =0;
int scoreJ =0;
int joueur;
int rang=0;
int rangas;
int carte1;
int carte2;
boolean demandecarte=false;
int mise;
int argent;
int numPartie; //numéro de la partie en cours

// Variable pour la génération du paquet
int c=0; 

// Variables qui permettent de faire qu'une fois une action (limite)
int limiteur=1;
int limiteur2=0;

// Ce qui concerne l'iA
int iA=1;
boolean finc;

// Le compteur pour le son
int x=599;


void reinitialisation() {
  quitter=false;
  // Reinitialise le choix de l'as 
  choixas[0] = 0;
  choixas[1] = 0;
  choixas[2] = 0;
  choixas[3] = 0;
  choixas[4] = 0;
  // Reinitialise les cartes 
  carte[0] = 0;
  carte[1] = 0;
  carte[2] = 0;
  carte[3] = 0;
  carte[4] = 0;
  // Réinitialisation du paquet
  creationPaquet();
  creationTirees();
  // Réinitialisation total mains
  cartesC = 0;
  cartesJ = 0;
  mainJ = 1;
  // Réinitialisation du rang (as)
  rang = 0;
  // Nombre de parties
  parties ++;
  // Indique le démarrage de la partie
  partiecommence=true;

  limiteur =1;
}

// La fonction qui initialise le paquet
void creationPaquet() {
  for (int i =0; i<52; i++) {
    paquet[i] = (i/13+1)*100+(i%13+1);
  }
}

// La fonction qui prend les cartes mélangées et les mets dans un tableau de 40 cases
void creationTirees() {
  for (int i = 0; i < 40; i ++) {
    //crée un tableau ou on stocke des cartes du paquets aléatoires
    cartesTirees[i] = pioche();
  }
}

// La fonction qui permet de mélanger la pioche
int pioche() {                          
  int a =0;
  int b =0;
  while (b <52) {
    a = int(random(0, 52));
    if (paquet[a] !=1) {
      c = paquet[a];
      paquet[a] = 1;
      b = 52;
    } else {
      b ++;
    }
  }
  return  c;
}


// La fonction qui renvoie la valeur d'une carte piochée pour le joueur
int valeurCarteJ(int cartesTirees) { 
  if (cartesTirees%100 == 11 || cartesTirees%100 == 12 ||cartesTirees%100 == 13) {
    return 10;
  } else {
    return cartesTirees%100;
  }
}

// La fonction qui renvoie la valeur d'une carte piochée pour le croupier
int valeurCarteC(int cartesTirees, int cartesC) {
  if (cartesTirees%100 == 11 || cartesTirees%100 == 12 ||cartesTirees%100 == 13) {
    return 10;
  } else if (cartesTirees%100 == 1) {
    if (11+cartesC <=21) {
      return 11;
    } else {
      return 1;
    }
  } else {
    return cartesTirees%100;
  }
}

boolean overRect(double x, double y, double largeur, double hauteur) { // OK
  if (pmouseX >= x && pmouseX <= x+largeur && 
    pmouseY >= y && pmouseY <= y+hauteur) {
    return true;
  } else {
    return false;
  }
}

// La fonction qui choisit de prendre une carte en fonction du niveau de l'iA
int Croupier() {
  finc=false;
  int cartesC = 0;
  cartesC = valeurCarteC(cartesTirees[19], cartesC);
  cartesC = valeurCarteC(cartesTirees[20], cartesC) + cartesC;
  int mainC = 2;
  if(iA==1){
  while (cartesC <16) {
    mainC ++;
    cartesC = cartesC + valeurCarteC(cartesTirees[18 + mainC], cartesC);
  }
  return  cartesC;
  }else{
    while(finc==false){
    mainC ++;
    if (cartesC + valeurCarteC(cartesTirees[18 + mainC], cartesC)<=21){
    cartesC = cartesC + valeurCarteC(cartesTirees[18 + mainC], cartesC);
    }else{finc=true;}
    }
    return cartesC;
  }
}


void settings() {
  // Chargement des fichiers .txt
  String[] compteSTRING = loadStrings("/data/compte.txt");
  compte = int(compteSTRING[0]);
  String[] ecranSTRING = loadStrings("/data/ecran.txt");
  ecran = int(ecranSTRING[0]);

  String[] argentSTRING1 = loadStrings("/data/argent1.txt");
  argent1 = int(argentSTRING1[0]);
  String[] argentSTRING2 = loadStrings("/data/argent2.txt");
  argent2 = int(argentSTRING2[0]);  
  String[] argentSTRING3 = loadStrings("/data/argent3.txt");
  argent3 = int(argentSTRING3[0]); 

  String[] sonSTRING = loadStrings("son.txt");
  son = int(sonSTRING[0]);  
  
  // Chnage la résolution en fonction des options
  if (ecran==1) {
    fullScreen();
  } else {
    size(1280, 720);
  }
}


void draw() {
  controlerAffichage();
  // Compte jusqu'à 600 pour 10 secondes, pour le son en fond
    x ++;
  if(x==60*10 && son==1){
    ambiance.play(0);
    x=0;
  }
}

void keyPressed() {
  controlerJeuClavier();
}

void mousePressed() {
  controlerJeuSouris();
  image(hitm, mouseX-35, mouseY-35);
  // SOn du clic
  if (son==1) {
    hit.play(0);
  }
  /*
  if (mouseX!=0 && mouseY!=0) {
    println(width/mouseX+","+width%mouseX+" "+height/mouseY+","+height%mouseY); //aide pour chercher des valeurs pour du positionnement(hitbox, image...)
  }
  */
}

  
void setup() { 
  frameRate(60);
  
  creationPaquet();
  creationTirees();
  
  // Chargement des images
  jeton = loadImage("jeton.png");
  jeton2 = loadImage("jeton2.png");
  jetonC = loadImage("jetonC.png");
  billets = loadImage("billets.jpeg");
  fond = loadImage("fond.png");
  hitm = loadImage("hit.png");
  
  // Recadrage des images
  jeton.resize(width/2, width/2);
  jeton2.resize(height/3, height/3);
  billets.resize(width, height);
  hitm.resize(70, 70);
  
  // Test pour vérifier si le fichier en ligne est dispo, si oui, sauvegarde dans un fichier local
 if (loadStrings("http://n3rosoftwares.pagesperso-orange.fr/versions/versionBJ.txt")==null) {
   println("Lien online innacessible");
 }else{
   println("Lien online accessible");
   saveStrings("/data/versionOnline.txt", loadStrings("http://n3rosoftwares.pagesperso-orange.fr/versions/versionBJO.txt"));
 }
  
  // Les polices d'écriture
  menu = loadFont("AlienEncounters-48.vlw");
  classic = loadFont("classic.vlw");

  // Chargement des sons
  minim = new Minim(this);
  gg = minim.loadFile("bj.wav");
  hit = minim.loadFile("hit.mp3");
  ambiance = minim.loadFile("casino.mp3");


  // Charge l'argent en fonction du compte selectionné
  if (compte==1) {
    argent = argent1;
  }
  if (compte==2) {
    argent = argent2;
  }
  if (compte==3) {
    argent = argent3;
  }

  // Initialisation de toutes les cartes (images)
  for(int u = 100; u < 500;u=u+100){
    for (int i = 1; i < 14; i++){
    imgs[u+i] = loadImage(u+i+".png");

    }
  }
}

PImage[] imgs = new PImage[500];

// Reset un fichier .txt
void resetTXT(String txt) {
  String words = "   ";                                                
  String[] empty = split(words, " ");
  saveStrings("/data/"+txt, empty);
}

// Fonction pour écrire
void ecrire(String ecrire, String txt) {                                            
  String[] write = split(ecrire, " ");
  saveStrings("/data/"+txt, write);
}