FROM python:3.11

EXPOSE 8000

RUN mkdir /backend -p

WORKDIR /backend

ADD ./requirements.txt /backend

RUN cd /backend
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

ADD ./backend /backend

CMD ["python3", "manage.py", "runserver", "0:8000"]