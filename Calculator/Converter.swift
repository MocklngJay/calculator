//
//  Converter.swift
//  Calculator
//
//  Created by Julius Baumann on 2020-06-09.
//  Copyright © 2020 Julius Baumann. All rights reserved.
//

import Foundation

public class Converter {

// https://learnappmaking.com/roman-numerals-swift/
    func intToRoman(number: Int) -> String
    {
        let decimals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

        var result = ""
        var number = number

        while number > 0
        {
            for (index, decimal) in decimals.enumerated()
            {
                if number - decimal >= 0 {
                    number -= decimal
                    result += numerals[index]
                    break
                }
            }
        }

        return result
    }

// https://stackoverflow.com/questions/59801831/roman-numeral-converter-in-swift
    func romanToInt(_ roman: String) -> Int {
        
        let glyphsAndValues: [( glyph: String, quantity: Int )] = [
            ("CM", 900), ("M", 1000), ("CD", 400), ("D", 500),
            ("XC", 90), ("C", 100), ("XL", 40), ("L", 50),
            ("IX", 9), ("X", 10), ("IV", 4), ("V", 5),
            ("I", 1)
        ]
        
        var value = 0
        var pos = roman.startIndex
        while pos != roman.endIndex {
            let subString = roman[pos...]
            guard let (glyph, quantity) = glyphsAndValues.first(where: { subString.hasPrefix($0.glyph) }) else {
                return 0
            }
            value += quantity
            pos = roman.index(pos, offsetBy: glyph.count)
        }
        return value
    }

}
