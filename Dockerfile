FROM python:3.12

RUN pip3 install llmware

COPY example-1-create_first_library.py example-1-create_first_library.py

ENTRYPOINT ["python", "example-1-create_first_library.py"]