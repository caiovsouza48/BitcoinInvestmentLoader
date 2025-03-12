//
//  BitcoinInvestment.swift
//  BitcoinInvestmentLoader
//
//  Created by Caio Vasconcelos de Souza on 04/03/25.
//

import Foundation

public struct BitcoinInvestment: Equatable {
    public let amount: Decimal
    public let bitcoinPriceAtPurchase: Decimal
    public let date: Date
    public let note: String?
}
