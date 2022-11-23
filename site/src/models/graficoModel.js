var database = require("../database/config");

function buscarUltimosCategoria(idResposta) {

    instrucaoSql = ''

   if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select categoria ,count(categoria) as qtd_respostas from resposta group by categoria order by qtd_respostas;`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarUltimosTecnica() {
console.log('Model')
    instrucaoSql = ''

   if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select tecnica ,count(tecnica) as qtd_respostas from resposta group by tecnica order by qtd_respostas;`;



    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarUltimosObjetivo() {
    console.log('Model')
        instrucaoSql = ''
    
       if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
            instrucaoSql = `select objetivo ,count(objetivo) as qtd_respostas from resposta group by objetivo order by qtd_respostas;`;
    
    
    
        } else {
            console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
            return
        }
    
        console.log("Executando a instrução SQL: \n" + instrucaoSql);
        return database.executar(instrucaoSql);
    }

module.exports = {
    buscarUltimosCategoria,
    buscarUltimosTecnica,
    buscarUltimosObjetivo
}
