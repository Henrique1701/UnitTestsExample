//
//  String+FormattingTest.swift
//  UnitTestsUdemyTests
//
//  Created by José Henrique Fernandes Silva on 22/08/22.
//

import XCTest
@testable import UnitTestsUdemy

class String_FormattingTest: XCTestCase {
    func testIsValidEmailAddress() {
        let validEmail = "user@gmail.com"
        let notValidEmail = "user"
        
        XCTAssertTrue(validEmail.isValidEmailAddress())
        XCTAssertFalse(notValidEmail.isValidEmailAddress())
    }
    
    func testIsBigText() {
        isBigText(for: "O meu nome é Henrique", expectedResult: true, message: "O texto deve ter mais de 5 palavras para ser considerado grande")
        isBigText(for: "Olá", expectedResult: false, message: "O texto deve ter pelo menos um palavra e menos de 5 palavras")
        isBigText(for: "", expectedResult: nil, message: "O texto precisa ser vazio")
    }
}

extension String_FormattingTest {
    func isBigText(for text: String,
                   expectedResult: Bool?,
                   message: String = "A função não aconteceu rodou da forma esperada") {
        XCTAssert(text.isBigText() == expectedResult, message)
    }
}
