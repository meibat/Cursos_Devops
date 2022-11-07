# [Docker.docs](https://docs.docker.com/) 

**Dar acesso adm para o docker:** `sudo usermod -aG docker $USER`

## Imagem

**Baixa imagem:** `docker pull ubuntu`

**Baixa imagem se necessário, e roda:** `docker run hello-world`

**Criar imagem:** `docker build –t nomeimage/app-node:1.0 .` (executar dentro da pasta do dockerfile)

**Criar container com volume associado:** `docker run -it –v meu-volume:/app ubuntu bash`

**Criar com mapeamento da porta do container com host:** `docker run –d –p 8080:80 dockersamples/static-site`

**Criar container com nome e rede:** `docker run –it -–name ubuntu1 -–network minha-bridge ubuntu bash`

**Remover todos os containers:** `docker container rm $(docker container ls -aq)`

**Remover todas as images:** `docker rmi $(docker image ls -aq) --force`
 
## Network

**Criar network:** `docker network create --driver bridge minha-bridge`

## Volume

**Criar volume:** `docker volume create meu-volume`

**Utilizando bind mounts para persistir os dados:** `Docker run –it –v /home/mei/volume-docker:/app ubuntu bash`

**Utilizando bind mounts para persistir os dados (Recomendada):** `Docker run –it –mout type=bind,source=/home/mei/volume-docker,target=/app ubuntu bash`

**Encontrando os volumes no root:** `cd /var/lib/docker/volumes`

## Exibir

**Exibe os containers em execusão:** `docker ps –a`

**Exibe todos os containers:** `docker container ls –a`

**Exibe todos os containers e seu tamanho:** `docker ps –as`

**Exibe as imagens:** `docker images `

**Exibe as camadas da imagem:** `docker history f589ccde7957`

**Exibe os volumes:** `docker volume ls`

**Exibe as redes dos containers:** `docker network ls`

**Exibe infos sobre o container:** `docker inspect b0e93e405db6`


**Mostrar como está o mapeamento de portas de um container em relação ao host:** `docker port b0e93e405db6`


## Container

**Inicia o container:** `docker start`

**Desliga o container:** `docker stop`

**Executa:** `docker exec`

**Para:** `docker pause`

**Parar todos os containers:** `docker stop $(docker container ls -q) `

**Volta a executar:** `docker unpause `


## Dockerfile

`ARG PORT=3000 (Argumento de tempo de build)`<br>
`ENV $PORT (Argumento usado dentro do container)`<br>
`EXPOSE $PORT (Porta exposta)`
