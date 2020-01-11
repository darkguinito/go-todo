package main

import (
	"flag"
	"net/http"

	//	"./configuration"
	"./router"

	"github.com/golang/glog"
)

func main() {

	//configuration := configuration.GetConfigs()
	flag.Parse()
	glog.Infof("starting main program")

	glog.Infof("Starting server on the port 8080...")
	r := router.Router()
	glog.Fatalf(http.ListenAndServe(":8080", r).Error())
}
