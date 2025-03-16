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
    
    public init(amount: Decimal, bitcoinPriceAtPurchase: Decimal, date: Date, note: String?) {
        self.amount = amount
        self.bitcoinPriceAtPurchase = bitcoinPriceAtPurchase
        self.date = date
        self.note = note
    }
}
