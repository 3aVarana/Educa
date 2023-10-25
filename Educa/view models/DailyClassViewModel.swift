//
//  DailyClassViewModel.swift
//  Educa
//
//  Created by Victor Arana on 10/24/23.
//

import Foundation

class DailyClassViewModel: ObservableObject {
    @Published var dailyClass = DailyCourse(date: "Martes 24 de octubre de 2023")
    @Published var description: String = "Avanzar temas"
}
