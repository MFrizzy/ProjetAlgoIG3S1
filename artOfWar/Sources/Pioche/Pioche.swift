protocol PiocheProtocole {

  init(indice : int) :
      # Pre: Int donné en parametre (indice) est un entier egal à 1 ou 2 et défini le numéro du joueur
      # Post: 
      # Resultat : Créer un élément de Type Pioche dans laquelle il y aura : 9 cartes avec le Role = "Archer", 6 cartes avec Role = "Garde" et 5 cartes dont le Role = "Soldat". La fonction renvoie la pioche créée 


  mutating func piocher() : 
      # Pre : pioche est de type Pioche
      # Post : Aucune
      # Resultat : Renvoie une carte aléatoire dans la pioche donnée en parametre. La pioche est alors modifiée, la carte piochant etant retirée de la pioche.


  mutating func ajouterPioche(carte : Carte) :
      # Pre : Carte est de type carte, et pioche de type pioche
      # Post : 
      # Resultat : ajoute la carte donnée en paramètre dans la pioche donnée en parametre. Modife et renvoie la pioche modifiée


  var nbCartePioche : int { 
      get
      set
      # Pre : pioche est de type Pioche
      # Post : Aucune
      # Resultat : Renvoie le nombre de carte restant dans la pioche entrée en paramètre
  }
    
}
