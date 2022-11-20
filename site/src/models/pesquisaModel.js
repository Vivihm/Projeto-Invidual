var database = require("../database/config")

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function responder(categoria, tecnica, objetivo) {
    console.log("ACESSEI O PESQUISA MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function responder():", categoria, tecnica, objetivo);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO pesquisa (categoria, tecnica, objetivo) VALUES ('${categoria}', '${tecnica}', '${objetivo}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    responder,
};