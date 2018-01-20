Config generator
The simpliest example how Python, Flask, jinja2 and bootstrap could be used to generate configurations in web.

**How to start**

Manually: 
* git clone https://github.com/Sk1f3r/config-generator.git && ./config-generator/app.py

As a container:
* sudo docker pull sk1f3r/config-generator
* docker container run -d --name cfgen1 -p 8080:80 sk1f3r/config-generator
* open http://<host-ip>:8080

***
# Screenshots

1. Main page
![](http://sk1f3r.ru/cg/cg_main.png)

2. Input fields for AS type - init
![](http://sk1f3r.ru/cg/cg_as-input-init.png)

3. Input fields for AS type - filled
![](http://sk1f3r.ru/cg/cg_as-input-done.png)

4. Input fields for BR type - init
![](http://sk1f3r.ru/cg/cg_br-input-init.png)

5. Input fields for BR type - filled
![](http://sk1f3r.ru/cg/cg_br-input-done.png)

6. Output for AS type
![](http://sk1f3r.ru/cg/cg_as-output.png)

7. Output for BR type
![](http://sk1f3r.ru/cg/cg_br-output.png)
