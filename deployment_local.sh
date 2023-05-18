#bundle exec jekyll build
docker build . -t saalejo/corumpage:latest
docker run -p 8081:80 saalejo/corumpage:latest