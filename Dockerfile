# Use a imagem oficial do Go como base
FROM golang:latest

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o go.mod e o go.sum para o diretório de trabalho
COPY go.mod go.sum ./

# Baixe as dependências
RUN go mod download

# Copie o restante do código fonte para o contêiner
COPY . .

# Expor a porta 8080
EXPOSE 8080

# Compilar o aplicativo
RUN go build -o main .

# Comando para executar o aplicativo quando o contêiner for iniciado
CMD ["./main"]
