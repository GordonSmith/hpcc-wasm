#!/bin/bash

# Define the default message if no CLI command is specified
DEFAULT_MESSAGE="No command specified."

# Get the CLI command argument
CLI_COMMAND=${1:?$DEFAULT_MESSAGE}

# Define the duration of the benchmark in seconds
BENCHMARK_DURATION=10

# Run the benchmark
echo "Running benchmark for $BENCHMARK_DURATION seconds..."

# Start the timer
START_TIME=$(date +%s.%N)

# Initialize the number of calls made to the CLI command
NUM_CALLS=0

# Loop until the benchmark duration is reached
while (( $(echo "$(date +%s.%N) - $START_TIME < $BENCHMARK_DURATION" | bc -l) ))
do
    # Call the CLI command
    $CLI_COMMAND > /dev/null

    # Increment the number of calls made to the CLI command
    NUM_CALLS=$((NUM_CALLS+1))
done

# Print the results of the benchmark
echo "Benchmark complete."
echo "Number of calls to $CLI_COMMAND: $NUM_CALLS"
