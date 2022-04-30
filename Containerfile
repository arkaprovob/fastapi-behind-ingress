FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
COPY ./app /code/app

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN chgrp -R 0 /code && chmod -R g=u /code

USER 0

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
