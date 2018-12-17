protocol CarteProtocole{

    /*
      init : -> Carte : String x Int x Int x Int x [(Int, Int)]
      création d'une carte, initialisée avec :
        - un nom : string
        - des degats : int
        - des pv en position defensive : int
        - des pv en position offensive : int
        - une portée avec des coordonnées relative : [(int, int)]
    */
    init(nom: String, degats: Int, pvDefensif: Int, pvOffensif: Int, portee: [(Int, Int)]) throws

    /*
      pvDefensif : Int
      Prérequis :
      Post : renvoi ou modifie les pv en position defensive
    */
    var pvDefensif : Int {
      get
      set
    }

    /*
      pvOffensif : Int
      Prérequis :
      Post : renvoi ou modifie les pv en position offensive
    */
    var pvOffensif : Int {
      get
      set
    }

    /*
      portee : [(Int, Int)]
      Prérequis :
      Post : renvoi ou modifie la portée de la cartes

      Le tableau est composé de tuple qui correspondent aux coordonnées relative ou la carte peut attaquer.
      La carte se trouve en (0,0), La carte devant elle est située en (1,0)
    */
    var portee: [(Int, Int)] {
      get
      set
    }

    /*
      estVerticale : -> boolean
      Prérequis : Carte est de type carte
      Post : renvoi un booléen, true si la carte est verticale
    */
    func estVerticale() -> Bool

    /*
      setPositionVerticale :
      Prérequis :
      Post : met la position de la carte en vertical
    */
    mutating func setPositionVerticale()

    /*
      setPositionHorizontale :
      Prérequis :
      Post : met la position de la carte en horizontal
    */
    mutating func setPositionHorizontale()

    /*
      pointsDegat : Int
      Prérequis : nvDegat > 0
      Post : retourne les points d'attaques de l'utilisateur
    */
    var pointsDegat : Int {
      get
      set
    }

    /*
      getRoleCarte : Role
      Prérequis :
      Post : Le role de la carte sous la forme d'un string
    */
    var roleCarte : Role {
      get
      set
    }


}

enum Role {
case Soldat, Garde, Archer
}