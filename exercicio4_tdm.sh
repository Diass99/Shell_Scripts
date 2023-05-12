#!/bin/bash
#############################################################################
# Atividade 04 da disciplina de Tratamento de dados Meteorológicos - TDM
# Prof. Mario Quadro
#############################################################################
#
# --------------------------------Passo 1-------------------------------------
# Abrir um novo Linux Termial e criar uma pasta tdmlista
# ----------------------------------------------------------------------------
#
'mkdir tdmlista'
#
# --------------------------------Passo 2-------------------------------------
# Abrir um novo Linux Termial e entrar na pasta tdmlista
# ----------------------------------------------------------------------------
#
cd tdmlista
#
# --------------------------------Passo 3-------------------------------------
# Fazer download dos dois arquivos listados abaixo 
# do SIGAA para a pasta tdmlista
#
# ifsc01_Hora_202302.csv 
# ifsc01_Hora_202303.csv 
# ifsc01_Hora_202304.csv 
#

#
# --------------------------------Passo 4-------------------------------------
# Listar conteúdo da pasta para verificar se os arquivos foram importados
# ----------------------------------------------------------------------------
# 

cat ifsc01_Hora_202302.csv 
cat ifsc01_Hora_202303.csv 
cat ifsc01_Hora_202304.csv 

# --------------------------------Passo 5-------------------------------------
# Verificar o Número de linhas dos Arquivos listados
# ----------------------------------------------------------------------------
#
wc -l ifsc01_Hora_202302.csv 
wc -l ifsc01_Hora_202303.csv 
wc -l ifsc01_Hora_202304.csv 
#
# --------------------------------Passo 6-------------------------------------
# Relacioannar abaixo o Número de linhas dos Arquivos listados
# ----------------------------------------------------------------------------
#
No de linhas do arquivo ifsc01_Hora_202302.csv ->  370
No de linhas do arquivo ifsc01_Hora_202303.csv -> 741
No de linhas do arquivo ifsc01_Hora_202304.csv -> 722

#
# --------------------------------Passo 7-------------------------------------
# Responder abaixo. Se o número de linhas for diferente entre os arquivos,
# o que pode ser a diferença???????
# ----------------------------------------------------------------------------
#
Resposta:
Frequência de coleta de dados da estação diferente para os dias

Erro de medição graças a alguma interferencia mecanica, como sujeira no sensor

Intervalos de tempo de medição diferentes, principalmente da 02 com relação às demais, já que fevereiro tem menos dias e tem uma grande diferença com relação aos demais, mas temos que juntar o fato de ser fevereiro com algum outro problema como, por exemplo, os que estão citados nessa resposta, pois a diferença é realmente grande.

Variáveis diferentes, se um dia mediu-se radiação e no outro se mediu outra coisa no lugar, o numero de dados irá aumentar muito, pois a variável "radiação" gera dados só durante o dia.


#
# --------------------------------Passo 8-------------------------------------
# No canto superior esquerdo da página, clicar em "Files" e abrir os tres 
# arquivos de dados baixados
# Visualize o arquivo e identifique as principais diferenças entre eles
## ----------------------------------------------------------------------------
#
Resposta:
#O mês de março e abril tiveram precipitação acumulada mensal muito próximas mesmo o mês de abril tendo menos dados, logo, conclui-se que em abril teve mais dias com chuva.

#O mês de março tem temperatura média de 33°C muito alta em comparação a abril (27°C) e de fevereiro (27°C)

#O problema do arquivo de fevereiro é que os dados começaram a ser medidos no dia 13/02/2023

#
# --------------------------------Passo 9-------------------------------------
# Retirar os NaN dos arquivos de dados baixados
# Obs. A opção -i faz com que o arquivo original seja alterado sem 
# opção de backup
# ----------------------------------------------------------------------------
#
sed -i "s/NaN//g" ifsc01_Hora_202302.csv
sed -i "s/NaN//g" ifsc01_Hora_202303.csv
sed -i "s/NaN//g" ifsc01_Hora_202304.csv

#
#
# --------------------------------Passo 10-------------------------------------
# Recortar Primeira Coluna (Data) do Arquivo ifsc01_Hora_202303.csv 
# ----------------------------------------------------------------------------
#

cut -d';' -f1 ifsc01_Hora_202303.csv

#
# --------------------------------Passo 11-------------------------------------
# Como recortar a coluna da data e os valores mínimos das variáveis
# do Arquivo ifsc01_Hora_202303.csv. Redirecionar para o arquivo
# ifsc01_Hora_202303_min.csv
# ----------------------------------------------------------------------------
#

cut -d',' -f1,8,14,20,26 ifsc01_Hora_202303.csv

# --------------------------------Passo 12-------------------------------------
# Como recortar a coluna da data e os valores máximos das variáveis
# do Arquivo ifsc01_Hora_202302.csv. Redirecionar para o arquivo
# ifsc01_Hora_202302_max.csv
# ----------------------------------------------------------------------------

cut -d',' -f1,3,6,12,18,24,30,33 ifsc01_Hora_202303.csv

#
# --------------------------------Passo 13-------------------------------------
# Exercício:
# Calcular as médias mensais de Temperatura de cada mes e descrever abaixo
# o comando e o valor encontrado

Comando TMED 202302: 
TMED02= cut -f5 ifsc01_Hora_202302.csv | awk -F ',' '{total+=$2; count++ }; END { print total/count }'

Valor TMED 202302: 11,903
 
Comando TMED 202303: 
TMED03= cut -f5 ifsc01_Hora_202303.csv | awk -F ',' '{total+=$2; count++ }; END { print total/count }'

Valor TMED 202303: 11,9515
 
Comando TMED 202304: 
TMED04= cut -f5 ifsc01_Hora_202304.csv | awk -F ',' '{total+=$2; count++ }; END { print total/count }'

Valor TMED 202304: 11,9474
 
#
# --------------------------------Passo 14-------------------------------------
# Exercício:
# Calcular as médias mensais de ressao de cada mes e descrever abaixo
# o comando e o valor encontrado

Comando PMED 202302:
TMED02= cut -f17 ifsc01_Hora_202302.csv | awk -F ',' '{total+=$2; count++ }; END { print total/count }'

Valor PMED 202302:  
 
Comando PMED 202303:
TMED03= cut -f17 ifsc01_Hora_202303.csv | awk -F ',' '{total+=$2; count++ }; END { print total/count }'

Valor PMED 202303:  
 
Comando PMED 202304: 
TMED04= cut -f17 ifsc01_Hora_202304.csv | awk -F ',' '{total+=$2; count++ }; END { print total/count }'

Valor PMED 202304:  
 
#
# --------------------------------Passo 15-------------------------------------
#
# Eelaborar dois gráficos (um de Temperatura e outro de Pressao) 
# e comparação entre os meses. Escolha o software para elborar 
# o grafico
# ----------------------------------------------------------------------------
#

