//
//  BrawDetailViewModel.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import Foundation



class BrawDetailViewModel : ObservableObject {
    
    @Published var brawDetail : BrawDetail?
    let downloadService = BrawDownloadService()
    
    func getDataFromInternet(brawId:String){
        
        downloadService.downloadCharDetail(id: brawId) { (sonuc) in
            
            switch sonuc{
            case.failure(let hata):
                print(hata)
            case.success(let detail):
                self.brawDetail = BrawDetail(detail: detail)
            }
            
            
        }
        
    }
    
}



struct BrawDetail{
    
    let detail : BrawDetailModel
    
    var name : String{
        detail.name
    }
    
    var description :String{
        detail.description
    }
    
    var imageUrl2 : String{
        detail.imageUrl2
    }
    
}
