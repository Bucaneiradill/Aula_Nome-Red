//
//  ContentView.swift
//  BH Turismo
//
//  Created by Turma01-14 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var sheetView: Bool = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @StateObject var viewModel = ViewModel()
    @State var infoLocal = PontoTurisco(nome: "", descricao: "", localizacao: "", tipo: "", imagem: "")
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 40) {
                    ForEach(viewModel.pontoTuristico, id: \.self) { e in
                        Text(e.nome)
                        Button{
                            infoLocal = e
                            sheetView.toggle(
                        )}
                        label:{
                            CardView(card: e)
                                .frame(width: 10)
                                .tint(.black)
                        }
                        .sheet(isPresented: $sheetView){
                            SheetViewDetalhes(selecaoSheetView: infoLocal)
                        }
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
