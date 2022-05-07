//
//  BrawDetailView.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import SwiftUI

struct BrawDetailView: View {
    
    let brawId : Int
    @ObservedObject var brawDetailViewModel = BrawDetailViewModel()
    
    
   
    
    var body: some View {
        
        VStack{
            
            Ozelimage(url: brawDetailViewModel.brawDetail?.imageUrl2 ?? "")
                .frame(width: 200, height: 200)
                .aspectRatio(10.0, contentMode: .fit)
                .clipShape(Circle())
                
            
               
            
            
            Text(brawDetailViewModel.brawDetail?.description ?? "gelmedi")
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 50, leading: 10, bottom: 0, trailing: 10))
                .font(.callout)
            
            Spacer()
            
        }.onAppear {
//            VStack görünümü basladiği an verileri çek diyoruz
            self.brawDetailViewModel.getDataFromInternet(brawId: String(brawId))
        }
        
        
    }
}

struct BrawDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BrawDetailView(brawId:16000057)
    }
}
