<!--
 ___ _            _ _    _ _    __
/ __(_)_ __  _ __| (_)__(_) |_ /_/
\__ \ | '  \| '_ \ | / _| |  _/ -_)
|___/_|_|_|_| .__/_|_\__|_|\__\___|
            |_|
-->
![](https://cdn.jsdelivr.net/gh/simplicitesoftware/resources@latest/public/logo_simplicite/standard/logo250.png)
* * *

Demo v7 project
===============

This is the demo v7 project packaging.

Clone the modules
-----------------

Only needed once:

```bash
./clone.sh
```

Pull the latest modules
-----------------------

Only needed if the modules were already cloned:

```bash
./pull.sh
```

Check before building
---------------------

```bash
mvn clean package
```

Build the image with the modules
--------------------------------

```bash
docker compose build
```

Run
---

```bash
docker compose up
```
