//
//  ImageDownloaderService.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import Foundation


class ImageDownloaderClient : ObservableObject{
    
    
    @Published var indirilenGorsel : Data?
    
    func gorselIndir(url:String){
       
        guard let imageUrl = URL(string: url)
        else{
            return print("url hatali")
        }
        
        
        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            
            guard let data = data,error == nil
            else {
                return print("data gelmedi")
            }
            
            DispatchQueue.main.async {
                self.indirilenGorsel = data
            }
    
            
        }.resume()
                
    }
    
    
}


enum ImageDownloaderError :Error{
    case urlHatali
    case resimInmedi
    case resimIslenmedi
}
