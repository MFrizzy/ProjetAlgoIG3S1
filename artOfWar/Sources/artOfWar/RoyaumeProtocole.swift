protocol RoyaumeProtocole : Sequence {

  associatedtype Joueur : JoueurProtocole
  associatedtype Carte : CarteProtocole
  associatedtype RoyaumeIterator : IteratorProtocol where RoyaumeIterator.Element == Carte

  /*
    init : -> Royaume
    Pre :
    Post :
    Resultat : Créer un element de Type Royaume
  */
  init(joueur : Joueur)

  /*
    extraireRoyaume : -> Carte
    Pre : role est de type String. Au moins une carte avec Role = role se trouve dans le royaume.
    Post : renvoie une carte ayant Role = role. Le royaume est donc modifié car la première carte est retirée du royaume
    throw si le royaume est vide
  */
  mutating func extraireRoyaume() throws -> Carte

  /*
    addRoyaume : Carte
    Pre: carte est de type Carte
    Post : Ajoute la carte entrée en paramètre dans le royaume. Le royaume est modifié et renvoyé
  */
  mutating func addRoyaume(carte : Carte)

  /**
    count : -> Int
    Pre:
    Post : Retourne le nombre de citoyens (cartes) dans le royaume
  */
  func count() -> Int

  /*
    Pre :
    Post : Renvoie True si le royaume est vide, False sinon
  */
  func estVide() -> Bool

}
