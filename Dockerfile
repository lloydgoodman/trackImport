FROM python

# Set the working directory to /app
WORKDIR /usr/src/app

COPY . /usr/src/app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Remember - CMD wont run until run an instance, and even then
# only if you dont provide abnother coammand at run time
CMD ["python", "gpsExtract.py", "test.xml"]
