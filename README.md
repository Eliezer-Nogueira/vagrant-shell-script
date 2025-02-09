# Projeto Vagrant Ubuntu com Shell Script

## Descrição
Este projeto configura uma máquina virtual Ubuntu 20.04 utilizando o Vagrant e automatiza a instalação de pacotes essenciais através de um shell script. O processo de provisionamento inclui a instalação de pacotes úteis para administração de sistemas, como `vim`, `curl`, `telnet`, `unzip`, `wget`, `net-tools`, `htop` e `nmap`. Além disso, um novo usuário chamado `eliezer` é criado sem senha (não recomendado para ambientes de produção).

## Passos para Subir a VM
Siga os passos abaixo para subir a máquina virtual:

1. **Clone o repositório para seu diretório local**:
   ```
   git clone https://github.com/Eliezer-Nogueira/vagrant-ubuntu
   cd vagrant-ubuntu
   ```

2. **Inicie a máquina virtual com o comando**:
   ```
   vagrant up
   ```
   
   Isso irá baixar a box `generic/ubuntu2004` e provisionar a máquina com o shell script fornecido.

## Provisionamento
O script de provisionamento (`provision.sh`) executa as seguintes tarefas:

- **Atualiza o sistema**: Realiza a atualização dos pacotes instalados no Ubuntu.
- **Instala pacotes essenciais**: Instala pacotes úteis para administração de sistemas, como `vim`, `curl`, `telnet`, `unzip`, `wget`, `net-tools`, `htop` e `nmap`.
- **Cria um novo usuário**: Cria o usuário `eliezer` com shell bash, sem senha (não recomendado para produção).

Aqui está o conteúdo do script `provision.sh`:

```
#!/bin/bash

# Atualiza os pacotes e realiza a atualização do sistema
sudo apt update && sudo apt upgrade -y 

# Instala pacotes essenciais
sudo apt install -y vim curl telnet unzip wget net-tools htop nmap

# Cria um novo usuário chamado eliezer
sudo useradd -m -s /bin/bash eliezer

# Remove a senha do usuário eliezer (não recomendado em ambientes de produção)
sudo passwd -d eliezer
```

## Verificação
Após o provisionamento, você pode verificar se o usuário foi criado e os pacotes instalados com os seguintes comandos:

1. **Verifique se o usuário foi criado**:
   ```
   id eliezer
   ```
   
   Isso retornará as informações do usuário `eliezer` se ele tiver sido criado corretamente.

2. **Verifique se os pacotes estão instalados**:
   - Para verificar se o `vim` está instalado:
     ```
     vim --version
     ```

   - Para verificar se o `curl` está instalado:
     ```
     curl --version
     ```

   - Para verificar se o `telnet` está instalado:
     ```
     telnet
     ```

   Você pode realizar esse processo para cada um dos pacotes mencionados no script.

## Links
[Repositório no GitHub](https://github.com/Eliezer-Nogueira/vagrant-ubuntu)
