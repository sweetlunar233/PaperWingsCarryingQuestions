FROM python:3.11

EXPOSE 8000

RUN mkdir /backend -p

WORKDIR /backend

ADD ./requirements.txt /backend

RUN cd /backend
RUN python3 -m pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install cryptography==42.0.8 -i https://pypi.tuna.tsinghua.edu.cn/simple

ADD ./backend /backend

CMD ["python3", "manage.py", "runserver", "0:8000"]