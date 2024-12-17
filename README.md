<!--
 ___ _            _ _    _ _    __
/ __(_)_ __  _ __| (_)__(_) |_ /_/
\__ \ | '  \| '_ \ | / _| |  _/ -_)
|___/_|_|_|_| .__/_|_\__|_|\__\___|
            |_|
-->
![](https://docs.simplicite.io//logos/logo250.png)
* * *

Demo v5 project
===============

This is the demo v5 project packaging.

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
mvn -U -DskipTests=true clean package
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
