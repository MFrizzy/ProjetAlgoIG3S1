
protocol JoueurProtocole {

  associatedtype Main : MainJoueurProtocole
  associatedtype Pioche : PiocheProtocole
  associatedtype Carte : CarteProtocole
  associatedtype ChampsDeBataille : ChampsDeBatailleProtocole
  associatedtype Royaume : RoyaumeProtocole

    /**
      init : -> Joueur
      Prérequis : numéro est un int, 1 ou 2, correspondant au numero du joueur
      Post : Crée un élément de type joueur, construit aussi tout les items du jeu (royaume vide, champs de bataille vide, une pioche, une main avec un roi)
    */
    init(numéro : Int , nom : String)

    var champsDeBataille : ChampsDeBataille{
        /*
          champsDeBataille : -> ChampsDeBataille
          Prérequis : joueur existant de type Joueur
          Post : Renvoi le champs de bataille du joueur mis en entrée
        */
        get
    }

    var main : Main {
      /*
        Prérequis : un joueur existant de type joueur en entrée
        Post : None
        Result : renvoi la main du joueur
      */
      get
    }

    /*
      Prérequis : un joueur existant de type joueur en entrée
      Post : rien
      Result : renvoi le royaume du joueur
    */
    func getRoyaume() -> Royaume

    /*
      Prérequis :un joueur existant de type joueur en entrée
      Post : renvoi la pioche du joueur
    */
    func getPioche() -> Pioche

    /*

      Prérequis : carte est de type carte et joueur de type joueur
      Post : la carte est capturée, est est déplacé dans le royaume du joueur
    */
    mutating func capture(carte : Carte)

}