package main
import (
	"fmt"
	"log"
	"net/http"
)
//w表示服务器对浏览器所做的操作，即浏览器要显示的内容；r表示浏览器向服务器发送请求的方式
func SayHelloName(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()//解析浏览器向服务器发送的请求
	fmt.Println("path:", r.URL.Path)
	fmt.Fprintf(w, "hello go")
}

func main() {
	http.HandleFunc("/", SayHelloName)
	err := http.ListenAndServe(":9090", nil)
	if err != nil {
		log.Fatal("ListenAndServer: ", err)
	}
}
