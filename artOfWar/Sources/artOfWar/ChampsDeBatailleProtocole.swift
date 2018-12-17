
protocol ChampsDeBatailleProtocole {

/*
  init(joueur : joueur)
      # Pre : Le joueur entré en paramètre ne doit pas avoir de champ de bataille existant
      # Post :
      # Resultat : Crée un champ de bataille vide. Crée un front et un arriere, les associent au champ créé et renvoie le champ.



  func redresseCartes()
      # Pre : le champ est de type ChampBataille
      # Post : Aucune
      # Resultat : Toutes les cartes du champ de bataille sont verticales. Le champ de bataille est donc modifié et renvoyé.


  func estVide()
      # Pre : le champ est de type ChampBataille
      # Post :
      # Resultat : Retourne True si aucune carte n'est placée sur le champs de bataille, false sinon

      pass


  func obtenirCarte(pos : String)
      # Pre : La position (pos de type String) entrée en paramètre doit correspondre à une position du plateau et une carte doit se trouver à cet emplacement. champ est de type ChampBataille
      # Post :
      # Resultat : Renvoie la carte se trouvant à cette position SANS l'enlever


  var nbCarteChampBataille: ChampBataille{
    get:
    set:
      # Pre-condition :
      # Post :
      # Resultat : Indique le nombre de carte présente dans le champ de bataille
  }


  var front:ChampBataille{
      # Pre: le champ est de type ChampBataille
      # Post :
      # Resultat : retourne le front du champ entré en paramètre

  }
  */

  /**
  # Pre : le champ est de type ChampBataille
  # Post :
  # Resultat : retourne l'arriere du champ entré en paramètre
  var arriere:ChampBataille
  */

  /*
    # Pre : champ est de type ChampBataille
    # Post :
    # Resultat : Retourne True si toutes les cartes du champ de bataille sont horizontales, retourne False sinon
  */
  func touteHorizontale() -> Bool

  /*
    # Pre: pos est un string et est une position existante
    # Post :
    # Resultat : Retourne True si la position contient une carte (en utilisant les fonction estVideFront et estVideArriere)
  */
  func estVidePosition(pos : Role) -> Bool

  /**
    # Pre : La position donnée en paramètres est precedemment occupée par une carte au front et une autre carte se situe derriere elle
    # Post :
    # Resultat : Modifie le champ de bataille dans lequel la carte (située à l'arriere) est envoyée au front. La fonction retourne aussi ce champ.
  **/
  mutating func avancerCarte(pos : Role)


}
