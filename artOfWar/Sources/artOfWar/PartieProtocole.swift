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
        Prérequis :
        Post : renvoi le joueur courant actuel de la partie
      */
      get
    }

    var joueurAdverse : Joueur {
        /**
          joueurCourant : -> Joueur
          Prérequis :
          Post : renvoi le joueur adverse actuel de la partie
        */
        get
    }

    /*
      estFini : -> Bool
      Prérequis :
      Post : Return True si un des joueur a gagné, sinon False
    */
    func estFini() -> Bool

    /*
      gagant : -> Int
      Prérequis : estFini return True
      Post : Renvoie le joueur qui a gagné
    */
    func gagnant() -> Int

}