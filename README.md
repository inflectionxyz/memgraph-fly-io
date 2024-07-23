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
2. Update the `fly.toml` file with your app name and region
2. Create a new Fly.io app: `flyctl launch`
3. Create a new volume: `flyctl volumes create mg_data --size SIZE --region REGION --yes`
4. Deploy the app: `flyctl deploy`
5. Set the Fly.io auth secrets

## Notes:
- I use a local copy of the Memgraph Lab to connect, you can find the download link [here](https://memgraph.com/download)

## Resources:
- [Memgraph](https://memgraph.com/)
- [Fly.io](https://fly.io/)

If you have any questions or need help, feel free to reach out to me at: [ap@inflection.xyz](mailto:ap@inflection.xyz)
