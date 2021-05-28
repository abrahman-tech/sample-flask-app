FROM python:alpine3.7


RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /app/templates
ADD ./src/templates/index.html /app/templates/
ADD ./src/app.py app.py
ADD ./src/requirements.txt requirements.txt
RUN pip install -r requirements.txt


#setup curl for healthcheck
HEALTHCHECK --interval=30s --timeout=30s --start-period=30s --retries=3 \
 CMD curl -w %{http_code} --output /dev/null http://0.0.0.0:5000/ \
       | grep 200 \
       || kill -s 15 1 && (sleep 30; kill -s 9 1)

CMD ["python", "app.py"]