//
//  ContentView.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var brawViewModel : BrawViewModel
    
    init(){
        self.brawViewModel = BrawViewModel()
        self.brawViewModel.getDataFromInternet()
    }
    
    var body: some View {
       
        NavigationView{
            
            VStack{
                List(brawViewModel.braw , id: \.id){
                    braw in
                    
                    NavigationLink {
                        
                        BrawDetailView(brawId: braw.id)
                        
                    } label: {
                      
                        HStack{
                            
                            Ozelimage(url: braw.imageUrl3)
                                .frame(width: 75, height: 75)
                         
                            VStack(alignment: .leading){
                                
                                Text(braw.name)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    .padding(.top, 5.0)
                                    .foregroundColor(.blue)
                                    
                                Spacer()
                                   
                                Text(braw.description)
                                    .lineLimit(2)
                                    
                            }
                            
                        }
                        
                    }

                   
                    
                }
            }.navigationTitle("Brawl Characters")
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
