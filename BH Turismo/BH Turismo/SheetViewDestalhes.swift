//
//  SheetViewDestalhes.swift
//  BH Turismo
//
//  Created by Turma01-14 on 28/03/25.
//

import SwiftUI

struct SheetViewDetalhes: View {
    @State var selecaoSheetView : PontoTurisco
    var body: some View {
        ZStack{
            VStack{
                AsyncImage(url: URL(string: selecaoSheetView.imagem)){
                    img in img
                }placeholder: {
                    Text("")
                        .background()
                }
                .frame(width: .infinity)
                Text(selecaoSheetView.nome)
                    .font(.title)
                Text(selecaoSheetView.localizacao)
                    .font(.title2)
                Text(selecaoSheetView.descricao)
            }
        }
    }
}

#Preview {
    SheetViewDetalhes(selecaoSheetView: PontoTurisco(nome: "", descricao: "", localizacao: "", tipo: "", imagem: ""))
}
