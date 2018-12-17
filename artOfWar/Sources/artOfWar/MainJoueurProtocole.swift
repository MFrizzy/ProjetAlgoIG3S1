/*
  Collection de cartes caractérisant la main d'un joueur
*/
protocol MainJoueurProtocole : Sequence {

    associatedtype MainIterator : IteratorProtocol where MainIterator.Element == Carte
    associatedtype Carte : CarteProtocole

    /*
      init : -> MainJoueur
      Prérequis: un numéro entre 0 ou 1, qui défini le joueur
      Post: Créé une main contenant un roi du joueur correspondant
    */
    init(num : Int)

    /*
      supprimerCarte : Carte
      Prérequis : la carte passée en paramètre doit faire partie de la main
      Post : supprime la carte passée en paramètre
    */
    mutating func supprimerCarte(carte : Carte)

    /*
      ajoutCarte : Carte 
      Prérequis : une main existante de type main, une carte existante de type carte
      Post : ajoute une carte dans la main et renvoi la nouvelle main
             si la main est pleine, une erreur est lancée
    */
    mutating func ajoutCarte(carte : Carte) throws

    /*
      nbCarte : -> Int
      Prérequis : une main existante de type main
      Post : renvoi le nombre de carte dans la main
    */
    func nbCarte() -> Int

    /*
      estVide : -> Bool
      Prerequis : aucun
      Post : renvoi vrai si la main du joueur est vide
    */
    func estVide() -> Bool

    /*
      makeIterator : -> MainIterator
      Prérequis : aucun
      Post : crée et renvoi un iterateur sur la collection MainJoueurProtocole
    */
    func makeIterator() -> MainIterator
}