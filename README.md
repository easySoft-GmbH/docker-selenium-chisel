# docker-selenium-chisel
A selenium grid which could be used throw a tunnel

Exemple to start selenium grid with chisel:

docker run -p 4444:4444 -p 7900:7900 -p 2222:2222 -p 3002:3002 docker-selenium-chisel
Ports:
- 4444 for Selenium Grid
- 7900 for noVNC server
- 2222 for chisel server
- 3002 free for reverse tunnel, to be initiated from chisel client.