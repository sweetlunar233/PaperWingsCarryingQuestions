FROM python:3.11

EXPOSE 8000

RUN mkdir /backend -p

WORKDIR /backend

ADD ./requirements.txt /backend

RUN cd /backend
RUN python -m pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install cryptography

ADD ./backend /backend

CMD ["python3", "manage.py", "runserver", "0:8000"]