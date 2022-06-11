FROM python:3.7
ARG VERSION
LABEL org.label-schema.version=$VERSION
COPY ./requirements.txt /webapp/requirements.txt
WORKDIR /webapp
RUN pip install --upgrade --user pip && pip install -r requirements.txt --user
COPY webapp/* /webapp/
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
