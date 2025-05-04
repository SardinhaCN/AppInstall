#!/bin/bash
clear

# Função para exibir o menu
mostrar_menu() {
    echo "===== MENU DE APP ====="
    echo "1) Ranger - Gerenciador de arquivos com atalhos do VI"
    echo "2) Yazi - Gerenciador de arquivos de terminal rápido"
    echo "3) ELinks - Navegador de texto para terminal (HTTP/FTP)"
    echo "4) Teste de velocidade da internet (speedtest-cli)"
    echo "5) S-Tui - Monitor de CPU gráfico via terminal"
    echo "6) Btop - Monitor completo de sistema via terminal"
    echo "7) vtop - Monitor de processos visual em Node.js"
    echo "8) Nvtop - Monitor de GPU (NVIDIA, AMD, Intel)"
    echo "9) logo-ls - Exibe ícones de arquivos no terminal"
    echo "0) Sair"
    echo "==========================="
}

# Mostra o menu uma vez
mostrar_menu
read -p "Escolha uma opção: " opcao

# Executa a opção selecionada
case $opcao in
    1)
        sudo apt install ranger -y && ranger
        ;;
    2)
        sudo apt install yazi -y
        ;;
    3)
        sudo apt install elinks -y && elinks
        ;;
    4)
        sudo apt install speedtest-cli -y && speedtest-cli
        ;;
    5)
        sudo apt install s-tui -y && s-tui
        ;;
    6)
        sudo apt install btop -y && btop
        ;;
    7)
        sudo apt install nodejs npm -y
        sudo npm install -g vtop && vtop
        ;;
    8)
        sudo apt install nvtop -y && nvtop
        ;;
    9)
        sudo apt install logo-ls -y && logo-ls
        ;;
    0)
        echo "Saindo..."
        ;;
    *)
        echo "Opção inválida! Tente novamente."
        ;;
esac
