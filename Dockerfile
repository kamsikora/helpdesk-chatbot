FROM rasa/rasa:1.10.0-full

WORKDIR /app
USER root

ADD ./models /app/models/
ADD ./config /app/config/
ADD ./actions /app/actions/
ADD ./scripts /app/scripts/
ADD ./data /app/data/
ADD ./domain.yml /app/
ADD ./config.yml /app/

ENTRYPOINT []
USER 1001
CMD /app/scripts/start_services.sh