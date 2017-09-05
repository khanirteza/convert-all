//
//  ConverterModel.swift
//  ConvertAll
//
//  Created by Mohammad Irteza Khan on 9/4/17.
//  Copyright © 2017 Mohammad Irteza Khan. All rights reserved.
//

import Foundation

// Struture to store description of the unit for all coversion type. Symbol is retrieved from the passed unit type.
struct UnitDescription{
    let unitType: Unit
    let name: String
    let symbol: String
    
    init(unitType: Unit, name: String){
        self.unitType = unitType
        self.name = name
        symbol = unitType.symbol
    }
}


//  ConverterModel is a singleton class that provides a single instance of the model named sharedConverterModel and allow to access neccessary units.
class ConverterModel{
    
    // Creating the shared single instance.
    static let sharedConverterModel = ConverterModel()
    
    
    
    var converterGroup: [String]
    var converterType: [String: [UnitDescription]]
    
    private init(){
        
        converterGroup = [String]()
        converterType = [String: [UnitDescription]]()
        
        // List of all converter type for angle.
        let Angle = [UnitDescription.init(unitType: UnitAngle.degrees, name: "Degrees"),
                     UnitDescription.init(unitType: UnitAngle.arcMinutes, name: "Arc Minutes"),
                     UnitDescription.init(unitType: UnitAngle.arcSeconds, name: "Arc Seconds"),
                     UnitDescription.init(unitType: UnitAngle.gradians, name: "Gradians"),
                     UnitDescription.init(unitType: UnitAngle.radians, name: "Radians"),
                     UnitDescription.init(unitType: UnitAngle.revolutions, name: "Revolutions")
        ]
        
        // List of all converter type for area.
        let Area = [UnitDescription.init(unitType: UnitArea.squareMeters, name: "Square Meters"),
                    UnitDescription.init(unitType: UnitArea.squareKilometers, name: "Square Kilometers"),
                    UnitDescription.init(unitType: UnitArea.squareMegameters, name: "Square Megameters"),
                    UnitDescription.init(unitType: UnitArea.squareCentimeters, name: "Square Centimeters"),
                    UnitDescription.init(unitType: UnitArea.squareMillimeters, name: "Square Millimeters"),
                    UnitDescription.init(unitType: UnitArea.squareMicrometers, name: "Square Micrometers"),
                    UnitDescription.init(unitType: UnitArea.squareNanometers, name: "Square Nanometers"),
                    UnitDescription.init(unitType: UnitArea.squareInches, name: "Square Inches"),
                    UnitDescription.init(unitType: UnitArea.squareFeet, name: "Square Feet"),
                    UnitDescription.init(unitType: UnitArea.squareYards, name: "Square Yards"),
                    UnitDescription.init(unitType: UnitArea.squareMiles, name: "Square Miles"),
                    UnitDescription.init(unitType: UnitArea.acres, name: "Acres"),
                    UnitDescription.init(unitType: UnitArea.ares, name: "Ares"),
                    UnitDescription.init(unitType: UnitArea.hectares, name: "Hectares")
        ]
        
        converterType["Angle"] = Angle
        converterType["Area"] = Area
        
        for item in converterType{
            converterGroup.append(item.key)
        }
        
    }
    
}

