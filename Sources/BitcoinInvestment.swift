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
    public let date: Date
    public let note: String?
    
    public init(id: UUID, amount: Decimal, bitcoinPriceAtPurchase: Decimal, date: Date, note: String?) {
        self.id = id
        self.amount = amount
        self.bitcoinPriceAtPurchase = bitcoinPriceAtPurchase
        self.date = date
        self.note = note
    }
}
