package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Olá, mundo! teste, estou aqui")
}

func main() {
    http.HandleFunc("/", handler)
    fmt.Println("Servidor web iniciado na porta 8080")
    http.ListenAndServe(":8080", nil)
}
