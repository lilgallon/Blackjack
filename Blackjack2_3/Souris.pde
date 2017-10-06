void controlerJeuSouris() {
  switch(etatJeu) {

  case ACCUEIL :
        textSize(width/30);
    if (overRect(width/2.5, height/3, width/5, height/6)==true) {
      etatJeu = MISE;
    }
    if (overRect(width/2.5, height/1.9, width/5, height/6)==true) {
      exit();
    }
    if (overRect(width/1.177, height/1.22, textWidth("OPTIONS"), textAscent()-textDescent())) {
      etatJeu=OPTIONS;
    }
    if (overRect(width/26, height/1.23, textWidth("extra"), textAscent()-textDescent())) {
      etatJeu=EXTRA;
    }
    if (overRect(width/50, height/21, textWidth("Non a jour: cliquez ici pour mettre a jour"), textAscent())==true) {
      link("https://drive.google.com/folderview?id=0B79wHwfMj4bGU1p6bGIzdkQzeFE&usp=sharing");
    }

    
    break; 
    //26, 1.23


  case MISE:
    if (overRect(width/2.5, height/3, width/5, height/6)==true) {
      if (mise<=(argent-5)) {
        mise = (mise+5);
      }
    }
    if (overRect(width/2.5, height/1.9, width/5, height/6)==true) {
      if (mise>=6 && iA==1) {
        mise = (mise-5);
      }
    }
    if (overRect(width/1.177, height/1.22, textWidth("jouer"), textAscent()-textDescent())) {
      etatJeu=EN_COURS;
    }
    if (overRect(width/26, height/1.22, textWidth("retour"), textAscent()-textDescent())) {
      etatJeu=ACCUEIL;
    }
    
    if (overRect(width/55, height/32, width/4.5, height/10)==true) {
    if(iA==2){
      mise = mise/10;
    }
      iA=1;
    }
    if (overRect(width/55, height/6, width/4.2, height/10)==true) {
    if(iA==1){
      mise = mise*10;
    }
      iA=2;
    }
    break;

  case OPTIONS:

    if (overRect(width/1.34, height/1.3, textWidth("RETOUR"), width/20)==true) {
      etatJeu=ACCUEIL;
    }

    if (overRect(width/4, height/3.85, textWidth("RESOLUTION"), width/20)==true) {
      resetTXT("son.txt");
      ecrire("1", "son.txt");
      son = 1;
      x=599;
    }

    if (overRect(width/2, height/3.85, textWidth("RESOLUTION"), width/20)==true) {
      resetTXT("son.txt");
      ecrire("0", "son.txt");
      son = 0;
      ambiance.pause();
    }

    if (overRect(width/4, height/30, textWidth("RESOLUTION"), width/20)==true) {
      ecran =1;
      resetTXT("ecran.txt");
      ecrire("1", "ecran.txt");
      // Cela écrit si on veut fenetré ou plein écran
    }

    if (overRect(width/2, height/30, textWidth("RESOLUTION"), width/20)==true) {
      ecran =2;
      resetTXT("ecran.txt");
      ecrire("2", "ecran.txt");
      // Cela écrit si on veut fenetré ou plein écran
    }

    if (overRect(width/1.34, height/30, textWidth("RESOLUTION"), width/20)==true) {
      // cela restart() le programme pour appliquer le changement de résolution
      appliquer=true;
    }

    if (overRect(width/4, height/7, textWidth("RESOLUTION"), width/20)==true) {
      // On charge la valeur du compte
      compte=1;
      // On écrit qu'il a selectionné compte 1
      resetTXT("compte.txt");
      ecrire("1", "compte.txt");
      argent = argent1;
    }

    if (overRect(width/2, height/7, textWidth("RESOLUTION"), width/20)==true) {
      compte=2;
      resetTXT("compte.txt");
      // On écrit qu'il a selectionné compte 2
      // On charge la valeur du compte
      ecrire("2", "compte.txt");
      argent = argent2;
    }

    if (overRect(width/1.34, height/7, textWidth("RESOLUTION"), width/20)==true) {
      compte=3;
      resetTXT("compte.txt");
      // On écrit qu'il a selectionné compte 3
      // On charge la valeur du compte
      ecrire("3", "compte.txt"); 
      argent = argent3;
    }


    break;
    
    case EXTRA:
     if (overRect(width/1.34, height/1.3, textWidth("RETOUR"), width/20)==true) {
      etatJeu=ACCUEIL;
    }
    break;

  case CHOIX :
    if (overRect(width/3, height/6, width/3, height/6)==true) {
      choixas[mainJ-1] = 1;
      println("[AS] As selectionné en tant que 1");
      etatJeu=EN_COURS;
    }
    if (overRect(width/3, height/2.5, width/3, height/6)==true) {
      choixas[mainJ-1] = 11;
      println("[AS] As selectionné en tant que 11");
      etatJeu=EN_COURS;
    }
    break;

  case EN_COURS :       

    if (overRect(width/1.2, height/1.4, width/5, height/10) == true) {
      mainJ ++;
      demandecarte=true;
      // println(" " + valeurCarteJaffichage(cartesTirees[0 + mainJ], mainJ-1));
    } else if (overRect(width/1.2, height/1.24, width/5, height/10) == true) {
      etatJeu=FINI;
      //}
    } else if (overRect(width/1.2, height/1.11, width/5, height/10) == true) {
      quitter=true;
    }
    break;

  case PAUSE :
    if (overRect(width/2, height/7, textWidth("RESOLUTION"), width/20)==true) {
      etatJeu = EN_COURS;
    }

    /*
    if (overRect(180, 250, e, f)== true) {
     fill(200);
     rect(180, 250, width*0.25, height*0.11);
     exit();
     }
     */
    break;

  case FINI :

    if (overRect(width/1.34, height/1.3, textWidth("OK"), width/20)==true) {

      if (quitter==true) {
        reinitialisation();
        etatJeu=ACCUEIL;
      } else {
        background(0);
        reinitialisation();
        etatJeu=EN_COURS;
      }
    } else if (overRect(width/1.34, height/1.15, textWidth("QUITTER"), width/20)==true) {
      quitter=true;
      reinitialisation();
      etatJeu=ACCUEIL;
    }
    break;

  default :
    println("wtf");
  }
}