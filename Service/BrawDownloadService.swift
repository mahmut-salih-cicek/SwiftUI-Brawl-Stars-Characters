//
//  BrawDownloadService.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import Foundation


class BrawDownloadService{
    
    
    func downloadBraw(completion:@escaping(Result<[BrawModel]?,BrawError>) -> Void ){
        
        guard let url = URL(string: "https://api.brawlapi.com/v1/brawlers")
        else{
            return completion(.failure(.urlHatali))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data , error == nil
            else {
               return completion(.failure(.veriGelmedi))
            }
            
            guard let dataParse = try? JSONDecoder().decode(BrawList.self, from: data)
            else{
                return completion(.failure(.veriIslenmedi))
            }
            
            
            completion(.success(dataParse.list))

            
        }.resume()
        
        
        
    }
    
    
    func downloadCharDetail(id:String, completion: @escaping(Result<BrawDetailModel,BrawError>) ->Void){
        
        
        guard let url = URL(string: "https://api.brawlapi.com/v1/brawlers/\(id)")
        else{
            return completion(.failure(.urlHatali))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data,error == nil
            else {
                return completion(.failure(.veriGelmedi))
            }
            
            guard let dataParse = try? JSONDecoder().decode(BrawDetailModel.self, from: data)
            else{
                return completion(.failure(.veriIslenmedi))
            }

            completion(.success(dataParse))
            
        }.resume()
        
    }
    
    
}


enum BrawError:Error{
    case veriGelmedi
    case veriIslenmedi
    case urlHatali
}
