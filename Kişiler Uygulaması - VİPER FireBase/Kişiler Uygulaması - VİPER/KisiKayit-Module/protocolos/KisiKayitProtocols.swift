//
//  KisiKayitProtocols.swift
//  Kişiler Uygulaması - VİPER
//
//  Created by Yaşar Duman on 2.08.2023.
//

import Foundation

protocol ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor : PresenterToInteractorKisiKayitProtocol? {get set}
    func ekle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiKayitProtocol {
    static func creatModule(ref:KisiKayitVC)
}
