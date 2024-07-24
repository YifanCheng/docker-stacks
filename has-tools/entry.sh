#!/bin/bash
touch $HOME/.irods/irods_environment.json
echo '{"irods_host": "data.cyverse.org", "irods_port": 1247, "irods_user_name": "$IPLANT_USER", "irods_zone_name": "iplant"}' >> $HOME/.irods/irods_environment.json


echo "export PATH=$PATH:/opt/conda/bin" >> ~/.bashrc

# Install VS Code extensions and themes
mkdir -p /home/jovyan/.local/share/code-server/extensions
code-server --install-extension ms-python.python \
    && code-server --install-extension ms-toolsai.jupyter \
    && code-server --install-extension charliermarsh.ruff \
    && code-server --install-extension catppuccin.catppuccin-vsc \
    && code-server --install-extension arcticicestudio.nord-visual-studio-code

git clone https://github.com/BennettHydroLab/python_for_water_weather_climate.git

code-server --auth none --host 0.0.0.0 --disable-telemetry --disable-update-check --port 8080 .