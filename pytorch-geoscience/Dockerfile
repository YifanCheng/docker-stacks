FROM jupyter/pytorch-notebook

LABEL maintainer="Andrew Bennett <bennett.andr@gmail.com>"

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN mamba install --quiet --yes -c conda-forge \
    python=3.10 \
    xarray \
    dask \
    netcdf4 \
    zarr \
    fsspec \
    aiohttp \
    pooch \
    fiona \
    pyogrio \
    geopandas \
    rioxarray \
    cartopy \
    holoviews \
    geoviews \
    jupyter \
    jupyterlab \
    pip && \
    mamba clean --all -f -y
