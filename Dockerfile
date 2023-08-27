FROM python
WORKDIR /code
COPY . /main
COPY . /requirements.txt 
COPY . /codellama-7b-instruct.ggmlv3.Q4_0.bin
RUN pip3 install -r requirements.txt
CMD ["python3","main.py"]