package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.Static("./", "./html")
	r.LoadHTMLGlob("*.html")
	r.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "./html/index.html", nil)
	})
	r.Run()
}
