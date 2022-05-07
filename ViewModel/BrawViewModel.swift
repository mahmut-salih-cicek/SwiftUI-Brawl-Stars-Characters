//
//  BrawViewModel.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import Foundation
import SwiftUI


class BrawViewModel : ObservableObject{
    
    @Published var braw : [BrawView] = []
    let downloaderService = BrawDownloadService()
    
    func getDataFromInternet(){
        downloaderService.downloadBraw { (sonuc) in
            
            switch sonuc{
                
            case.failure(let hata):
                print(hata)
            case.success(let data):
                if let data = data{
                    DispatchQueue.main.async {
                        print(data)
                        self.braw = data.map(BrawView.init)
                    
                    }
                }
                
              
                
            }
            
        }
    }
    
}



struct BrawView{
    
    let braw : BrawModel
    
    var id : Int{
        braw.id
    }
    
    var avatarId : Int{
        braw.avatarId
    }
    
    var name : String{
        braw.name
    }
    
    var imageUrl3 :String{
        braw.imageUrl3
    }
    
    var description : String{
        braw.description
    }
    
}
