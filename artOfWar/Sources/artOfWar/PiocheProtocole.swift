protocol PiocheProtocole {

  associatedtype Carte : CarteProtocole

  /*
    init : -> Pioche
    Pre: Int donné en parametre (indice) est un entier egal à 1 ou 2 et défini le numéro du joueur
    Post : Créer un élément de Type Pioche dans laquelle il y aura : 9 cartes avec le Role = "Archer", 6 cartes avec Role = "Garde" et 5 cartes dont le Role = "Soldat". La fonction renvoie la pioche créée
  */
  init()

  /*
    piocher : -> Carte
    Pre : pioche est de type Pioche
    Post : Renvoie une carte aléatoire dans la pioche donnée en parametre. La pioche est alors modifiée, la carte piochant etant retirée de la pioche.
  */
  mutating func piocher() -> Carte

  /*
    ajouterPioche : Carte ->
    Pre : Carte est de type carte, et pioche de type pioche
    Post : ajoute la carte donnée en paramètre dans la pioche donnée en parametre
  */
  mutating func ajouterPioche(carte : Carte)

  /*
    nbCartePioche : -> Int
    Pre : pioche est de type Pioche
    Post : Renvoie le nombre de carte restant dans la pioche entrée en paramètre
  */
  func nbCartePioche() -> Int

}