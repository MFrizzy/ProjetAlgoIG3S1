import Carte

class MainJoueur : MainJoueurProtocole {

    init(num : Int) {

    }
    
    func supprimerCarte(carte : Carte) {

    }

    func ajoutCarte(carte : Carte) {

    }

    func nbCarte() -> Int {
        return 0
    }

    func estVide() -> Bool {
        return true
    }

    func makeIterator() -> MainIterator {
        return MainIterator()
    }

}

class MainIterator : IteratorProtocol {

    typealias Element = Carte

    init() {

    }

    func next() -> Carte? {
        return Vide
    }

}