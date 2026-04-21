# Compleaks 2.1

Versão 2.1 do famoso Compleaks. Antes uma pasta reservada no Dropbox, agora um sistema web que permite a busca e a contribuição de materiais acadêmicos (provas, listas, apostilas, etc) por todos os alunos.

## 🛠️ Tecnologias

* **Linguagem:** PHP 5.6
* **Banco de Dados:** MySQL 5.7
* **Frontend:** HTML, CSS, e Bootstrap 3.2.0
* **Infraestrutura:** Docker & Docker Compose

## 🚀 Como rodar o projeto localmente

O projeto foi "dockerizado" para facilitar a execução local. Com isso, você não precisa instalar o servidor web Apache ou versões antigas do PHP/MySQL diretamente no seu sistema operacional.

### Pré-requisitos
* [Docker e Docker Compose](https://docs.docker.com/get-docker/) instalados.

### Passo a passo

1. Clone este repositório e acesse a pasta raiz do projeto pelo terminal.
2. Suba os contêineres com o comando:
   ```bash
   docker compose up -d --build
   ```
3. Acesse no seu navegador:
   👉 **http://localhost:8080**

4. Para parar a execução e desligar o servidor, rode:
   ```bash
   docker compose down
   ```

> **Nota:** O banco de dados inicializa automaticamente através do script `init.sql`. Os materiais enviados através da página "Contribuir" são compactados e salvos na pasta local `uploads/` (que deve ser evitada de commit no Git).

## 📝 TO DO (Melhorias Futuras)

* Atualizar a base de código para suportar versões modernas do PHP (8.x) substituindo as funções obsoletas por `PDO` ou `mysqli`
* Trocar o servidor
* Autocompletar na barra de buscas
* Login e Senha com validação pelo email do DCC
* Sistema de Pontuação
* ...

## 👥 Contribuintes

* Marcelo Rodrigues (repo original)
* Gileade C. Valente (fork)