# Apache basics

Projetinho para aprender sobre [Apache](https://httpd.apache.org/), feito para resolver o desafio final da disciplina de Sistemas Operacionais do curso de Sistemas da Informação da Faculdade XP Educação em Dezembro / 2023.  
O desafio consistia em configurar um servidor Apache com dois sites. Obviamente, como não comprei os domínios utilizados, a configuração dos domínios não funciona.  
O exercício inicial não compreendia o uso de Docker, porém achei essa solução mais interessante para fazer testes com o Apache sem bagunçar minhas configurações locais. Essa solução trouxe um problema para quem não conhece Docker, pois, a cada vez que o conteiner é recriado, o ip atribuído a ele é randomizado. Para acessar os sites no navegador, é preciso seguir as etapas:
1. Rodar o conteiner com `docker compose up -d`
2. Entrar no terminal do conteiner com `docker exec -it m4_apache bash`
3. Descobrir o ip atribuído ao conteiner com `cat /etc/hosts | grep .0.2`
4. Acessar pelo navegador o ip do conteiner, por exemplo: `172.30.0.2`
5. Para parar o container, use o comando `docker compose down`  

As atualizações feitas nos arquivos da pasta /html serão atualizadas imediatamente (dar refresh na página). Os demais arquivos serão atualizados ao se recriar o conteiner ou a imagem. Para isso, pare o container e reinicie com o comando `docker compose up -d --build`.

Desenvolvido por [Atauã Pinali Doederlein](https://github.com/ataua)