#!/bin/bash
#######################################
# Primeiro Script da Turma 2023.1
# Aluno: Vinícius
# Data: 20/03/2023
#######################################
#
# Escrever na Tela uma frase de boas vindas
echo "Bem Vindos ao Meu Primeiro Script Shell"
#
#
#
# Apagar imagens Anteriores com extensão .jpg

#
#
#
##o "$HOME" representa o caminho do usuario
# DEFINIR os caminhos (path) do script
path_scr=$HOME/Documentos/vinicius
#
# DEFINIR pra onde as imagens vão
path_fig=$path_scr/satelite
#
# CRIAR a pasta satelite
mkdir -p $path_fig
#
# EXIBIR as pastas
echo "Pasta principal: " $path_scr
echo "Pasta das Imagens: " $path_fig
#
#
#
# Capturar a imagem do Cptec teste
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch14_baixa/2023/03/S11635390_202303201200.jpg
#
#
#
# Capturar a imagem do Cptec exercicio
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch10_baixa/2023/03/S11635382_202303201200.jpg
#
#
#
# Capturar imagens de 8h, 8h30, 9h, 9h30 ... até 12h30 do cptec (no meu caso do canal 11)
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303200800.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303200830.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303200900.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303200930.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303201000.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303201030.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303201100.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303201130.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303201200.jpg
wget http://satelite.cptec.inpe.br/repositoriogoes/goes16/goes16_web/ams_ret_ch11_baixa/2023/03/S11635384_202303201230.jpg
#
#
#
# Mover Imagens para a pasta satelite
mv *.jpg $path_fig
