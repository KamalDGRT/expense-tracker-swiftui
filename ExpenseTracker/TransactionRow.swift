//
//  TransactionRow.swift
//  ExpenseTracker
//
//  Created by Kamal Sharma R on 13/08/22.
//

import SwiftUI
import SwiftUIFontIcon

struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View {
        HStack(spacing: 20) {
            
            //MARK :- Transaction Category Icon
            RoundedRectangle(cornerRadius: 50,style: .continuous)
                .fill(Color.icon.opacity(0.5))
                .frame(width: 50, height: 50)
                .overlay {
                    FontIcon.text(.awesome5Solid(code: transaction.icon), fontsize: 24,color: Color.icon)
                }
            
            VStack(alignment: .leading, spacing: 10) {
                //MARK :- Transaction Merchant
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1) //Sets the maximum number of lines that text can occupy in this view.
                
                //MARK :- Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .lineLimit(1)
                    .opacity(0.7)
                
                //MARK :- Transaction Date
                Text(transaction.dateParsed,format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            //MARK :- Transaction Amount
            //if its credit, color = .secondary else = .primary
            Text(transaction.negOrPosAmount, format: .currency(code: "USD"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? .secondary : .primary)
            
        }
        .padding([.top,.bottom], 8)
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionRow(transaction: transactionPreviewData)
            TransactionRow(transaction: transactionPreviewData)
                .preferredColorScheme(.dark)
        }
    }
}
