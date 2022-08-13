//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Kamal Sharma R on 13/08/22.
//

import Foundation
import SwiftUI

extension Color {
    static let background = Color("Background")
    static let icon = Color("Icon")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    // lazy method
    static let allNumericUSA: DateFormatter = {
        print("Initializing Date Formatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter
    }()
}


extension String {
    func dateParse() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else {return Date() }
        
        return parsedDate
    }
}
