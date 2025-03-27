//
//  ViewModel.swift
//  BH Turismo
//
//  Created by Turma01-14 on 27/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    @Published var pontoTuristico: [PontoTurisco] = []
 //   var casa = UserDefaults.standard.string(forKey: "casa")!
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/getAula1Heloisa") else {
            return
        }
        
        let task  = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([PontoTurisco].self, from: data)
                DispatchQueue.main.async {
                    self?.pontoTuristico = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

