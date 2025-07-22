FROM ubuntu
ARG PYTHON_ENV=my_env
ENV PYTHON_ENV=$PYTHON_ENV
RUN apt-get update
RUN apt-get install -y  python3 python3-pip
RUN apt-get install -y python3.12-venv
RUN mkdir requirements
COPY requirements.txt set_python_env.sh app.py /requirements/
RUN bash /requirements/set_python_env.sh $PYTHON_ENV
CMD ["/opt/my_env/bin/python3", "/requirements/app.py"]
