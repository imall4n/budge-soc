#!/bin/bash

configurar_dhcp() {
    cat <<EOF > /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  ethernets:
    enp0s3:  # Altere para o nome da sua interface de rede
      dhcp4: true
EOF
    echo "Configuração Netplan atualizada com DHCP."
    sudo netplan apply
}

configurar_ip_estatico() {
    read -p "Digite o endereço IP estático desejado (exemplo: 192.168.1.100): " ip
    cat <<EOF > /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  ethernets:
    enp0s3:  # Altere para o nome da sua interface de rede
      dhcp4: false
      addresses:
        - $ip/24  # Altere o /24 conforme a sua máscara de rede
      gateway4: 10.147.0.1
      nameservers:
        addresses: [1.1.1.1]
EOF
    echo "Configuração Netplan atualizada com IP estático $ip, gateway 10.147.0.1 e DNS 1.1.1.1."
    sudo netplan apply
}

# Script principal
echo "Bem-vindo ao configurador Netplan."

# Opções de configuração
echo "Selecione uma opção:"
echo "1) Configurar com DHCP"
echo "2) Configurar com IP estático"

read -p "Opção selecionada: " opcao

case $opcao in
    1)
        configurar_dhcp
        ;;
    2)
        configurar_ip_estatico
        ;;
    *)
        echo "Opção inválida. Saindo."
        ;;
esac

exit 0