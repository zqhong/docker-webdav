# docker-webdav


## 附录

## 测试

```bash
./build/hacdias-webdav-dev -c ./build/config-dev.yaml
```

### 编译 hacdias-webdav

```bash
cd source/hacdias-webdav
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-w -s" -v -o ../../build/hacdias-webdav ./main.go

# 测试
go build -ldflags "-w -s" -v -o ../../build/hacdias-webdav-dev ./main.go
```