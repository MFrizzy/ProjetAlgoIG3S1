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
      getPvDefensif : -> Int
      Prérequis :
      Post : renvoi les pv en position defensive
    */
    func getPvDefensif() -> Int

    /*
      getPvOffensif : -> Int
      Prérequis :
      Post : renvoi les pv en position offensive
    */
    func getPvOffensif() -> Int

    /*
      getPortee : -> [(Int, Int)]
      Prérequis :
      Post : renvoi le tableau de la portée
    */
    func getPortee() -> [(Int, Int)]

    /*
      setPortee : [(Int, Int)]
      Prérequis :
      Post : change la valeur de la portee de la carte
    */
    func setPortee(p: [(Int, Int)])

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
      getPointsDegat : -> Int
      Prérequis :
      Post : retourne les points d'attaques de l'utilisateur
    */
    func getPointsDegat() -> Int

    /*
      setPointsDegat : -> Int
      Prérequis : nvDegat > 0
      Post : modifie les degats de la carte avec "pontdedegats"
    */
    mutating func setPointsDegat(nvDegat : Int)

    /*
      getRoleCarte : -> String
      Prérequis :
      Post : renvoi le role de la carte sous la forme d'un string
    */
    func getRoleCarte() -> String

}
