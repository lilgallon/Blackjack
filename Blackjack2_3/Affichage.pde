void controlerAffichage() {
  switch(etatJeu) {

  case ACCUEIL :
  // Si l'iA est facile, la mise par défaut est de 5, autrement, elle est de 50
  if(iA==1){
    mise = 5;
  }else{
    mise = 50;
  }
   // Initialisation du limiteur
    limiteur2=0;
    // Fond
    image(billets, 0, 0);
    
    // Rotation du jeton
    pushMatrix();
    translate(width/2,height/2);
    rotate(rotation);
    rotation = rotation + 0.02;
    image(jeton, -jeton.width/2, -jeton.height/2);
    popMatrix();
    imageMode(CORNER);
    
    // Affichage des deux jetons "extra" et "option"
    image(jeton2, 0, 2*height/3);
    image(jeton2, width-height/3, 2*height/3);

    
    String text="JOUER";
    String text2="QUITTER";
    // Dynamisme des boutons
    noStroke();
    if (overRect(width/2.5, height/3, width/5, height/6)==true) {
      fill(255, 0, 0);
      rect(width/2.5, height/3, width/5, height/5.9, 7);     
      fill(255);
      textFont(menu, width/20);
      text(text, width/2.4, height/2.23);
    } else {
      fill(255);
      rect(width/2.5, height/3, width/5, height/6, 7);     
      fill(255, 0, 0);
      textFont(menu, width/20);
      text(text, width/2.4, height/2.23);
    }

    if (overRect(width/2.5, height/1.9, width/5, height/6)==true) {
      textFont(menu);
      fill(255, 0, 0);
      rect(width/2.5, height/1.9, width/5, height/6, 7);
      fill(255);
      textSize(width/25);
      text(text2, width/2.4, height/1.57);
    } else {
      textFont(menu);
      fill(255, 255, 255);
      rect(width/2.5, height/1.9, width/5, height/6, 7);   
      fill(255, 0, 0);
      textSize(width/25);
      text(text2, width/2.4, height/1.57);
    }
    stroke(0);

    // Bouton extra
    fill(0);
    textSize(width/30);
    rect(width/26, height/1.23, textWidth("extra"), textAscent()-textDescent());
    // Dynamisme du jeton extra
    if (overRect(width/26, height/1.23, textWidth("extra"), textAscent()-textDescent())) {
      image(jetonC, 0, 2*height/3, height/3, height/3);
    } else {
      image(jeton2, 0, 2*height/3);
    }
    fill(255);
    text("Extra", width/26, height/1.17);

    // Bouton options
    fill(0);
    textSize(width/36);
    rect(width/1.177, height/1.22, textWidth("options"), textAscent()-textDescent()); 
    // Dynamisme du jeton options
    if (overRect(width/1.177, height/1.22, textWidth("options"), textAscent()-textDescent())) {
      image(jetonC, width-height/3, 2*height/3, height/3, height/3);
    } else {
      image(jeton2, width-height/3, 2*height/3);
    }
    fill(255);
    text("options", width/1.177, height/1.17);
    
    // Affichage en haut à gauche et vérification de la version
    String versionLocale[] = loadStrings("versionLocale.txt");
    String versionOnline[] = loadStrings("versionOnline.txt");
    textFont(classic);
    textSize(width/50);
    text(versionOnline[0],width/50,height/30);
    if(int(versionLocale[0])!=int(versionOnline[2])){
    text(versionOnline[1],width/50,height/15);
    }else{
    text(versionOnline[3],width/50,height/15); 
    }

    break;

  case MISE:
    
    // Fond
    image(billets, 0, 0);
    
    // Rotation
    pushMatrix();
    translate(width/2,height/2);
    rotate(rotation);
    rotation = rotation + 0.02;
    image(jeton, -jeton.width/2, -jeton.height/2);
    popMatrix();
    
    image(jeton2, 0, 2*height/3);
    image(jeton2, width-height/3, 2*height/3);

    String text5="MISER  5";
    String text6="RETIR. 5";
    String text7="iA Normal";
    String text8="iA Extreme";
    // Dynamisme des boutons
    noStroke();
    if (overRect(width/2.5, height/3, width/5, height/6)==true) {
      fill(255, 0, 0);
      rect(width/2.5, height/3, width/5, height/5.9, 7);     
      fill(255);
      textFont(menu, width/20);
      textSize(width/25);
      text(text5, width/2.4, height/2.23);
    } else {
      fill(255);
      rect(width/2.5, height/3, width/5, height/6, 7);     
      fill(255, 0, 0);
      textFont(menu, width/20);
      textSize(width/25);
      text(text5, width/2.4, height/2.23);
    }

    if (overRect(width/2.5, height/1.9, width/5, height/6)==true) {
      textFont(menu);
      fill(255, 0, 0);
      rect(width/2.5, height/1.9, width/5, height/6, 7);
      fill(255);
      textSize(width/25);
      text(text6, width/2.4, height/1.57);
    } else {
      textFont(menu);
      fill(255, 255, 255);
      rect(width/2.5, height/1.9, width/5, height/6, 7);   
      fill(255, 0, 0);
      textSize(width/25);
      text(text6, width/2.4, height/1.57);
    }
    stroke(0);
    
    if (overRect(width/55, height/32, width/4.5, height/10)==true || iA==1) {
      fill(255, 0, 0);
      rect(width/55, height/32, width/4.5, height/10, 7);     
      fill(255);
      textFont(menu, width/20);
      textSize(width/25);
      text(text7, width/50, height/10);
    } else {
      fill(255);
      rect(width/55, height/32, width/4.5, height/10, 7);     
      fill(255, 0, 0);
      textFont(menu, width/20);
      textSize(width/25);
      text(text7, width/50, height/10);
    }

    if (overRect(width/55, height/6, width/4.2, height/10)==true || iA==2) {
      fill(255, 0, 0);
      rect(width/55, height/6, width/4.2, height/10, 7);     
      fill(255);
      textFont(menu, width/20);
      textSize(width/25);
      text(text8, width/50, height/4);
    } else {
      fill(255);
      rect(width/55, height/6, width/4.2, height/10, 7);     
      fill(255, 0, 0);
      textFont(menu, width/20);
      textSize(width/25);
      text(text8, width/50, height/4);
    }
    textSize(width/50);
    text("iA extreme: mise x 10",width/47,height/3.3);

    // Affiche la mise, RECUP du bouton extra a changer
    fill(0);
    textSize(width/36);
    rect(width/26, height/1.23, textWidth("retour"), textAscent()-textDescent());
    if (overRect(width/26, height/1.23, textWidth("retour"), textAscent()-textDescent())) {
      image(jetonC, 0, 2*height/3, height/3, height/3);
    } else {
      image(jeton2, 0, 2*height/3);
    }
    fill(255);
    text("retour", width/26, height/1.17);

    //bouton pour lancer partie
    fill(0);
    textSize(width/36);
    rect(width/1.177, height/1.22, textWidth("jouer"), textAscent()-textDescent()); 
    if (overRect(width/1.177, height/1.22, textWidth("jouer"), textAscent()-textDescent())) {
      image(jetonC, width-height/3, 2*height/3, height/3, height/3);
    } else {
      image(jeton2, width-height/3, 2*height/3);
    }
    fill(255);
    text("jouer", width/1.162, height/1.17);

    //affiche argent total
    fill(255);
    rect(width/1.177, height/4.22, textWidth("jouer"), textAscent()-textDescent()); 
    if (overRect(width/1.177, height/1.22, textWidth("jouer"), textAscent()-textDescent())) {
      image(jetonC, width-height/3, 0, height/3, height/3);
    } else {
      image(jeton2, width-height/3, 0);
    }
    fill(255);
    textSize(width/45);
    text("Compte:", width/1.162, height/6.5);
    textSize(width/45);
    text(argent+" CR", width/1.14, height/4.60);

    //affiche mise
    fill(0);
    textSize(width/36);
    //rect(width/1.177,height/1.22,textWidth("Mise:"),textAscent()-textDescent()); 
    if (overRect(width/1.177, height/1.22, textWidth("Mise:"), textAscent()-textDescent())) {
      image(jetonC, width-height/3, height/3, height/3, height/3);
    } else {
      image(jeton2, width-height/3, height/3);
    }
    fill(255);
    textSize(width/45);
    text("Mise:", width/1.136, height/2.06);
    textSize(width/45);
    text(mise+" CR", width/1.13, height/1.82);

    break;

  case OPTIONS:

    // Refresh les valeurs des docs txt
    String[] argentSTRING1 = loadStrings("/data/argent1.txt");
    argent1 = int(argentSTRING1[0]);
    String[] argentSTRING2 = loadStrings("/data/argent2.txt");
    argent2 = int(argentSTRING2[0]);  
    String[] argentSTRING3 = loadStrings("/data/argent3.txt");
    argent3 = int(argentSTRING3[0]); 

    background(255);
    textFont(classic);
    fill(0);
    text("Resolution:", width/50, height/10);
    text("Compte:", width/50, height/5);
    text("Son:", width/50, height/3.1);

    if (appliquer==true) {
      textSize(width/45);
      text("Vous devez redémarrer le programme pour appliquer les changements de résolution", width/40, height/1.5);
    }
    textFont(classic);

    if (overRect(width/4, height/30, textWidth("RESOLUTION"), width/20)==true || ecran==1) {
      fill(150);
      rect(width/4, height/30, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Plein écran", width/3.7, height/10);
    } else if (overRect(width/4, height/30, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/4, height/30, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Plein écran", width/3.7, height/10);
    }

    if (ecran==2 || overRect(width/2, height/30, textWidth("RESOLUTION"), width/20)==true) {
      fill(150);   
      rect(width/2, height/30, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Fenêtré", width/1.85, height/10);
    } else if (overRect(width/2, height/30, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);   
      rect(width/2, height/30, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Fenêtré", width/1.85, height/10);
    }

    if ( overRect(width/1.34, height/30, textWidth("RESOLUTION"), width/20)==true) {
      fill(150);   
      rect(width/1.34, height/30, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Appliquer", width/1.32, height/10);
    } else if (overRect(width/1.34, height/30, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);   
      rect(width/1.34, height/30, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Appliquer", width/1.32, height/10);
    }

    if (compte==1 || overRect(width/4, height/7, textWidth("RESOLUTION"), width/20)==true && compte!=1) {
      fill(150);
      rect(width/4, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("#1: "+argent1+"CR", width/3.8, height/4.8);
    } else if (overRect(width/4, height/7, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/4, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("#1: "+argent1+"CR", width/3.8, height/4.8);
    }

    if (compte==2 || overRect(width/2, height/7, textWidth("RESOLUTION"), width/20)==true && compte!=2) {
      fill(150);
      rect(width/2, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("#2: "+argent2+"CR", width/1.98, height/4.8);
    } else if (overRect(width/2, height/7, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/2, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("#2: "+argent2+"CR", width/1.98, height/4.8);
    }

    if (compte ==3 || overRect(width/1.34, height/7, textWidth("RESOLUTION"), width/20)==true && compte !=3) {
      fill(150);
      rect(width/1.34, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("#3: "+argent3+"CR", width/1.32, height/4.8);
    } else if (overRect(width/1.34, height/7, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/1.34, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("#3: "+argent3+"CR", width/1.32, height/4.8);
    }

    if (overRect(width/1.34, height/1.3, textWidth("RETOUR"), width/20)==true) {
      fill(150);
      rect(width/1.34, height/1.3, textWidth("RETOUR"), width/20);
      fill(255);
      text("RETOUR", width/1.34, height/1.2);
    } else if (overRect(width/1.34, height/1.3, textWidth("RETOUR"), width/20)==false) {
      fill(0);
      rect(width/1.34, height/1.3, textWidth("RETOUR"), width/20);
      fill(255);
      text("RETOUR", width/1.34, height/1.2);
    }

    if (overRect(width/4, height/3.85, textWidth("RESOLUTION"), width/20)==true || son==1 && son!=0) {
      fill(150);
      rect(width/4, height/3.85, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Activer", width/3.8, height/3.05);
    } else if (overRect(width/4, height/3.85, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/4, height/3.85, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Activer", width/3.8, height/3.05);
    }

    if (overRect(width/2, height/3.85, textWidth("RESOLUTION"), width/20)==true || son==0 && son!=1) {
      fill(150);
      rect(width/2, height/3.85, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Desactiver", width/2, height/3.05);
    } else if (overRect(width/2, height/3.85, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/2, height/3.85, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Desactiver", width/2, height/3.05);
    } 

    break;
    
  case EXTRA:
     background(255);
    textFont(classic);
    fill(0);
    text("Règles: Vous recevez 2 cartes au début d'une manche.", width/55, height/10);
    text("Vous aurez le choix entre 'Prendre' et 'Garder'.", width/55, height/6); 
    text("Vous devez avoir le maximum possible sans dépasser 21", width/55, height/4.4);
    text("L'as a une valeur que vous choisirez: soit 1 soit 11", width/55, height/3.5);  
    text("Le plus proche de 21 sans le dépasser remporte la mise", width/55, height/2.8);    
    
    text("-Créateurs:Lilian Gallon, Benjamin Cuny et Hugo Feyrit", width/55, height/1.03);
    
  if (overRect(width/1.34, height/1.3, textWidth("RETOUR"), width/20)==true) {
      fill(150);
      rect(width/1.34, height/1.3, textWidth("RETOUR"), width/20);
      fill(255);
      text("RETOUR", width/1.34, height/1.2);
    } else if (overRect(width/1.34, height/1.3, textWidth("RETOUR"), width/20)==false) {
      fill(0);
      rect(width/1.34, height/1.3, textWidth("RETOUR"), width/20);
      fill(255);
      text("RETOUR", width/1.34, height/1.2);
    }
  
  break;

  case CHOIX:
    textFont(classic);
    fill(0, 1);
    rect(0, 0, width, height);

    // Affiche les valeurs des cartes pour pas qu'elles s'effacent
    fill(200);
    textSize(50);
    
    // Affichage des cartes
    if (mainJ>=1 && carte[0]!=0) {
      text((carte[0]), width/7.8, height/1.15 );
      image(imgs[cartesTirees[0]], width/9, height/1.4, width/8, height/3.6);
    }  

    if (mainJ>=2 && carte[1]!=0) {
      text((carte[1]), width/3.5, height/1.15 );
      image(imgs[cartesTirees[1]], width/4.1, height/1.4, width/8, height/3.6);
    }

    if (mainJ>=3 && carte[2]!=0 ) {
      text((carte[2]), width/(2.4), height/1.15);
      image(imgs[cartesTirees[2]], width/2.65, height/1.4, width/8, height/3.6);
    } 

    if (mainJ>=4 && carte[3]!=0) {
      text((carte[3]), width/(1.8), height/1.15);
      image(imgs[cartesTirees[3]], width/1.96, height/1.4, width/8, height/3.6);
    }

    if (mainJ>=5 && carte[4]!=0) {
      text((carte[4]), width/(1.5), height/1.15);
      //image(imgs[cartesTirees[4]), width/1.56, height/1.4, width/8, height/3.6);
      etatJeu=FINI;
    }


  // Affichage de la valeur totale des cartes
    text(valeurCarteC(cartesTirees[19], cartesC), width/1.9, height/10);
    fill(0, 150, 0);
    text(cartesJ, width/30, height/1.1);

    fill(50, 5);
    rect(0, 0, width, height);
    fill(0, 50, 0);

    // Affichage des boutons
    rect(width/3.05, height/6.05, width/2.9, height/5.9, 7);     
    fill(200);
    textSize(width/20);
    text("Prendre 1", width/2.8, height/3.3);

    fill(0, 50, 0);
    rect(width/3.05, height/2.55, width/2.9, height/5.9, 7);
    fill(200);
    textSize(width/20);
    text("Prendre 11", width/2.8, height/2.1);


    break;

  case EN_COURS : 
    textFont(classic);
      //  background(0);
    image(fond, 0, 0, width, height);

    if (overRect(width/1.2, height/1.4, width/5, height/10)==true) {
      fill(80, 255, 80);
      rect(width/1.2, height/1.4, width/5, height/12, 7);     
      fill(200);
      textSize(width/45);
      text("Prendre", width/1.16, height/1.29);
    } else {
      fill(0, 200, 0);
      rect(width/1.2, height/1.4, width/5, height/12, 7);     
      fill(200);
      textSize(width/45);
      text("Prendre", width/1.16, height/1.29);
    }   

    if (overRect(width/1.2, height/1.24, width/5, height/10)==true) {
      fill(80, 80, 200);
      rect(width/1.2, height/1.24, width/5, height/12, 7);     
      fill(200);
      textSize(width/45);
      text("Garder", width/1.16, height/1.16);
    } else {
      fill(0, 0, 200);
      rect(width/1.2, height/1.24, width/5, height/12, 7);     
      fill(200);
      textSize(width/45);
      text("Garder", width/1.16, height/1.16);
    }   

    if (overRect(width/1.2, height/1.11, width/5, height/10)==true) {
      fill(200, 80, 80);
      rect(width/1.2, height/1.11, width/5, height/12, 7);     
      fill(200);
      textSize(width/45);
      text("Quitter", width/1.16, height/1.05);
    } else {
      fill(200, 0, 0);
      rect(width/1.2, height/1.11, width/5, height/12, 7);     
      fill(200);
      textSize(width/45);
      text("Quitter", width/1.16, height/1.05);
    } 

    // Affichage hors boutons
    //stroke(153);
    //line(0, height/1.41, width, height/1.41);
    noStroke();
    text("Vos", width/30, height/1.3);
    text("cartes:", width/30, height/1.2);
    fill(200);
    text("Carte du croupier:", width/3, height/10);
    textSize(width/55);
    fill(50, 100);
    rect(width/1.2, 0, width/5, height/4);
    fill(255);
    text("Score: J- " + scoreJ + " | " + scoreC + " -C", width/1.19, height/16);
    text("# Partie: "+parties, width/1.19, height/9);
    text("Argent: "+argent+"CR", width/1.19, height/6);
    text("Mise: "+mise, width/1.19, height/4.5);

    // Affichage de l'emplacement des cartes
    noFill();
    stroke(200);
    rect(width/9, height/1.4, width/8, height/3.6, 7); // carte 1
    rect(width/4.1, height/1.4, width/8, height/3.6, 7);
    rect(width/2.65, height/1.4, width/8, height/3.6, 7);
    rect(width/1.96, height/1.4, width/8, height/3.6, 7);
    rect(width/1.56, height/1.4, width/8, height/3.6, 7);
    noStroke();

    // Initialisation des valeurs des cartes de la main initiale
    if (partiecommence==true) {
      if (mainJ==1) {
        if (choixas[0] == 0 && cartesTirees[0]%100==1) {
          etatJeu=CHOIX;
        } else if (choixas[0]!=0 && cartesTirees[0]%100==1) {
          carte[0] = choixas[0];
          cartesJ = carte[0];
          mainJ = 2;
          textSize(50);
          text((carte[0]), width/7.8, height/1.15);
        } else if (cartesTirees[0]%100!=1) {
          carte[0] = valeurCarteJ(cartesTirees[0]);
          cartesJ = carte[0];
          mainJ = 2;
          textSize(50);
          text((carte[0]), width/7.8, height/1.15);
        }
      } else if (mainJ==2) {    
        if (choixas[1] == 0 && cartesTirees[1]%100==1) {
          etatJeu=CHOIX;
        } else if (choixas[1]!=0 && cartesTirees[1]%100==1) {
          carte[1] = choixas[1];
          cartesJ = cartesJ + carte[1];
          partiecommence=false;
        } else if (cartesTirees[1]%100!=1) {
          carte[1] = valeurCarteJ(cartesTirees[1]);
          cartesJ = cartesJ + carte[1];
          partiecommence=false;
        }
      }
    }

      if (demandecarte==true) {
        if (choixas[mainJ-1] == 0 && cartesTirees[mainJ-1]%100==1) {
          etatJeu=CHOIX;
        } else if (choixas[mainJ-1]!=0 && cartesTirees[mainJ-1]%100==1) {
          carte[mainJ-1] = choixas[mainJ-1];
          cartesJ = cartesJ + carte[mainJ-1];
          demandecarte=false;
        } else if (cartesTirees[mainJ-1]%100!=1) {
          carte[mainJ-1] = valeurCarteJ(cartesTirees[mainJ-1]);
          cartesJ = cartesJ + carte[mainJ-1];
          demandecarte=false;
        }
      }

      
      image(imgs[cartesTirees[19]], width/2.65, height/7.5, width/8, height/3.6);
      
      textSize(50);
      fill(200);
      if (mainJ>=3) {
        text((carte[2]), width/(2.65), height/1.15);
        image(imgs[cartesTirees[2]], width/2.65, height/1.4, width/8, height/3.6);
      } 
      if (mainJ>=4) {
        text((carte[3]), width/(1.8), height/1.15);
        image(imgs[cartesTirees[3]], width/1.96, height/1.4, width/8, height/3.6);
      }
      if (mainJ>=5) {
        text((carte[4]), width/(1.5), height/1.15);
        image(imgs[cartesTirees[4]], width/1.56, height/1.4, width/8, height/3.6);
        etatJeu=FINI;
      }
      joueur = cartesJ;
      // Affichage de valeurs issues de cartes
      fill(200);
      //text(valeurCarteC(cartesTirees[19], cartesC), width/1.9, height/10);
      textSize(50);
      text((carte[0]), width/7.8, height/1.15);
      image(imgs[cartesTirees[0]], width/9, height/1.4, width/8, height/3.6);
      text((carte[1]), width/3.5, height/1.15 );
      image(imgs[cartesTirees[1]], width/4.1, height/1.4, width/8, height/3.6);

      textSize(width/30);
      //fill(1);
      //rect(width/30, height/1.17, textWidth("33"), height/18);
      fill(0, 150, 0);
      text(cartesJ, width/30, height/1.1);

    break;

  case PAUSE :  
    textFont(classic);
    fill(0, 1);
    if (overRect(width/2, height/7, textWidth("RESOLUTION"), width/20)==true) {
      fill(150);
      rect(width/2, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Reprendre", width/1.98, height/4.8);
    } else if (overRect(width/2, height/7, textWidth("RESOLUTION"), width/20)==false) {
      fill(0);
      rect(width/2, height/7, textWidth("RESOLUTION"), width/20);
      fill(255);
      text("Reprendre", width/1.98, height/4.8);
    }
    break;

  case FINI :
    println("Carte1:"+cartesTirees[19]%100);
    println("Carte2:"+cartesTirees[20]%100);
    println("Carte3:"+cartesTirees[21]%100);
    println("Carte4:"+cartesTirees[22]%100);
    println("Carte5:"+cartesTirees[23]%100);
  
    if(joueur==21 && son==1 && limiteur2==0){
    gg.play(0);
    limiteur2=1;}
    textFont(classic);
    fill(0, 1);
    rect(0, 0, width, height);
    int Croupier = Croupier();
    println("Croupier: "+ Croupier);
    println("Vous: " + joueur);
    fill(255);
    if (Croupier > joueur && Croupier <=21 && limiteur==1) {
      println("Vous avez perdu");
      etatfin=1;
      if(iA==2){
      argent = argent - mise/10;
      }else{
      argent = argent - mise;
      }
      scoreC ++;
      victoire=0;
    } else if (Croupier == joueur && Croupier <=21 && limiteur==1) {
      println("Egalité");
      etatfin=2;
      victoire=2;
    } else if (Croupier == joueur && Croupier >21 && limiteur==1) {
      println("Egalité mais brûlé");
      etatfin=3;
      if(iA==2){
      argent = argent - mise/10;
      }else{
      argent = argent - mise;
      }
      victoire=0;
    } else if (Croupier < joueur && joueur <=21 && limiteur==1) {
      println("Vous avez gagné");
      argent = argent + mise;
      etatfin=4;
      scoreJ ++;
      victoire=1;
    } else if (Croupier >21 && joueur <=21 && limiteur==1) {
      println("Vous avez gagné");
      argent = argent + mise;
      etatfin=5;
      scoreJ ++;
      victoire=1;
    } else if (Croupier <=21 && joueur >21 && limiteur==1) {
      println("Vous avez perdu");
      if(iA==2){
      argent = argent - mise/10;
      }else{
      argent = argent - mise;
      }
      scoreC ++;
      etatfin=6;
      victoire=0;
    } else if (limiteur==1) {
      println("Vous avez tous les deux brûlé");
      if(iA==2){
      argent = argent - mise/10;
      }else{
      argent = argent - mise;
      }
      victoire=0;
      etatfin=7;
    }
    if (argent < 5) {
      argent = 5;
      if(iA==2){
      mise=50;
      }else{
      mise=5;
      }
    }
    limiteur=2;
    String argentX = str(argent);
    if (compte==1) {
      resetTXT("argent1.txt");
      ecrire(argentX, "argent1.txt");
    } else if (compte==2) {
      resetTXT("argent2.txt");
      ecrire(argentX, "argent2.txt");
    } else if (compte==3) {
      resetTXT("argent3.txt");
      ecrire(argentX, "argent3.txt");
    }
    //  println("Main du croupier : " + Croupier);
    // println("Votre main : " + cartesJ);

    fill(255);
    // Sur la 1ere ligne
    text("Croupier :", width/50, height/10);
    text(Croupier, width/3.7, height/10);
    text("Score :", width/1.98, height/10);
    text(scoreC, width/1.32, height/10);    
    // Sur la 2eme ligne
    text("Vous :", width/50, height/5);
    text(joueur, width/3.8, height/4.8);
    text("Score :", width/1.98, height/4.8);
    text(scoreJ, width/1.32, height/4.8);
    // Sur la 3eme ligne
    text("Argent :", width/50, height/3.3);
    if (victoire==1) {
      text(argent, width/3.8, height/3.3);
      fill(20, 185, 0);
      text("  (+"+mise+")", (width/3.8)+textWidth(str(argent)), height/3.3);
    } else if (victoire==2) {
      text(argent, width/3.8, height/3.3);      
      fill(140, 140, 0);
      text("  (+/- 0)", (width/3.8)+textWidth(str(argent)), height/3.3);
    } else if (victoire==0) {
      text(argent, width/3.8, height/3.3);
      fill(185, 20, 0); 
      if(iA==2){
      text("  (-"+mise/10+")", (width/3.8)+textWidth(str(argent)), height/3.3);
      }else{
      text("  (-"+mise+")", (width/3.8)+textWidth(str(argent)), height/3.3);
      }
    }
    fill(255);
    text("Mise :", width/1.98, height/3.3);
    
      if(iA==2){
      text(mise/10+"x10", width/1.32, height/3.3);
      }else{
      text(mise, width/1.32, height/3.3);
      }   
    
    // Sur la 4eme ligne
    text("Résultat :", width/50, height/2.5);
    if (etatfin==1) {
      text("Vous avez perdu", width/3.7, height/2.5);
    } else if (etatfin==2) {
      text("Egalité", width/3.7, height/2.5);
    } else if (etatfin==3) {
      text("Egalité mais brûlé", width/3.7, height/2.5);
    } else if (etatfin==4) {
      text("Vous avez gagné", width/3.7, height/2.5);
    } else if (etatfin==5) {
      text("Vous avez gagné", width/3.7, height/2.5);
    } else if (etatfin==6) {
      text("Vous avez perdu", width/3.7, height/2.5);
    } else if (etatfin==7) {
      text("Vous avez tous les deux brûlé", width/3.7, height/2.5);
    }
    if (overRect(width/1.34, height/1.3, textWidth("OK"), width/20)==true) {
      fill(150);
      rect(width/1.34, height/1.3, textWidth("OK"), width/20);
      fill(255);
      text("OK", width/1.34, height/1.2);
    } else if (overRect(width/1.34, height/1.3, textWidth("OK"), width/20)==false) {
      fill(0);
      rect(width/1.34, height/1.3, textWidth("OK"), width/20);
      fill(255);
      text("OK", width/1.34, height/1.2);
    }
    if (overRect(width/1.34, height/1.15, textWidth("QUITTER"), width/20)==true) {
      fill(150);
      rect(width/1.34, height/1.15, textWidth("QUITTER"), width/20);
      fill(255);
      text("Quitter", width/1.34, height/1.07);
    } else if (overRect(width/1.34, height/1.15, textWidth("QUITTER"), width/20)==false) {
      fill(0);
      rect(width/1.34, height/1.15, textWidth("QUITTER"), width/20);
      fill(255);
      text("Quitter", width/1.34, height/1.07);
    }

    break;

  default :
    println("wtf");
  }
}