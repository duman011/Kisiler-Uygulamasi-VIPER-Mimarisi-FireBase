//
//  KisiDetayProtocols.swift
//  Kişiler Uygulaması - VİPER
//
//  Created by Yaşar Duman on 2.08.2023.
//

import Foundation


protocol ViewToPresenterKisiDetayProtocol {
    var kisiDetayInteractor : PresenterToInteractorKisiDetayProtocol? {get set}
    func guncelle(kisi_id:String,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(kisi_id:String,kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiDetayProtocol {
    static func creatModule(ref:KisiDetayVC)
}
