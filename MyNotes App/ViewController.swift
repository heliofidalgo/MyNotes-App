//
//  ViewController.swift
//  MyNotes App
//
//  Created by Helio Marcus Nery Fidalgo on 11/11/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textoCampo: UITextView!
    
    let chave = "myNote"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
        if let texto = textoCampo.text{
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    func recuperaNota() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
        
            return textoRecuperado as! String
            
           }
        
        return ""
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("usuario pressionou a tela")
        
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperaNota()
    }


}

