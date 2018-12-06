protocol RoyaumeProtocole {

  init(joueur : Joueur) :
      # Pre : le joueur de type joueur en entré ne doit pas posseder de royaume
      # Post : 
      # Resultat : Créer un element de Type Royaume


  mutating func extraireRoyaume(role : String) :
      # Pre : royaume est de type Royaume, role est de type String. Au moins une carte avec Role = role se trouve dans le royaume. 
      # Post : 
      # Resultat : renvoie une carte ayant Role = role. Le royaume est donc modifié car la carte a été retirée du royaume
      pass 

  mutating func entrerRoyaume(carte : Carte) : 
      # Pre: royaume est de type Royaume, carte est de type Carte 
      # Post : 
      # Resultat : Ajoute la carte entrée en paramètre dans le royaume. Le royaume est modifié et renvoyé 


  var nbCarteRoyaume : int { 
      get 
      set
      # Pre: royaume est de type Royaume 
      # Post: 
      # Resultat : Retourne le nombre de citoyens (cartes) dans le royaume placé en paramètre 
  }

  func nbCarteRoleRoyaume(role : string) : 
      # Pre: royaume est de type Royaume, role est un String
      # Post : 
      # Resultat : Retourne le nombre de citoyens (cartes) ayant le role donné dans le royaume placé en paramètre 


  func estEffondre() :  
      # Pre : 
      # Post:
      # Resultat : Renvoie True si le royaume est effondré et False sinon 



  mutating func effondre() :
      # Pre: le royaume n'est pas déjà effondré
      # Post :
      # Resultat : Modifie l'état d'éffondrement du Royaume du joueur passé en paramètre. Le royaume est modifié et renvoyé 


  func descriptionRoyaume() : 
      # Pre : royaume est de type Royaume
      # Post :
      # Resultat : renvoie un string qui est une description du royaume. La chaine de caratere contiendra les Roles des cartes ainsi que le nombre des cartes. Finalement elle comprend le total. Par exemple la chaine de caractere pourra renvoyer "Roi : 0, Soldat : 2, Archer : 3, Garde : 1, Total : 6"
}
