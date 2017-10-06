void controlerJeuClavier() {
  switch(etatJeu) {

  case ACCUEIL :
    break;

  case EN_COURS :
    if (keyPressed==true) {
      etatJeu=PAUSE;
    }
    break;

  case PAUSE :
    break;

  case FINI :
    break;

  default :
    println("wtf");
  }
}