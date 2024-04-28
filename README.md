<h1 align="center">Parte 1 - Predição de Churn :tada:</h1>

Toda a aplicação está dockerizada.

1º - Navegue até o diretório onde está localizado o seu Dockerfile usando o comando cd (por exemplo, cd /caminho/do/diretorio).
2º Execute o comando 

``` bash
docker build -t nome_da_imagem:tag . 
```
substituindo nome_da_imagem pelo nome que deseja dar à imagem e tag pela versão (opcional). O ponto . indica que o Dockerfile está no diretório atual.

Em seguida execute: 

``` bash
docker run -d --name myapp-container myapp-image:1.0
```

<h1 align="center">Parte 2 -Observabilidade com Docker, FastAPI, Prometheus e Grafana :tada:</h1>

Esta é uma configuração que deve ser realizada para monitorar o sua aplicação.

Deszipe o arquivo:  observabilidade_ml.zip e executo os passos abaixo:

## Instalação

Existem apenas dois pré-requisitos:

* [Docker](https://docs.docker.com/get-docker/)
* [Docker-compose](https://docs.docker.com/compose/install/)

Tendo ambos, será necessário clonar o repositório:

``` bash
git clone https://
```

## Como utilizar

É necessário executar os containers docker:

``` bash
docker-compose up
```

Agora você terá acesso a três containers e suas respectivas portas:

* Prometheus: http://localhost:9090/
* Grafana: http://localhost:3000/
* FastAPI: http://localhost:8000/

Como foi testado?
passamos como parâmetro as frases abaixo:

{
  "gender": 1.000000,
  "SeniorCitizen": 0.000000,
  "Partner": 0.000000,
  "Dependents": 0.000000,
  "tenure": 0.031731,
  "PhoneService": 1.000000,
  "MultipleLines": 2.000000,
  "InternetService": 1.000000,
  "OnlineSecurity": 2.000000,
  "OnlineBackup": 0.000000,
  "DeviceProtection": 0.000000,
  "TechSupport": 0.000000,
  "StreamingTV": 0.000000,
  "StreamingMovies": 0.000000,
  "Contract": 1.000000,
  "PaperlessBilling": 0.000000,
  "PaymentMethod": 0.000000,
  "MonthlyCharges": 0.504371,
  "TotalCharges": 0.146960
}

Na FastAPI, além de `/predict` você poderá acessar o endpoint `/metrics` para ver os dados que o Prometheus está extraindo da aplicação.
## References

* [Prometheus FastAPI Instrumentator](https://github.com/trallnag/prometheus-fastapi-instrumentator)
* [Visualizando as Métricas de Nossa API](https://johnfercher.medium.com/go-grafana-2b1419f7a99d)
* [Monitorando Modelos de Aprendizado de Máquina em Produção](https://estevestoni.medium.com/monitorando-modelos-de-aprendizado-de-m%C3%A1quina-em-produ%C3%A7%C3%A3o-9d4f83a3dbfa)