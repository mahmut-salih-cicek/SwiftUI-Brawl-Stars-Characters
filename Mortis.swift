//
//  Mortis.swift
//  Brawls Stars
//
//  Created by xmod on 7.05.2022.
//


import SwiftUI

struct Mortis: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
       
        NavigationView{
            
            VStack{
               
                Image("mortis")
                    .resizable()
                    .frame(width: 200.0, height: 300,alignment: .center)
                    
                    
                NavigationLink(destination: Mortis(), tag: 1, selection: $selection)
                    {
                        
                        Button {
                            self.selection = 1
                        } label: {
                            Image("mortis")
                                .resizable()
                                .frame(width: 200, height: 300, alignment: .top)
                        }
                        
                        
                        }
                

                
                Text("Mortis, düşük hasar çıkışı ve çok yavaş yeniden yükleme hızı pahasına saldırısı ve çok hızlı hareket hızı ile orta düzeyde yüksek sağlık ve büyük hareket kabiliyetine sahip Efsanevi bir Kavgacıdır. Kürekini savurarak ve birkaç taşı ileri atarak saldırır ve yoluna çıkan düşmanlara hasar verir. Mortis'in üç cephanesinin tamamına sahip olduğunda, bir çubuk birkaç saniye içinde şarj olur ve yüklü bir çubuk, bir sonraki saldırısının menzilini artırır. Süper gücü, düşmanlara zarar veren ve Mortis'i iyileştiren bir yarasa sürüsü çağırır. İlk Gadget'ı Combo Spinner, küreğini anında etrafında döndürerek yakındaki düşmanlara hasar verir. İkinci Gadget'ı Survival Shovel, yükleme hızını anlık olarak ikiye katlar. İlk Yıldız Gücü, Ürpertici Hasat, bir düşman Kavgacı yendiğinde onu iyileştirir. İkinci Yıldız Gücü, Sarmal Yılan, saldırı çubuğunu şarj etmek için gereken süreyi azaltır.")
                    .padding()
                
                Spacer()
            }
            
        }
        
        
    }
}

struct Mortis_Previews: PreviewProvider {
    static var previews: some View {
        Mortis()
    }
}
