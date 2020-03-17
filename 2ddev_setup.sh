#!/usr/bin/env bash

apik=""
sudo DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=$apik bash -c "$(curl -L https://raw.githubusercontent.com/DataDog/datadog-agent/master/cmd/agent/install_script.sh)"
sudo usermod -a -G vagrant dd-agent
sudo datadog-agent status
sudo chmod 744 /etc/datadog-agent/auth_token
sudo service datadog-agent restart
ddev config set dd_api_key $apik
# /home/vagrant/.pyenv/shims/ddev config set dd_api_key $apik
# sudo chmod 764 /home/vagrant/.local/share/dd-checks-dev/config.toml

