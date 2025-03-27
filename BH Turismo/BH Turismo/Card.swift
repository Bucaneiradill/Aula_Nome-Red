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
                } .frame(width: 150, height: 60)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 0,
                            bottomTrailingRadius: 0,
                            topTrailingRadius: 20
                        )
                    )
                Text(card?.nome ?? "nome")
                    .font(.largeTitle)
                    .foregroundStyle(.black)

                Text(card?.localizacao ?? "localiza")
                    .font(.title3)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 150)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CardView()
}
