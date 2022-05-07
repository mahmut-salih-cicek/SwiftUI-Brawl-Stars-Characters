//
//  Ozelimage.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//

import SwiftUI

struct Ozelimage: View {
    
    let url : String
    @ObservedObject var imageDownloaderService = ImageDownloaderClient()
    
    init(url:String){
        self.url = url
        self.imageDownloaderService.gorselIndir(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageDownloaderService.indirilenGorsel{
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }else{
        return Image("loading")
                .resizable()
                
                
    }
    }
}


struct Ozelimage_Previews: PreviewProvider {
    static var previews: some View {
        Ozelimage(url: "https://cdn.brawlify.com/emoji/Janet.png")
    }
}
