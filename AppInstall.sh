#!/bin/bash
clear
# Função para exibir o menu
mostrar_menu() {
    clear
    echo "===== MENU DE APP ====="
    echo "1) O Ranger é um gerenciador de arquivos de console com atalhos de teclado VI."
    echo "2) Yazi - ⚡️ Gerenciador de arquivos de terminal extremamente rápido"
    echo "3) ELinks é uma web de modo de texto avançada e bem estabelecida e rica em recursos (HTTP/FTP/..) Navegador."
    echo "4) Teste a velocidade da sua internet via terminal"
    echo "5) S-Tui - Monitora a temperatura, frequência, potência e utilização da CPU de forma gráfica a partir do terminal."
    echo "6) Btop - Monitora a temperatura, frequência, potência e utilização da CPU de forma gráfica a partir do terminal."
    echo "7) vtop - Monitora a temperatura, frequência, potência e utilização da CPU de forma gráfica a partir do terminal."
    echo "8) Btop - Um monitor de tarefas tipo (h)top para GPUs AMD, Intel e NVIDIA. Ele pode lidar com várias GPUs e exibir informações sobre elas de uma maneira muito familiar."
    echo "9) logo-ls - Exibi os ícones dos arquivos."
    echo "0) Sair"
    echo "==========================="
}

# Loop para o menu
do
    mostrar_menu
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            sudo apt install ranger -y
            ranger
            ;;
        2) 
            sudo apt install yazi -y
            ;;
        3)
            sudo apt install elinks -y
            elinks
            ;;
        4)
            sudo apt install speedtest-cli -y
            speedtest-cli
            ;;
        5)
            sudo apt install s-tui -y
            ;;
        6)
            sudo apt install btop -y
            btop
            ;;
        7)
            sudo apt install nodejs -y
            sudo apt install npm -y
            sudo npm install -g vtop
            vtop
            ;;
        8)
            sudo apt install nvtop -y
            ;;
        9)
            sudo apt install logo-ls -y
            ;;
        0)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida! Tente novamente."
            ;;
    esac

    read -p "Pressione Enter para continuar..."
done
