#!/bin/bash

# Receber nome e turma do usuario
read -p "Digite seu nome: " nome
read -p "Digite sua turma: " turma

echo ""
echo "Ola, $nome! Seja Bem-vindo(a) ao sistema de seleccao de flash drives da turma $turma"
echo ""

echo "Escolha um flash drive:"
echo "A: 8GB"
echo "B: 16GB"
echo "C: 32GB"
echo "D: 64GB"
echo "E: 128GB"

# Hora e data
datetime=$(date '+%Y-%m-%d %H:%M:%S')

# Ler escolha do usuario
read -n1 -p "Escolha uma opcao (A - E)" opcao
echo

# Mostrar o resultado
case "$opcao" in
A|a)
	descricao="Escolheu 8GB - cor: Branca, USB 2,0"
	echo $datetime
	;;
B|b) 
	descricao="Escolheu 16GB - cor: Preta, USB 2.0"
	echo $datetime
	;;
C|c)
	descricao="Escolheu 32GB - cor: Azul, USB 3.0"
	echo $datetime
	;;
D|d) 
	descricao="Escolheu 64GB - cor: Amarelo, USB 2.0"
	echo $datetime
	;;
E|e)
	descricao="Escolheu 128GB - cor: Verde, USB 2.0"
	echo $datetime
	;;
*)
	echo"Opcao Invalida!"
	;;

esac

echo "$descricao"

