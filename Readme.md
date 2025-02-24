https://github.com/llmware-ai/llmware/tree/main/fast_start/rag

https://www.udemy.com/course/learn-rag-with-llmware-2024/learn/lecture/42382534#overview


Example 1

Library - parse, text chunk, and index to convert a "pile of files" into an AI-ready knowledge-base. https://youtu.be/2xDefZ4oBOM?si=8vRCvqj0-HG3zc4c

First things first, open Git Bash

```
pip3 install llmware
```

The code for this example is here 

```
https://github.com/llmware-ai/llmware/blob/main/fast_start/rag/example-1-create_first_library.py
```

OK, if you just run this you're more likely to get the following error

```
ModuleNotFoundError: No module named 'llmware'
```

This is because your python version is not compatible, your version of Python doesn't have the LLMWare module.
So we have 2 options. 
1. downgrade Python 
2. run a Docker container with the correct Python version
We're sensible people so we are going with option 2. 

So we need the following Docker file
```
FROM python:3.12
```
Use a compatible Python version 

```
RUN pip3 install llmware
```
Install llmware
```
COPY example-1-create_first_library.py example-1-create_first_library.py
```
copy the python script across to our container
```
ENTRYPOINT ["python", "example-1-create_first_library.py"]
```
Run the script

So now we can build an image

```
docker build -t llmlibrary .
```
You can call it whatever you like, I called it llmlibrary.
And to run the script 
```
docker run -it llmlibrary
```
Hopefully everything runs and you get some query results :)

TODO
1. Keep the container running so I can ssh on and have a look at the files
2. Change the files to my own ones.
3. Experiment with the query
