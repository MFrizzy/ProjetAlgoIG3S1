class Carte : CarteProtocole {

    /* ------------------ Attributs --------------------*/

    var role : String {
        get
        set
    }
    var pointsDegats : Int {
        get
        set
    }
    var pvDefensif : Int
    var pvOffensif : Int
    /*
        position =  True  : Verticale -> Defensif
                    False : Horizontale -> Offensif
    */
    var positionVerticale : Bool

    var pv : Int {
        get {
            // Position horizontale = offensif
            // Position verticale = defensif
            if (!self.estVerticale()) 
                return self.pvOffensif
            return self.pvDefensif

        }
    }

    /* ------------------ Méthodes --------------------*/

    init(role: Role, degats: Int, pvDefensif: Int, pvOffensif: Int, portee: [(Int, Int)]) throws
    {

        self.role = role
        self.pointsDegats = deegats
        self.pvDefensif = pvDefensif
        self.pvOffensif = pvOffensif
        self.portee = portee
        self.positionVerticale = true
    
    }

    func estVerticale() -> Bool {
        return self.positionVerticale
    }

    mutating func setPositionVerticale() {
        self.positionVerticale = true
    }

    mutating func setPositionHorizontale() {
        self.positionVerticale = false
    }

    /*
    Ya qqch à retourner là je suis pas fou
    */
    func attaquer()  {

    }
    
}