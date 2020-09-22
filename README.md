# Smokeping Exporter

Docker image of the [smokeping_prober](https://github.com/SuperQ/smokeping_prober) Prometheus client implementation of smokeping.

## Usage
Pull the image and run it using your preferred method.  Standalone from the command line, you can run as follows.  See [smokeping_prober](https://github.com/SuperQ/smokeping_prober) for list of command line options.  These can be added via "CMD" override:

```bash
docker pull jrowe88/smokeping_exporter
docker run -d -p 9374:9374 --name smokeping_exporter jrowe88/smokeping_exporter
```

## References
1. Prometheus implementation project by SuperQ: [SuperQ/smokeping_prober](https://github.com/SuperQ/smokeping_prober)
2. Smoke Ping:  [Website](http://www.smokeping.org/) | [GitHub](https://github.com/oetiker/SmokePing)
3. [Prometheus](http://prometheus.io) monitoring solution