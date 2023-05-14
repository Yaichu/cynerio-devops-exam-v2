### The goal of this project is to wrap a small web service with redis & prometheus and deploy it using docker and docker-compose.

In order to run the project you should:

```
docker-compose up -d
```

Run tests:

```
bash test.sh
```

------------------------------------------------------------------------------------------------------------------

### Project Description:


1. A Dockerfile that is written using best practices.

2. A docker-compose file that brings up the service together with Redis and Prometheus.

3. Redis saves the data on every change to an attached storage (in our case, a directory mounted into the container).

4. Redis is configured with ACLs, user and password and with the default password disabled.

5. The credentials are passed to the app service as environment variables.

6. The Prometheus service is configured to get the metrics from the app.

7. All of the services are configured with health checks.

8. There is a healthcheck route under `/healthcheck` that returns `{"status": "ok"}` whenever it is called.

9. All of the services are monitored by their aforementioned healthcheck by docker.
