//
//  BitcoinInvestment.swift
//  BitcoinInvestmentLoader
//
//  Created by Caio Vasconcelos de Souza on 04/03/25.
//

import Foundation

public struct BitcoinInvestment: Identifiable, Equatable {
    
    public let id: UUID
    public let amount: Decimal
    public let bitcoinPriceAtPurchase: Decimal
    public let purchaseDate: Date
    public let note: String?
    
    public init(id: UUID, amount: Decimal, bitcoinPriceAtPurchase: Decimal, purchaseDate: Date, note: String?) {
        self.id = id
        self.amount = amount
        self.bitcoinPriceAtPurchase = bitcoinPriceAtPurchase
        self.purchaseDate = purchaseDate
        self.note = note
    }
}
