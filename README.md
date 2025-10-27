# Simple API /ping

API mínima de produção (Node.js + Express) com endpoint GET /ping → {"message":"pong"}.

## Pré-requisitos
- Node.js 20+
- npm 10+
- Docker (opcional para execução em container)

## Instalação e execução local
```bash
npm install
npm start
```
A API subirá em http://localhost:3000

## Teste do endpoint
```bash
curl -i http://localhost:3000/ping
```
Resposta esperada:
```
HTTP/1.1 200 OK
...
{"message":"pong"}
```

## Testes automatizados
```bash
npm test
```

## Executar com Docker
Build:
```bash
docker build -t simple-api-ping:latest .
```
Run:
```bash
docker run --rm -p 3000:3000 -e PORT=3000 simple-api-ping:latest
```
Teste:
```bash
curl -i http://localhost:3000/ping
```