# Repositório Autoatendimento Lanchonete - Fiap Pós-Tech Arquitetura de Software DB

## Objetivo

O objetivo desse repositório é a apresentação da solução de banco de dados escolhida.

**Banco de dados escolhido**: Mysql

**Tipo**: Relacional

**Motivo**: Garantia de integridade dos dados, uma vez que estaremos trabalhando com dados de pagamento.

obs.: Não houve mudança na estrutura do banco de dados, as tabelas e colunas permanecem as mesmas do módulo anterior.

## Procedimento de execução

Para criação dos bancos de dados no RDS será necessário uma conta de serviço da AWS com permissão de criação de
instancias RDS.

Para facilitar a execução recomendamos exportas as variáveis de ambiente abaixo:

```bash
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION=""
export TF_VAR_iam=""
export TF_VAR_subnet_group=""
export TF_VAR_senha_banco=""
#Depois de exportadas as variaveis basta rodar o terraform
$ terraform apply
```