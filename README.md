# Docker Image that contains my vim config

### Build

```
docker build -t np-vim .
```

### Run

```
docker run -it -v $(pwd):/vim np-vim /vim/README.md
```
