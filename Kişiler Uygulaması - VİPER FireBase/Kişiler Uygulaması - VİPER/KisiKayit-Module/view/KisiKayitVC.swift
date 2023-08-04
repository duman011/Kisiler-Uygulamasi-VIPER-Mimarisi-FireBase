//
//  KisiKayitVC.swift
//  Kişiler Uygulaması - VİPER
//
//  Created by Yaşar Duman on 2.08.2023.
//

import UIKit

class KisiKayitVC: UIViewController {

    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var kisiKayitPresenterNesnesi:ViewToPresenterKisiKayitProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        KisiKayitRouter.creatModule(ref: self)

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text,let kt = tfKisiTel.text{
            kisiKayitPresenterNesnesi?.ekle(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    func kayıt(kisi_ad:String,kisi_tel:String){
        print("Kişi Kayıt : \(kisi_ad) -- \(kisi_tel)")
    }
    
}
