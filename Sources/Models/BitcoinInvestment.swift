//
//  BitcoinInvestment.swift
//  BitcoinInvestmentLoader
//
//  Created by Caio Vasconcelos de Souza on 04/03/25.
//

import Foundation
import Money

public struct BitcoinInvestment: Identifiable, Equatable {
    
    public enum InvestmentError: LocalizedError {
        case currenciesNotEqual
        
        public var errorDescription: String? { "Currencies must be the same" }
    }
    
    public let id: UUID
    public let amount: MonetaryValue
    public let bitcoinPriceAtPurchase: MonetaryValue
    public let purchaseDate: Date
    public let note: String?
    public let createdAt: Date
    public let modifiedAt: Date?
    
    public init(id: UUID,
         amount: MonetaryValue,
         bitcoinPriceAtPurchase: MonetaryValue,
         purchaseDate: Date,
         note: String?,
         createdAt: Date,
         modifiedAt: Date?) throws {
        
        guard amount.currency.isEqual(to: bitcoinPriceAtPurchase.currency) else {
            throw InvestmentError.currenciesNotEqual
        }
        self.id = id
        self.amount = amount
        self.bitcoinPriceAtPurchase = bitcoinPriceAtPurchase
        self.purchaseDate = purchaseDate
        self.note = note
        self.createdAt = createdAt
        self.modifiedAt = modifiedAt
    }
}
