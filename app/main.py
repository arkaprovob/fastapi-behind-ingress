from fastapi import FastAPI, Request


app = FastAPI(root_path="/proxy",docs_url="/documentation",openapi_url="/documentation/openapi.json", redoc_url=None)

@app.get("/")
async def root(request: Request):
    return {"message": "Hello World","root_path": request.scope.get("root_path")}



@app.get("/sayHello/{name}")
async def say_hello(name):
    return {"message": " ".join(["hello",name])}

