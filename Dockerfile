#FROM python
FROM python:alpine3.13@sha256:18aba152414e993ae52ccd930333f9b4a4e8cbc8c50a17cb47763c8a1faa4e03  #estonoae
#El nombre de imagen de docker puede no cambiar cuando se añaden parches de seguridad. El hash nos asegura la versión+parches concreta de python.
#El tag (alpine3.13) no se comprueba si hay un Hash, es sólo informativo.
WORKDIR /app
COPY src/anagrams.py /app
# Las dos siguientes quedan fuera del contenedor: 
CMD python anagrams.py
VOLUME /data
