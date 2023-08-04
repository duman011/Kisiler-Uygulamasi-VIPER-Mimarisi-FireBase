//
//  KisiDetayInteractor.swift
//  Kişiler Uygulaması - VİPER
//
//  Created by Yaşar Duman on 2.08.2023.
//

import Foundation
import Firebase
class KisiDetayInteractor : PresenterToInteractorKisiDetayProtocol{
    
    var refKisiler = Database.database().reference().child("kisiler")
    
    func kisiGuncelle(kisi_id: String, kisi_ad: String, kisi_tel: String) {
        let guncellenenKisi = ["kisi_ad":kisi_ad,"kisi_tel":kisi_tel]
        refKisiler.child(kisi_id).updateChildValues(guncellenenKisi)
    }
    
}
