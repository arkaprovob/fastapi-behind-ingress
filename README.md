# Preface

Recently one of my coleage faced some difficulties accessing the Swagger UI and ReDoc in a python application, he used FastAPI framework, it was working well on localhost, after deplying in openshift they were unable to browse the api documentation using an ingress route. This project aims to demonstrate  how to solve that problem. 

## Links

* https://fastapi.tiangolo.com/advanced/behind-a-proxy/
* https://fastapi.tiangolo.com/tutorial/metadata/#docs-urls
* https://fastapi.tiangolo.com/tutorial/metadata/#openapi-url
* https://fastapi.tiangolo.com/deployment/docker/
* https://haproxy-ingress.github.io/docs/configuration/keys/

## How to deploy in Openshift

* clone the repository
* navigate to the project's root directory
* edit the k8s-resource.yaml file in the ingress controller replace the `{your-ingreee-host}` with actual host.
* then execute command `oc create -f k8s-resource.yaml`
* browse fastapi.{your-ingreee-host}//proxy/documentation
