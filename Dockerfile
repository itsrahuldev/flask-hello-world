FROM : python-alpine3.10
RUN mkdir flask-hello-world
ADD . /flask-hello-world
RUN cd flask-hello-world && \
    pip3 install flask
WORKDIR flask-hello-world
EXPOSE 5000
CMD ["flask", "run", "-h", "0.0.0.0"]