# 📘 Coleção de Scripts de Instalação e Configuração

Este repositório reúne scripts automatizados desenvolvidos para facilitar a instalação, configuração e manutenção de serviços essenciais em ambientes Linux, com foco em servidores baseados em Rocky Linux, RHEL e CentOS. \
Todos os scripts seguem boas práticas de organização, padronização e segurança, reduzindo tempo de configuração e evitando erros manuais.

## 📂 Scripts incluídos 

### 🚀 1. install_scripts.sh

Script completo para instalar, configurar e inicializar todo o projeto.

Principais funções:

Atualização automática do sistema \
Instalação de dependências essenciais \
Ativação de serviços como sshd e firewalld \
Instalação do pacote RPM oficial do Grafana \
Configuração do firewall com regras de segurança \
Inicialização e habilitação do serviço grafana-server \
Inicialização e habilitação do zabbix proxy \
Inicialização e habilitação do zabbix proxy externo para uso de VPN via [ZeroTier](https://www.zerotier.com/)

Execução:

```bash
sudo bash grafana.sh
```
```bash
sudo bash zabbix-proxy-local.sh
```
```bash
sudo bash zabbix-proxy-externo.sh
```

### 📌 1.1 Requisitos gerais

Distribuição Linux compatível com dnf ou yum \
Permissões administrativas (sudo/root) \
Conexão com a internet para baixar pacotes


### 🛠️ 1.2 Como usar

Dê permissão de execução ao script desejado:

```bash
sudo chmod +x grafana.sh
```
```bash
sudo chmod +x zabbix-proxy-local.sh
```
```bash
sudo chmod +x zabbix-proxy-externo.sh
```

Execute como root ou com sudo:

```bash
sudo ./grafana.sh
```
```bash
sudo ./zabbix-proxy-local.sh
```
```bash
sudo ./zabbix-proxy-externo.sh
```

### ⭐ Objetivo do projeto

Oferecer um conjunto prático de scripts para ajudar na automação da infraestrutura, tornando processos repetitivos mais rápidos, seguros e eficientes.


### 🤝 Contribuição

Sinta-se à vontade para sugerir melhorias, reportar bugs ou solicitar novos scripts.
