//
//  String+FormattingSpec.swift
//  UnitTestsUdemyTests
//
//  Created by José Henrique Fernandes Silva on 22/08/22.
//

import Quick
import Nimble
@testable import UnitTestsUdemy

class String_FormattingSpec: QuickSpec {
    override func spec() {
        describe("String+Formatting") {
            context("Remove Whitespaces") {
                it("Removed with success") {
                    let textWithWhitespaces = "Texto com espaços"
                    let textWithoutWhitespaces = "Textocomespaços"
                    expect(textWithWhitespaces.removeWhitespace()).to(equal(textWithoutWhitespaces))
                }
            }
            
            context("Is Valid Email Address") {
                it("Is valid") {
                    let email = "user@gmail.com"
                    expect(email.isValidEmailAddress()).to(beTrue())
                }
                
                it("It is not valid") {
                    let email = "user"
                    expect(email.isValidEmailAddress()).to(beFalse())
                }
            }
            
            context("Is Big Text") {
                it("Big text") {
                    let text = "Esse é um texto grande"
                    expect(text.isBigText()).to(beTrue())
                }
                
                it("Not a big text") {
                    let text = "Texto pequeno"
                    expect(text.isBigText()).to(beFalse())
                }
                
                it("Empty text") {
                    let text = ""
                    expect(text.isBigText()).to(beNil())
                }
            }
        }
    }
}
