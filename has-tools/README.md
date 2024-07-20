quick notes to build and test locally:
`docker build -t has-tools:latest .`
`docker run -it --rm -p 8080:8080 -v "$(pwd):/home/jovyan" has-tools:latest`