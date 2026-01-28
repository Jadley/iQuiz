//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Jadley Felipe on 27/01/26.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLaber: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout( ) {
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 12
    }
    
    func configurarDesempenho( ) {
        guard let pontuacao = pontuacao else { return }
        
        resultadoLaber.text = "Você acertou \(pontuacao) de \(questoes.count) questões."
        
        let percentual = (Double(pontuacao) / Double(questoes.count)) * 100.0
        self.percentualLabel.text = "Percentual final: \(Int(percentual))%"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
