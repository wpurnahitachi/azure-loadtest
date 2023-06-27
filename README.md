# Azure Load Test with Apache JMeter and GitHub Actions

This repository contains files and scripts to create and deploy an Azure Load Test using Apache JMeter, automate with CI/CD pipeline,  as well as deploying the necessary Azure resources using GitHub Actions and Bicep.

## Table of Contents

- [Azure Load Test with Apache JMeter and GitHub Actions](#azure-load-test-with-apache-jmeter-and-github-actions)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Repository Structure](#repository-structure)
  - [Prerequisites](#prerequisites)
  - [Setup and Deployment](#setup-and-deployment)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Introduction

This repository provides a solution for load testing web applications and APIs hosted on Azure using Apache JMeter and Azure Load Test. The load test is orchestrated and automated using GitHub Actions and Bicep.

The solution allows you to define and execute load tests using JMeter scripts, create the necessary Azure resources (such as a resource group, key vault, and Load Test instance) using Bicep, and deploy the load test infrastructure using GitHub Actions.

## Repository Structure

The repository is organized as follows:

- `jmeter-scripts/`: Contains the Apache JMeter scripts used for load testing.
- `bicep-templates/`: Includes the Bicep templates for deploying Azure resources.
- `.github/workflows/`: Contains the GitHub Actions workflow files for automating the load test deployment.
- `README.md`: This file providing an overview and instructions.

## Prerequisites

Before using this repository, make sure you have the following prerequisites in place:

1. An Azure subscription and sufficient permissions to deploy resources.
2. Apache JMeter installed locally or available in your build environment.
3. A GitHub repository with write access.

## Setup and Deployment

To set up and deploy the Azure Load Test infrastructure, follow these steps:

1. Clone the repository to your local machine or your GitHub repository.
2. Update the Bicep templates in the `bicep-templates/` directory with the necessary configurations for your environment and load test requirements.
3. Customize the JMeter scripts in the `jmeter-scripts/` directory to suit your application and load testing scenarios.
4. Configure the GitHub Actions workflows in the `.github/workflows/` directory, specifying the required input parameters and referencing the Bicep templates and JMeter scripts.
5. Push your changes to the repository, triggering the GitHub Actions workflows to deploy the infrastructure and execute the load tests.

## Usage

Once the setup and deployment are complete, you can use the Azure Load Test infrastructure in the following way:

1. Open the Azure portal and verify that the resources (resource group, key vault, Load Test instance) are successfully deployed.
2. Use Apache JMeter to further customize the load test scenarios and scripts in the `jmeter-scripts/` directory.
3. Trigger the GitHub Actions workflow to execute the load tests automatically. The workflow will use the JMeter scripts and the Load Test instance created during deployment.
4. Monitor the load test results in Azure, analyze the performance metrics, and make any necessary adjustments to optimize your application's performance.

## Contributing

Contributions to this repository are welcome. If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request. Please ensure that your contributions align with the repository's guidelines and follow the code of conduct.

## License

This repository is licensed under the [MIT License](LICENSE). Feel free to use and modify the provided code as per the license terms.
