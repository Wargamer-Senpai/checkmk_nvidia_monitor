#!/bin/bash

GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv,noheader,nounits)
UTILIZATION=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
FAN=$(nvidia-smi --query-gpu=fan.speed --format=csv,noheader,nounits)
TEMP=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
POWER=$(nvidia-smi --query-gpu=power.draw --format=csv,noheader,nounits)
LIMIT=$(nvidia-smi --query-gpu=power.limit --format=csv,noheader,nounits)
MEMORY=$(nvidia-smi --query-gpu=utilization.memory --format=csv,noheader,nounits)

# metricname=value;warn;crit;min;max
echo "0 'GPU Stats $GPU' Utilization=$UTILIZATION|Temperature=$TEMP|power_limit=$LIMIT|Memory=$MEMORY|Fan_Speed=$FAN|power_usage=$POWER" 
