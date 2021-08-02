FROM python:3.9
#setting PYTHONBUFFERED to a nonempty value means
# that the python output is sent to the terminal without 
#bieng buffered and we can see the output in real time
# (eg.django logs) 
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD python manage.py runserver 0.0.0.0:8000