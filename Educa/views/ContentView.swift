//
//  ContentView.swift
//  Educa
//
//  Created by Victor Arana on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CoursesView(viewModel: CoursesViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
