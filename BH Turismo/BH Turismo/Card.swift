//
//  Card.swift
//  BH Turismo
//
//  Created by Turma01-14 on 27/03/25.
//

import SwiftUI

struct CardView: View {
    @State var card: PontoTurisco?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)

            VStack {
                AsyncImage(url: URL(string: card?.imagem ?? "imagem")){
                    img in
                    img.resizable()
                }placeholder: {
                    Rectangle()
                        .foregroundStyle(Color.gray)
                   //Text("")
                        //.background()
                } .frame(width: 150, height: 100)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 20
                        )
                    )
                Text(card?.nome ?? "nome")
                    .font(.title2)
                    .foregroundStyle(.black)

                Text(card?.localizacao ?? "localiza")
//                    .font(.title3)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 150)
        .shadow(color: Color.black.opacity(0.1), radius: 10)
    }
}

#Preview {
    CardView()
}
