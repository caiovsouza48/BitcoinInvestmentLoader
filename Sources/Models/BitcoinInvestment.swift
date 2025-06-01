//
//  BitcoinInvestment.swift
//  BitcoinInvestmentLoader
//
//  Created by Caio Vasconcelos de Souza on 04/03/25.
//

import Foundation
import Money

public struct BitcoinInvestment: Identifiable, Equatable {
    
    public let id: UUID
    public let amount: MonetaryValue
    public let bitcoinPriceAtPurchase: MonetaryValue
    public let purchaseDate: Date
    public let note: String?
    
    public init(id: UUID, amount: MonetaryValue, bitcoinPriceAtPurchase: MonetaryValue, purchaseDate: Date, note: String?) throws {
        guard amount.currency.isEqual(to: bitcoinPriceAtPurchase.currency) else {
            throw NSError(domain: "BitcoinInvestmentLoader", code: 1001, userInfo: [NSLocalizedDescriptionKey : "Currencies must be the same"])
        }
        self.id = id
        self.amount = amount
        self.bitcoinPriceAtPurchase = bitcoinPriceAtPurchase
        self.purchaseDate = purchaseDate
        self.note = note
    }
}
