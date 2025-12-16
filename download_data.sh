#!/bin/bash

mkdir -p data/ocean

echo "Downloading ocean data..."

curl -L -o data/ocean/inputs.mat \
 https://github.com/agrubertx/Multifidelity-Monte-Carlo/raw/refs/heads/main/ocean_experiment/data/SWEfilesNEW.mat

curl -L -o data/ocean/costs.mat \
 https://github.com/agrubertx/Multifidelity-Monte-Carlo/raw/refs/heads/main/ocean_experiment/data/comp_costs_SOMA.mat

curl -L -o data/ocean/hf.mat \
 https://github.com/agrubertx/Multifidelity-Monte-Carlo/raw/refs/heads/main/ocean_experiment/data/32km_interp1.mat

curl -L -o data/ocean/lf1.mat \
 https://github.com/agrubertx/Multifidelity-Monte-Carlo/raw/refs/heads/main/ocean_experiment/data/32km_interp3.mat

echo "ocean data downloaded"

mkdir -p data/atmosphere

echo "Downloading atmosphere data..."

curl -L -o data/atmosphere/data.dat \
 https://raw.githubusercontent.com/agrubertx/Multifidelity-Monte-Carlo/refs/heads/main/atmosphere_experiment/data/data.dat

echo "atmosphere data downloaded"
echo "All data downloaded"