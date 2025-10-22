#!/bin/bash

# Script para limpar arquivos auxiliares do LaTeX
# Uso: ./clean_latex.sh

echo "Limpando arquivos auxiliares do LaTeX..."

# Lista de extensões de arquivos auxiliares do LaTeX
extensions=(
    "*.aux"
    "*.bbl"
    "*.blg"
    "*.brf"
    "*.fdb_latexmk"
    "*.fls"
    "*.glo"
    "*.glsdefs"
    "*.ist"
    "*.lof"
    "*.lot"
    "*.out"
    "*.synctex.gz"
    "*.toc"
    "*.acn"
    "*.bcf"
    "*.run.xml"
    "*.nav"
    "*.snm"
    "*.vrb"
    "*.gz"
)

# Contador de arquivos removidos
count=0

# Remover arquivos auxiliares
for ext in "${extensions[@]}"; do
    for file in $(find . -name "$ext" -type f 2>/dev/null); do
        echo "Removendo: $file"
        rm -f "$file"
        ((count++))
    done
done

echo ""
echo "✓ Limpeza concluída! $count arquivo(s) removido(s)."
