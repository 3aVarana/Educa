//
//  DailyClassView.swift
//  Educa
//
//  Created by Victor Arana on 10/24/23.
//

import SwiftUI

struct DailyClassView: View {
    @StateObject var viewModel = DailyClassViewModel()
    var body: some View {
        List {
            Section {
                Text(viewModel.dailyClass.date)
                    .font(.system(.title3, design: .monospaced, weight: .bold))
            }
            Section {
                Text("Contenido")
                    .font(.system(.title3, design: .monospaced, weight: .semibold))
                HStack {
                    TextField("Enter text here", text: $viewModel.description)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.vertical, 8)
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
                ForEach([1, 2, 3, 4, 5], id: \.self) { task in
                    Text("- Task \(task)")
                        .listRowSeparator(.hidden)
                }
            }
            Section {
                HStack {
                    Text("Tareas")
                        .font(.system(.title3, design: .monospaced, weight: .semibold))
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
                ForEach([1, 2], id: \.self) { task in
                    Text("- Tarea # \(task)")
                        .listRowSeparator(.hidden)
                }
            }
            Section {
                HStack {
                    Text("Evaluación")
                        .font(.system(.title3, design: .monospaced, weight: .semibold))
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
                ForEach([1], id: \.self) { task in
                    Text("- Examen Enunciado # \(task)")
                        .listRowSeparator(.hidden)
                }
            }
            Section {
                HStack {
                    Text("Archivos")
                        .font(.system(.title3, design: .monospaced, weight: .semibold))
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible())], spacing: 16) {
                    ForEach(["1", "2"], id: \.self) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                            Text("Archivos.pdf")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(16)
                
                HStack {
                    Text("Fotos")
                        .font(.system(.title3, design: .monospaced, weight: .semibold))
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                    })
                }
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible())], spacing: 16) {
                    ForEach(["1", "2"], id: \.self) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke()
                            Text("Archivos.pdf")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle("Daily")
        .navigationBarItems(trailing: Button(action: {
            
        }, label: {
            NavigationLink(destination: StudentListView()) {
                Image(systemName: "list.bullet.clipboard")
            }
        }))
    }
}

#Preview {
    NavigationView {
        DailyClassView()
            .navigationBarTitleDisplayMode(.inline)
    }
}
