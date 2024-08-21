FROM python:3.11

EXPOSE 8000

RUN mkdir /app_backend -p

WORKDIR /app_backend

ADD ./requirements.txt /app_backend

RUN cd /app_backend
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

ADD ./backend /app_backend

CMD ["python3", "manage.py", "runserver", "0:8000"]