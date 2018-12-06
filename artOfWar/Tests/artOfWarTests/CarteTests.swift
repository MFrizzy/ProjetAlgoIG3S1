import XCTest
@testable import artOfWar

final class CarteTests: XCTestCase {

    func testGetters() {
      var portee = [(1, 1), (0, 1), (0, -1)]
      var a = Carte(nom: "Soldat", degats: 5, pvDefensif: 4, pvOffensif: 3, portee: portee)
      XCTAssertEqual(a.getPortee(), portee)
      XCTAssertEqual(a.getRoleCarte(), "Soldat")
      XCTAssertEqual(a.getPointsDegat(), 5)
      XCTAssertEqual(a.getPvDefensif(), 4)
      XCTAssertEqual(a.getPvOffensif(), 3)
    }

    func testSetters() {
      var portee = [(1, 1), (0, 1), (0, -1)]
      var porteeToChange = [(1, 1), (-1, 1), (0, 0)]

      var a = Carte(nom: "Soldat", degats: 5, pvDefensif: 4, pvOffensif: 3, portee: portee)

      a.setPointsDegat(1)
      a.setPortee(porteeToChange)

      XCTAssertEqual(a.getPortee(), porteeToChange)
      XCTAssertEqual(a.getPointsDegat(), 1)
    }

    func testPosition() {
      var portee = [(1, 1), (0, 1), (0, -1)]
      var a = Carte(nom: "Soldat", degats: 5, pvDefensif: 4, pvOffensif: 3, portee: portee)

      XCTAssertTrue(a.estVerticale())
      a.setPositionHorizontale()
      XCTAssertFalse(a.estVerticale())
      a.setPositionVerticale()
      XCTAssertTrue(a.estVerticale())

    }

    static var allTests = [
        ("testPosition", testPosition),
        ("testGetters", testGetters),
        ("testSetters", testSetters)
    ]
}
