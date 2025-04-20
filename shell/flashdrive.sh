#!/bin/bash

# Receber nome e turma
read -p "Digite seu nome: " nome
read -p "Digite sua turma: " turma

echo ""
echo "Ola, $nome! Seja Bem-vindo(a) ao sistema de seleccao de flash drives da turma $turma"
echo ""

# Mostrar opcoes
echo "Qual flash drive vai adquirir"
echo "A: 8GB"
echo "B: 16GB"
echo "C: 32GB"
echo "D: 64GB"
echo "E: 128GB"

# Ler escolha
read -n1 -p "Escolha uma opcao (A - E)" opcao
echo ""

case "$opcao" in
A)
	descricao="8GB, cor: Branca, USB 2,0"
	;;
B) 
	descricao="16GB, cor: Preta, USB 2.0"
	;;
C)
	descricao="32GB, cor: Azul, USB 2.0"
	;;
D) 
	descricao="64GB, cor: Amarelo, USB 2.0"
	;;
E)
	descricao="128GB, cor: Verde, USB 2.0"
	;;

esac

echo "$descricao"

