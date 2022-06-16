package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.StaticFileFS("./index.html", "./index.html", http.Dir("index"))

	// Listen and serve on 0.0.0.0:8080
	router.Run(":8080")
}
