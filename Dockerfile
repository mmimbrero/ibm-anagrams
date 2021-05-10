FROM python
WORKDIR /app
COPY src/anagrams.py /app
# Las dos siguientes quedan fuera del contenedor
CMD python anagrams.py
VOLUME /data
