//
//   Questao.swift
//  iQuiz
//
//  Created by Jadley Felipe on 27/01/26.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patrono", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Qual ano foi lançado Vingadores Ultimato?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),
    Questao(titulo: "Qual ano foi lançado Avatar 2?", respostas: ["2014", "2022", "2023"], respostaCorreta: 1)]
