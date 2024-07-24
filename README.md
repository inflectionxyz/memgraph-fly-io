# Memgraph on Fly.io

This repository contains the configuration files for deploying Memgraph on Fly.io.

This wasn't the most straightforward process and there weren't a lot of resources, so I hope this repository can help others who are looking to deploy Memgraph on Fly.io.

## Prerequisites:
- [Fly.io account](https://fly.io/)
- Fly CLI installed

## Auth:
You can add authentication by creating `MEMGRAPH_USERNAME` and `MEMGRAPH_PASSWORD` secrets either through the Fly.io dashboard or using the Fly CLI.

## Steps:
1. Clone this repository (or copy the files to your own repository)
2. Update the `fly.toml` file and `Makefile` with your app name and region
2. Create a new Fly.io app: `make create_kg_app`
3. Create a new volume: `make create_kg_volume`
4. Create a new IP address: `make create_kg_public_ip`
5. Deploy the app: `make deploy_kg`
6. Set the Fly.io auth secrets (either by using the dashboard or the CLI)

## Access:
To access the Memgraph instance, be sure to set the "encrypted" setting to `true` with the client you're using. Then just use the IP Address as the host, your username and password, and you should be good to go.

## Notes:
- I use a local copy of the Memgraph Lab to connect, you can find the download link [here](https://memgraph.com/download)

## Resources:
- [Memgraph](https://memgraph.com/)
- [Fly.io](https://fly.io/)

If you have any questions or need help, feel free to reach out to me at: [ap@inflection.xyz](mailto:ap@inflection.xyz)
