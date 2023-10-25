FROM python:3.10.0-alpine3.15
 
WORKDIR /app
 
COPY /requirements.txt /app
 
RUN pip install -r requirement.txt
COPY . /app
 
EXPOSE 8000
 
CMD [ "python","manage.py","runserver","0.0.0.0:8000"]