#!/bin/bash

echo "======================================="
echo "  Instalação e Configuração do Grafana"
echo "======================================="

hostnamectl set-hostname Grafana &>/dev/null

# 1. Atualizando o sistema
echo "[1/8] Atualizando o sistema..."
dnf update -y &>/dev/null

# 2. Instalando pacotes essenciais
echo "[2/8] Instalando pacotes essenciais..."
dnf install -y nano openssh-server firewalld &>/dev/null

# 3. Habilitando e iniciando serviços
echo "[3/8] Habilitando serviços SSH e Firewalld..."
systemctl enable sshd firewalld &>/dev/null
systemctl start sshd firewalld &>/dev/null

# 4. Instalando Grafana Enterprise 12.3.0
echo "[4/8] Instalando Grafana Enterprise..."
yum install -y https://dl.grafana.com/grafana-enterprise/release/12.3.0/grafana-enterprise_12.3.0_19497075765_linux_amd64.rpm &>/dev/null

# 5. Recarregando serviços
echo "[5/8] Recarregando daemon..."
systemctl daemon-reload &>/dev/null

# 6. Iniciando e habilitando o Grafana
echo "[6/8] Iniciando e habilitando grafana-server..."
systemctl start grafana-server &>/dev/null
systemctl enable grafana-server &>/dev/null

# 7. Configurando firewall
echo "[7/8] Configurando firewall..."

# Libera Grafana para rede 192.168.1.0/24
firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="192.168.1.0/24" port port="3000" protocol="tcp" accept' &>/dev/null

# Libera SSH para rede 192.168.1.0/24
firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="192.168.1.0/24" service name="ssh" accept' &>/dev/null

firewall-cmd --reload &>/dev/null

echo "[8/8] Instalação finalizada!"

echo ""
echo "======================================="
echo " Grafana instalado com sucesso!"
echo " Acesse via: http://192.168.1.204:3000"
echo " Usuário padrão: admin"
echo " Senha padrão:  admin"
echo "======================================="
