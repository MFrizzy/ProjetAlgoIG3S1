protocol PartieProtocole {
  associatedtype Joueur : JoueurProtocole

    /*
      Prérequis :
      Post :
      Resultat : renvoi une partie initialisée avec 2 joueurs  
    */
    init()

    var joueurCourant : Joueur {
      /*
        joueurCourant : -> Joueur
        Prérequis : une partie existante de type existante
        Post : renvoi le joueur courant actuel de la partie
      */
      get
    }

    var joueurAdverse : Joueur {
        /**
          joueurCourant : -> Joueur
          Prérequis : une partie existante de type existante
          Post : renvoi le joueur adverse actuel de la partie
        */
        get
    }
}
