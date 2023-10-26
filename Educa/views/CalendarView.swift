//
//  CalendarView.swift
//  Educa
//
//  Created by Victor Arana on 10/25/23.
//

import SwiftUI

struct CalendarView: View {
    @StateObject var viewModel = CalendarViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            Image(systemName: "calendar")
                .resizable()
                .frame(width: 100, height: 100)
            Text("See here your important things...")
        }
        .navigationTitle("My Calendar")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        CalendarView()
    }
}
