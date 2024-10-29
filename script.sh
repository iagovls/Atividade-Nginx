#!/bin/bash

# Define variáveis de data e hora
DATA_HORA=$(date "+%d-%m-%Y %H:%M:%S")

# Define o nome do serviço
SERVICO="nginx"

# Verifica o status do serviço Nginx
STATUS=$(systemctl is-active $SERVICO)

# Define o diretório de saída
DIRETORIO_SAIDA="/home/iago/atividadeNginx"
ONLINE="$DIRETORIO_SAIDA/servico_online.log"
OFFLINE="$DIRETORIO_SAIDA/servico_offline.log"

# Cria o diretório, caso não exista
mkdir -p "$DIRETORIO_SAIDA"

# Condicional para verificar se o serviço está ativo
if [ "$STATUS" = "active" ]; then
    echo "$DATA_HORA - $SERVICO - Status: $STATUS - Mensagem: ONLINE" >> "$ONLINE"
else
    echo "$DATA_HORA - $SERVICO - Status: $STATUS - Mensagem: OFFLINE" >> "$OFFLINE"
fi
