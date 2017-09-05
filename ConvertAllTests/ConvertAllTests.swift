//
//  ConvertAllTests.swift
//  ConvertAllTests
//
//  Created by Mohammad Irteza Khan on 9/2/17.
//  Copyright © 2017 Mohammad Irteza Khan. All rights reserved.
//

import XCTest
@testable import ConvertAll

class ConvertAllTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUnitDescription(){
        let testUnit = ConverterModel.UnitDescription.init(unitType: UnitAngle.degrees, name: "Degree")
        XCTAssertEqual([testUnit.name, testUnit.symbol], ["Degree", "°"])
    }
    
    func testConverterTypeInitialization(){
        let squareMeters = ConverterModel.sharedConverterModel.converterType["Area"]?.first
        XCTAssertEqual([(squareMeters?.name)!, (squareMeters?.symbol)!], ["Square Meters", "m²"])
    }
    
}
