#!/bin/bash
#############################################################################
# Exercício 03 da disciplina de Tratamento de dados Meteorológicos - TDM
# Prof. Mario Quadro
#############################################################################
#
# --------------------------------Passo 1-------------------------------------
# Fazer download dos dois arquivos listados abaixo 
# do SIGAA para a pasta Download
#
# dados_temp_IMER_Florianopolis_SJ_2005_2017.csv 
# ifsc_convencional.csv
#
# --------------------------------Passo 2-------------------------------------
# Copiar os arquivos listados abaixo abaixo da pasta Downloads
# para a pasta com seu nome 
#
# dados_temp_IMER_Florianopolis_SJ_2005_2017.csv 
# ifsc_convencional.csv
#
#
# --------------------------------Passo 3-------------------------------------
# Abrir um novo Linux Termial e entrar na pasta com seu nome
# ----------------------------------------------------------------------------
cd /home/aluno/vinicius

#
# --------------------------------Passo 4-------------------------------------
# No terminal, listar o conteúdo da pasta com seu nome
#
ls $HOME/vinicius
#
# --------------------------------Passo 5-------------------------------------
# Listar conteúdo da pasta para verificar se os arquivos foram importados
# ----------------------------------------------------------------------------
# 
ls dados_temp_IMER_Florianopolis_SJ_2005_2017.csv
ls ifsc_convencional.csv
# --------------------------------Passo 6-------------------------------------
# Verificar o Número de linhas do Arquivo dados_temp_IMER_Florianopolis_SJ_2005_2017.csv
# ----------------------------------------------------------------------------
#
echo "O número de linhas do arquivo dados_temp_IMER_Florianopolis_SJ_2005_2017.csv é:"
wc -l dados_temp_IMER_Florianopolis_SJ_2005_2017.csv
#
# --------------------------------Passo 7-------------------------------------
# Verificar o Número de linhas do Arquivo ifsc_convencional.csv
# ----------------------------------------------------------------------------
#
echo "O número de linhas do arquivo ifsc_convencional.csv é:"
wc -l ifsc_convencional.csv
#
# --------------------------------Passo 8-------------------------------------
echo "
#############################################################
Responder abaixo. Se o número de linhas for diferente entre os arquivos,
o que pode ser a diferença???????"
# ----------------------------------------------------------------------------
#
echo "Resposta:
A estação convencional mede menos variáveis, tem menos passos de tempo, logo menor frequencias
############################################################"

#
# --------------------------------Passo 9-------------------------------------
# No canto superior esquerdo da página, clicar em "Files" e abrir os dois 
# arquivos de dados dados_temp_IMER_Florianopolis_SJ_2005_2017.csv e
# ifsc_convencional.csv
echo "
#############################################################
Visualize o arquivo e identifique as principais diferenças entre eles"
## ----------------------------------------------------------------------------
#
echo "Resposta: numero de colunas diferentes, como as medias de temperaturas maximas que tem na automatica e não tem na convencional por exemplo
#############################################################"
#
# --------------------------------Passo 10-------------------------------------
# Retirar os NaN do arquivo dados_temp_IMER_Florianopolis_SJ_2005_2017.csv 
# Obs. A opção -i faz com que o arquivo original seja alterado sem 
# opção de backup
# ----------------------------------------------------------------------------
#
sed -i "s/NaN//g" dados_temp_IMER_Florianopolis_SJ_2005_2017.csv
#
#
# --------------------------------Passo 11-------------------------------------
echo "Recortando a Primeira Coluna do Arquivo dados_temp_IMER_Florianopolis_SJ_2005_2017.csv: "
cut -d';' -f1 dados_temp_IMER_Florianopolis_SJ_2005_2017.csv > data.csv
#
# --------------------------------Passo 12-------------------------------------
# Como recortar as colunas de interesse (1a, 2a e 6a)
# ----------------------------------------------------------------------------
#
echo "Recortando a Primeira, a Segunda e a Sexta Coluna do Arquivo dados_temp_IMER_Florianopolis_SJ_2005_2017.csv: "
cut -d';' -f1,2,6 dados_temp_IMER_Florianopolis_SJ_2005_2017.csv > recorte.csv
#
# --------------------------------Passo 13-------------------------------------
# 
echo "############################################################
Como redirecionar isso para um arquivo de saida??"
echo "Resposta: usou-se o caractere maior
##################################################################"
#
# --------------------------------Passo 14-------------------------------------
# Listar conteúdo da pasta para verificar se o arquivo inmet_saojose.csv
# foi criado
# ----------------------------------------------------------------------------
#
ls ifsc_convencional.csv
#
# --------------------------------Passo 15-------------------------------------
# Como separar os dados dos mes de junho do arquivo ifsc_convencional.csv
# ----------------------------------------------------------------------------
#
grep "/06/" ifsc_convencional.csv > ifsc_convencional_junho.csv
#
#
# --------------------------------Passo 16-------------------------------------
# Como redirecionar os dados dos mes de julho do arquivo inmet_saojose.csv
# para salvar no arquivo inmet_saojose_julho.csv
# ----------------------------------------------------------------------------
#
grep "/07/" ifsc_convencional.csv > ifsc_convencional_julho.csv
#
# --------------------------------Passo 17-------------------------------------
# 
echo "###########################################################
Pergunta, eh possivel fazer uma media das colunas?
Resposta: sim usando avg
#################################################################"



#
#
# --------------------------------Passo 18-------------------------------------
echo "#################################################################
O que significa os resultados encontrados nas operações
# realizadas acima???????
Resposta: nos passos 15 e 16 foram recortados os meses de junho e julho do arquivo ifsc_convencional.csv e colocados em uma novo arquivo .csv
##################################################################"
#
# --------------------------------Passo 19-------------------------------------
# Exercício:
# Calcular as médias mensais de TMIN e TMAX de cada estação meteorológica,
# e elaborar dois gráficos (um de TMIN e outro de TMAX) de comparação entre 
# as estações. 
#
# Obs: Abaixo segue um exemplo para o cálculo de TMAX para o mês de janeiro das
# duas estações
# ----------------------------------------------------------------------------
#
echo "Temperatura minima media da estação convencional é"
tminc= cut -f2 ifsc_convencional.csv | awk -F ';' '{total+=$2; count++ }; END { print total/count }'

echo "Temperatura minima media da estação Automática é "
tminA= cut -f7 dados_temp_IMER_Florianopolis_SJ_2005_2017.csv | awk -F ';' '{total+=$7; count++ }; END { print total/count }'
###############################################
#p setembro:

echo "Temperatura mínima média de setembro na convencional:" 
tmincSET= grep /09/ ifsc_convencional.csv | awk -F ';' '{total+=$2; count++ }; END { print total/count }'
