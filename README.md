# Atividade-Nginx

## Descrição

Este projeto é uma atividade prática solicitada pela equipe de estágio da Compass.UOL. O objetivo é configurar o Ubuntu no Windows usando o WSL, instalar o Nginx e rodar um script que verifica a cada 5 minutos se o Nginx está ativo e grava o resultado em arquivos de log.

## Passos para Configuração

1. **Instalar WSL no Windows**
   - Ativar o WSL pelo painel de controle do Windows e instalar a distribuição Ubuntu através da Microsoft Store.

2. **Instalar o Nginx**
   ```bash
   sudo apt install nginx

3. **Criar o Script de Verificação**
   - O script deve verificar se o Nginx está ativo.
   - Registrar a data e hora.
   - Gravar o nome do serviço, status e uma mensagem personalizada (`ONLINE` ou `OFFLINE`).
   - Gravar em dois arquivos de log:
       - Um arquivo para para online.
       - Um arquivo para offline.    

4. **Automatizar a Execução do Script**
   - Configurar para executar o script a cada 5 minutos.
     ```bash
     crontab -e
     
## Requisito

- Windows com WSL e Ubuntu instalados.


