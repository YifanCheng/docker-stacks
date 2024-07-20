FROM arbennett/base-geoscience

# Install code-server
USER root
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Set the working directory and user
USER ${NB_UID}
WORKDIR /home/jovyan

# Install VS Code extensions and themes
RUN mkdir -p ~/.local/share/code-server/extensions
RUN code-server --install-extension ms-python.python \
    && code-server --install-extension ms-toolsai.jupyter \
    && code-server --install-extension charliermarsh.ruff \
    && code-server --install-extension catppuccin.catppuccin-vsc \
    && code-server --install-extension arcticicestudio.nord-visual-studio-code

RUN git clone https://github.com/BennettHydroLab/python_for_water_weather_climate.git

# Expose the port code-server will run on
EXPOSE 8080

# Command to run code-server
CMD ["code-server", "--auth", "none", "--host", "0.0.0.0", "--port", "8080"]
