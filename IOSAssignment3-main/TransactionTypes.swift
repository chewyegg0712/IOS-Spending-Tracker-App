//
//  TransactionTypes.swift
//  Spending Tracker
//
//  Created by Michael Lu on 9/5/2024.
//

import SwiftUI

enum TransactionTypes: String, CaseIterable, Identifiable {
    case food = "Food"
    case groceries = "Groceries"
    case transport = "Transport"
    case entertainment = "Entertainment"
    case salary = "Salary"
    case other = "Others"
    
    var id: String{self.rawValue}
    @ViewBuilder
    // images each category
    var transactionType: some View {
        switch self {
        case .food:
            Image(systemName: "fork.knife")
            Text(self.rawValue)
        case .groceries:
            Image(systemName: "cart")
            Text(self.rawValue)
        case .transport:
            Image(systemName: "car")
            Text(self.rawValue)
        case .entertainment:
            Image(systemName: "movieclapper")
            Text(self.rawValue)
        case .salary:
            Image(systemName: "dollarsign.square.fill")
            Text(self.rawValue)
        case .other:
            Image(systemName: "doc.questionmark")
            Text(self.rawValue)

        }
    }
}
