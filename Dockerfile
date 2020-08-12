# Choose the base image for our final image
FROM python:3-slim

RUN apt update && \
    apt install --yes git && \
    apt install --yes wkhtmltopdf
# Clone a repository (my website in this case)
RUN git clone --branch testplan2html_p3 https://github.com/mwasilew/test-definitions.git /test-definitions
RUN python3 -m pip install -r /test-definitions/plans/requirements.txt
