import XCTest
import RomanizedHebrew

final class RomanizedHebrewTests: XCTestCase {
    
    func testBasics() throws {
        XCTAssertEqual(unromanizeHebrew("A"), "\u{5d0}")
        XCTAssertEqual(unromanizeHebrew("B"), "\u{5d1}")
        XCTAssertEqual(unromanizeHebrew("G"), "\u{5d2}")
        XCTAssertEqual(unromanizeHebrew("ABG"), "\u{5d0}\u{5d1}\u{5d2}")
    }
    
    func testAutoFinals() throws {
        XCTAssertEqual(unromanizeHebrew("AN BNM"), "אן בנם")
        XCTAssertEqual(unromanizeHebrew("ANf BNiMf"), "אן בנם")
    }

    func testNiqqod() throws {
        XCTAssertEqual(unromanizeHebrew("B3AM"), "\u{5d1}\u{5b6}\u{5d0}\u{5dd}")
    }
}
