# 📘 Coleção de Scripts de Instalação e Configuração

Este repositório reúne scripts automatizados desenvolvidos para facilitar a instalação, configuração e manutenção de serviços essenciais em ambientes Linux, com foco em servidores baseados em Rocky Linux, RHEL e CentOS.

Todos os scripts seguem boas práticas de organização, padronização e segurança, reduzindo tempo de configuração e evitando erros manuais.

## 📂 Scripts incluídos 

### 🚀 1. install_grafana.sh

Script completo para instalar, configurar e liberar o acesso ao Grafana Enterprise 12.3.0.

Principais funções:

Atualização automática do sistema

Instalação de dependências essenciais

Ativação de serviços como sshd e firewalld

Instalação do pacote RPM oficial do Grafana

Configuração do firewall com regras de segurança

Inicialização e habilitação do serviço grafana-server

Execução:

```bash
sudo bash grafana.sh
```

### 📌 1.1 Requisitos gerais

Distribuição Linux compatível com dnf ou yum

Permissões administrativas (sudo/root)

Conexão com a internet para baixar pacotes


### 🛠️ 1.2 Como usar

Dê permissão de execução ao script desejado:

```bash
sudo chmod +x grafana.sh
```

Execute como root ou com sudo:

```bash
sudo ./grafana.sh
```

### ⭐ Objetivo do projeto

Oferecer um conjunto prático de scripts para ajudar na automação da infraestrutura, tornando processos repetitivos mais rápidos, seguros e eficientes.


### 🤝 Contribuição

Sinta-se à vontade para sugerir melhorias, reportar bugs ou solicitar novos scripts.
