FROM python:3

WORKDIR /usr/src

COPY Pipfile* ./
RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile

COPY app ./app

CMD [ "python", "app/app.py" ]