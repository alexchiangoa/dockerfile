# dockerfile

ADD：複製進去images，如果是tar.gz會自動解壓縮

ENV：設定環境變數

EXPOSE：container內部的port

CMD：run 這個image的時候會啟動的指令，一個dockerfile只能有一個


***
在同個資料夾下放dockerfile，要ADD進去的壓縮檔

路徑cd 到dockerfile

`docker build -t alexchiangoa/pglivetomcat:80 . --no-cache`

登入docker

`docker login`

上傳到docker hub

`docker push alexchiangoa/pglivetomcat`


