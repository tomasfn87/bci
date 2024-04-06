#!/bin/bash

# Verifica se o número de argumentos passados está correto
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <termo> <arquivo>"
    exit 1
fi

# Atribui os argumentos a variáveis
termo="$1"
arquivo="$2"

# Executa o comando grep e armazena a saída em uma variável
saida_grep=$(grep --color=always -c "$termo" "$arquivo")

# Exibe a saída do grep com destaque em vermelho
grep --color=always "$termo" "$arquivo"

# Exibe o número de ocorrências encontradas
echo; echo "Termo '$termo' encontrado $saida_grep vezes."

