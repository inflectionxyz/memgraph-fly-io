# Environment variables
APP_NAME ?=
REGION ?=

create_kg_app:
    @echo "Launching Knowledge Graph"
    fly apps create $(APP_NAME) --org=inflection-662

create_kg_volume:
    @echo "Creating Volume"
    fly volumes create mg_data \
       --size=10 \
       --region=$(REGION) \
       --app=$(APP_NAME) \
       --config=fly.toml \
       --yes

create_kg_public_ip:
    @echo "Creating Public IP"
    fly ips allocate-v4 --app=$(APP_NAME) --yes

deploy_kg:
    @echo "Deploying Knowledge Graph"
    fly deploy --ha=false --yes
