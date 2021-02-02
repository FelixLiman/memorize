//
//  Array+Only.swift
//  Memorize
//
//  Created by Felix Liman on 03/11/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
