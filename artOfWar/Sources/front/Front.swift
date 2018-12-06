protocol FrontProtocole {

  init(joueur : Joueur) 
      # Pre : Le joueur ne possède pas de front encore
      # Post: 
      # Resultat : Créer un element de Type Front


  mutating func envoyerFront(carte : Carte,pos : String):  
      # Pre : front est de type Front, carte de type Carte et pos de type str
      # Pre: La carte doit être situé à l'arrière
      # Post : 
      # Resultat : La carte est envoyé au front à la position indiquée en paramètre. Le front est modifié et renvoyé !

  var nbCarteFront:int { 
      get
      set
      # Pre : front est de type Front
      # Pre : La carte doit être situé à l'arrière
      # Post-condition : 
      # Resultat : Indique le nombre de carte présente sur le front

  }

  func estVideFront(pos : Str)
      # Pre : la position est un string
      # Post : 
      # Resultat : Renvoi True si la position est vide, renvoi False sinon

  func extraireFront(pos : Str) 
      # Pre : position est un string. Unz carte doit etre présente pour pouvoir être retirée
      # Post : 
      # Resultat : Renvoie la carte située à la position "pos" du front donné en parametre. Le front est modifié (car la carte est retiré du front) et la carte retirée est renvoyée. 

    }
