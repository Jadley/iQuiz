//
//  ViewController.swift
//  iQuiz
//
//  Created by Jadley Felipe on 21/01/26.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botão foi pressionado")
    }
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configuraLayout()
    }
    
    func configuraLayout() {
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 16.0
    }


}

