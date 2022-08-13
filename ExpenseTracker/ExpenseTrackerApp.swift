//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Kamal Sharma R on 03/08/22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
