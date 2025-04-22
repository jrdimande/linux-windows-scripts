Clear-Host

# Receber nome e turma do usuario
$nome = Read-Host "Insira o seu nome"
$turma = Read-Host "Insira a sua turma"

Write-Host ""
Write-Host "Bem-vindo, $nome da turma $turma!"
Write-Host "------------------------------------------"
Write-Host "Qual flash drive vai escolher?"
Write-Host "A: 8GB"
Write-Host "B: 16GB"
Write-Host "C: 32GB"
Write-Host "D: 64GB"
Write-Host "E: 128GB"
Write-Host "------------------------------------------"

Write-Host -NoNewline "Escolha uma opção (A-E): "
$escolha = [char]([System.Console]::ReadKey($true).KeyChar)
Write-Host ""

# Data e hora
$datahora = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Mostrar o resultado
switch ($escolha.ToUpper()) {
    "A" { Write-Host "[$datahora] Escolheu 8GB - Cor: Vermelha, USB 2.0, Tamanho: 8GB" }
    "B" { Write-Host "[$datahora] Escolheu 16GB - Cor: Cinza, USB 2.0, Tamanho: 16GB" }
    "C" { Write-Host "[$datahora] Escolheu 32GB - Cor: Verde, USB 3.0, Tamanho: 32GB" }
    "D" { Write-Host "[$datahora] Escolheu 64GB - Cor: Azul, USB 3.1, Tamanho: 64GB" }
    "E" { Write-Host "[$datahora] Escolheu 128GB - Cor: Preta, USB 3.2, Tamanho: 128GB" }
    default { Write-Host "[$datahora] Opção inválida!" }
}
