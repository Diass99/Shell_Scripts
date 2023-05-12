#!/bin/bash
#######################################
#Script para tratamento de dados
#######################################
#
#
#
##o "$HOME" representa o caminho do usuario
# DEFINIR os caminhos (path) do script
path_scr=$HOME/Documentos/vinicius/dados_mensais
path_bkp=$HOME/Downloads
#
#
#
# parte b: entrar na pasta do usuario
#
cd $path_scr
#
#
#
# parte c: Fazer uma cópia do arquivo medias_mensais_ifsc.csv para medias_mensais_ifsc_bkp.csv
cp $path_bkp/medias_mensais_ifsc.csv .
cp medias_mensais_ifsc.csv medias_mensais_ifsc_bkp.csv
#
#
#
# parte d: criar uma pasta dados mensais
#
#
#
mkdir -p dados_mensais
#
#
#
# parte e: mover o arquivo medias_mensais_ifscbkp.csv para dados_mensais
mv medias_mensais_ifsc_bkp.csv dados_mensais
# parte e.1: para fins de segurança:
cp dados_mensais/medias_mensais_ifsc_bkp.csv medias_mensais_ifsc.csv
#
#
#
# parte f: trocar , por . no arquivo medias_mesais_ifsc.csv
sed -i "s/,/./g" medias_mensais_ifsc.csv
#
#
#
# parte g: recortar a primeira linha do arquivo
tail -157 medias_mensais_ifsc.csv > medias_mensais_ifsc1.csv
mv medias_mensais_ifsc1.csv medias_mensais_ifsc.csv
#
#
#
# parte h: recortar o mêsx e redirecionar para o arquivo medias_mêsx
grep 01/ medias_mensais_ifsc.csv > medias_janeiro_ifsc.csv
grep 09/ medias_mensais_ifsc.csv > medias_setembro_ifsc.csv
#
#
#

