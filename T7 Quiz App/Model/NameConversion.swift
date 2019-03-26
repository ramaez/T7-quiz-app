//
//  NameConversion.swift
//  T7 Quiz App
//
//  Created by Ruben Amaez on 3/25/19.
//  Copyright © 2019 ramaez. All rights reserved.
//

import Foundation

class NameConversion {
    func convertStringToFighter(name: String) -> Fighter {
        if name == "Eddy Gordo" {
            return .eddy
        }
        else if name == "Jin Kazama" {
            return .jin
        }
        else {
            return .akuma
        }
    }
}
