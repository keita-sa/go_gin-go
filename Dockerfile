FROM golang:latest

WORKDIR /go/src

COPY ./ .

RUN go install github.com/cosmtrek/air@latest

# air -c [tomlファイル名] // 設定ファイルを指定してair実行(WORKDIRに.air.tomlを配置しておくこと)
CMD ["air","-c","air.toml"]
