//
//  ViewController.swift
//  Luas Bangun Datar
//
//  Created by Zahid on 25/10/18.
//  Copyright © 2018 Haqqani Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ini adalah textFieldnya
    @IBOutlet weak var sisiPersegi1: UITextField!
    @IBOutlet weak var sisiPersegi2: UITextField!
    @IBOutlet weak var panjangPersegiPanjang: UITextField!
    @IBOutlet weak var lebarPersegiPanjang: UITextField!
    @IBOutlet weak var alasSegitiga: UITextField!
    @IBOutlet weak var tinggiSegitiga: UITextField!
    
    @IBOutlet weak var rusukTrapesium1: UITextField!
    @IBOutlet weak var rusukTrapesium2: UITextField!
    @IBOutlet weak var tinggiTrapesium: UITextField!
    @IBOutlet weak var alasJajargenjang: UITextField!
    @IBOutlet weak var tinggiJajargenjang: UITextField!
    
    
    // ini adalah UILabelnya
    @IBOutlet weak var hasilPersegi: UILabel!
    @IBOutlet weak var hasilPersegiPanjang: UILabel!
    @IBOutlet weak var hasilSegitiga: UILabel!
    @IBOutlet weak var hasilTrapesium: UILabel!
    @IBOutlet weak var hasilJajargenjang: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cariPersegi(_ sender: Any) {
        
        let sisi1 = Int(sisiPersegi1.text!)
        let sisi2 = Int(sisiPersegi2.text!)
        let cariPersegi = sisi1! * sisi2!
        hasilPersegi.text = "\(cariPersegi) cm²"
        
    }
    @IBAction func cariPersegiPanjang(_ sender: Any) {
        let panjang = Int(panjangPersegiPanjang.text!)
        let lebar = Int(lebarPersegiPanjang.text!)
        let cariPersegiPanjang = panjang! * lebar!
        hasilPersegiPanjang.text = "\(cariPersegiPanjang) cm²"
        
        
    }
    @IBAction func cariSegitiga(_ sender: Any) {
        let alas = Int(alasSegitiga.text!)
        let tinggi = Int(tinggiSegitiga.text!)
        let cariSegitiga = alas! * tinggi! / 2
        hasilSegitiga.text = "\(cariSegitiga) cm²"
        
    }
    
    @IBAction func cariTrapesium(_ sender: Any) {
        let rusuk1 = Int(rusukTrapesium1.text!)
        let rusuk2 = Int(rusukTrapesium2.text!)
        let tinggi = Int(tinggiTrapesium.text!)
        let cariTrapesium = (rusuk1! + rusuk2!) * tinggi! / 2
        hasilTrapesium.text = "\(cariTrapesium) cm²"
    }
    
    @IBAction func cariJajargenjang(_ sender: Any) {
        let alas = Int(alasJajargenjang.text!)
        let tinggi = Int(tinggiJajargenjang.text!)
        let cariJajargenjang = alas! * tinggi!
        hasilJajargenjang.text = "\(cariJajargenjang) cm²"
    }
    
}



