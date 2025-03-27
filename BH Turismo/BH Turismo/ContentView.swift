//
//  ContentView.swift
//  BH Turismo
//
//  Created by Turma01-14 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @StateObject var viewModel = ViewModel()
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.pontoTuristico, id: \.self) { e in
                        CardView(card: e)
                            .frame(width: 10)
                    }
                }
                .padding(.horizontal)
            }
//            .frame(maxHeight: 300)
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
