protocol CarteProtocole{

    func estVerticale() -> boolean
    // Prérequis : Carte est de type carte
    // Post :
    // Resultat : renvoi un booléen, true si la carte est verticale

    mutating func changerMode()
    // Prérequis : Carte est de type carte
    // Post :
    // Resultat : inverse le mode de la carte, si elle est verticale elle devient horizontale

    var positionCarte : String
    // Prérequis : Carte de type carte
    // Post :
    // Resultat : renvoi la position en string de la carte ex:"A3"

    mutation func setPosCarte(position : String)
    // Prérequis : carte est de type carte, et position un string de la forme "A3",
    // Post :
    // Resultat : deplace la carte à la position msie en entré, renvoi la carte

    var pointAttaque : int
    // Prérequis : carte de type carte
    // Post :
    // Result : renvoi les points d'attaques de la carte

    var pointDefense : int
    // Prérequis : carte de type carte
    // Post :
    // Result : renvoi les points de defense de la carte en fonction de son mode

    var pointDeDegats : int {
      get
        // Prérequis : carte est de type carte
        // Post :
        // Result : renvoi les dégats totaux pris par la carte
      set

    }

    mutating func setPointDegat(nvDegat : int)
    // Prérequis : carte est une carte existante, et nvDegat un int
    // Post :
    // Result : modifie les degats de la carte avec "pontdedegats"

    var rolecarte : String {
      get
        // Prérequis : carte est de type carte (Garde, Archer, Roi, Soldat)
        // Post :
        // Result : renvoi le role de la carte sous la forme d'un string
    }


    func estAPortee(cible : Self) -> boolean
    // Prérequis : cible est de type carte et est sur le terrain, la cible et la carte ne peuvent être dans la même équipe
    // Post :
    // Result : renvoi un booléen true si la carte est à porté











}
