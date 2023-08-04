//
//  AnasayfaInteractor.swift
//  Kişiler Uygulaması - VİPER
//
//  Created by Yaşar Duman on 2.08.2023.
//

import Foundation
import Firebase
class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    var refKisiler = Database.database().reference().child("kisiler")
    
    
    func tumKisileriAl() {
        refKisiler.observe(.value, with: {snapshot in
            var liste = [Kisiler]()
            
            if let gelenVeri = snapshot.value as? [String:AnyObject] {
                for satir in gelenVeri {
                    if let d = satir.value as? NSDictionary {
                        let kisi_id = satir.key
                        let kisi_ad = d["kisi_ad"] as? String ?? ""
                        let kisi_tel = d["kisi_tel"] as? String ?? ""
                        
                        let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                        liste.append(kisi)
                    }
                }
            }
            self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        })
        
        
        
    }
    
    func kisiAra(aramaKelimesi: String) {
        refKisiler.observe(.value, with: {snapshot in
            var liste = [Kisiler]()
            
            if let gelenVeri = snapshot.value as? [String:AnyObject] {
                for satir in gelenVeri {
                    if let d = satir.value as? NSDictionary {
                        let kisi_id = satir.key
                        let kisi_ad = d["kisi_ad"] as? String ?? ""
                        let kisi_tel = d["kisi_tel"] as? String ?? ""
                        
                        if kisi_ad.lowercased().contains(aramaKelimesi.lowercased()){
                            let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                            liste.append(kisi)
                        }
                    }
                }
            }
            self.anasayfaPresenter?.presenteraVeriGonder(kisilerListesi: liste)
        })
        
    }
    
    func kisiSil(kisi_id: String) {
        refKisiler.child(kisi_id).removeValue()
        
    }
    
}
