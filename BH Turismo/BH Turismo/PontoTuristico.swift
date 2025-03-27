//
//  PontosTuristicos.swift
//  BH Turismo
//
//  Created by Turma01-14 on 27/03/25.
//

import Foundation

struct PontoTurisco: Decodable, Hashable {
    let nome: String
    let descricao: String
    let localizacao: String
    let tipo: String
    let imagem: String
}

