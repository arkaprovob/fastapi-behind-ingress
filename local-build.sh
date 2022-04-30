docker build -t fastapi-demo -f Containerfile .
docker tag fastapi-demo quay.io/arbhatta/fastapi-demo:dev
echo $quay_password | docker login quay.io --username $quay_user --password-stdin
docker push quay.io/arbhatta/fastapi-demo:dev
