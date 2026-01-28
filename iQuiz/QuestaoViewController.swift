//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Jadley Felipe on 22/01/26.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroDaQuestao = 0
    
    @IBOutlet weak var tituloQuestao: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let certaResposta = questoes[numeroDaQuestao].respostaCorreta == sender.tag
        
        if (certaResposta) {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if (numeroDaQuestao < questoes.count-1) {
            numeroDaQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaDesempenho()
        }
        
    }
    
    func navegaParaDesempenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tituloQuestao.numberOfLines = 0
        tituloQuestao.textAlignment = .center
        
        
        

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao() {
        tituloQuestao.text = questoes[numeroDaQuestao].titulo
        configurarBotoes()
    }
    
    func configurarBotoes() {
        for botao in botoesRespostas {
            botao.setTitle(questoes[numeroDaQuestao].respostas[botao.tag], for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
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
