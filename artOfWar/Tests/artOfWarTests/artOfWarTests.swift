import XCTest
@testable import artOfWar

final class artOfWarTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(artOfWar().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
