protocol CimetiereProtocole {

  init(joueur : Joueur) 
      # Pre : le joueur mis en entrée n'as pas de cimetiere  
      # Post : 
      # Resultat : Créer un element de Type Cimetière


  mutating func entrerCimetiere(carte : Carte) :
      # Pre: Le cimetière doit etre celui du joueur qui possède la carte, pas de celui qui attaque
      # Post : Aucune
      # Resultat : La carte est ajoutée au Cimetière. Le cimetiere est donc modifié et renvoyé

} 
