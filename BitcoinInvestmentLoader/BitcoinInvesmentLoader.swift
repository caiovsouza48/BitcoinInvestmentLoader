//
//  BitcoinInvesmentLoader.swift
//  BitcoinInvestmentLoader
//
//  Created by Caio Vasconcelos de Souza on 04/03/25.
//

import Foundation

public protocol BitcoinInvestmentLoader {
    func load() async throws -> [BitcoinInvesment]
}
