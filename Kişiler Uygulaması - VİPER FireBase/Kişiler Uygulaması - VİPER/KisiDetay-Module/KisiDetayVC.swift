//
//  KisiDetayVC.swift
//  Kişiler Uygulaması - VİPER
//
//  Created by Yaşar Duman on 2.08.2023.
//

import UIKit

class KisiDetayVC: UIViewController {

    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var kisi:Kisiler?
    var kisiDetayPresenterNesnesi : ViewToPresenterKisiDetayProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }
        KisiDetayRouter.creatModule(ref: self)
    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text,let kt = tfKisiTel.text, let k = kisi{
            kisiDetayPresenterNesnesi?.guncelle(kisi_id: k.kisi_id!, kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    
    

}
