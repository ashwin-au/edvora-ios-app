//
//  GridStack.swift
//  Edvora
//
//  Created by TeCh_SavVy on 18/04/22.
//


import SwiftUI
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

    var body: some View {
        VStack (spacing: 2){
            ForEach(0 ..< rows, id: \.self) { row in
                HStack(spacing: 2) {
                    ForEach(0 ..< columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

