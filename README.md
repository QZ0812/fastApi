# Backend Developer Assignment

To extract the archive, run the following command:

```bash
tar -xzvf assignment.tar.gz
```

## Set-Up
#### Development Environment

The following sections will explain how to set up and create the development environment.

##### Docker

Firstly, we have provided a Dockerfile to dockerize the application.

###### Installation

Docker can be installed by following the instructions [here.](https://docs.docker.com/get-docker/)

Docker Compose can be installed by following the instructions [here.](https://docs.docker.com/compose/install/)

##### Conda and Poetry
Alternatively, you can use `conda` and `poetry` to define the environment. 

###### Conda installation

If you do not have `conda` installed, please install the appropriate version from [here.](https://docs.conda.io/en/latest/miniconda.html)

###### Creating the conda environment
To install the development environment, run the following command:
```bash
conda env create -f dev-env.yml
```
This command will create a new `conda` environment called *backend*.

###### Activating the environment
To activate the environment, run the following command:
```bash
conda activate backend
```

###### Poetry installation

If you do not have `poetry` installed, please install the appropriate version from [here.](https://python-poetry.org/docs/#installation)

###### Installing the dependencies

To install the Python dependencies, run the following command in the `conda` environment:

```bash
poetry install
```

This command will install the Python dependencies in the *backend* environment.

## Testing
You can use these tests to validate that you have set up the development environment correctly.

### Pytest via Docker

To execute the tests, run the following command in the `conda` environment:
```bash
bash docker_run_tests.sh
```

### Pytest via Conda and Poetry

To execute the tests, run the following command in the `conda` environment:
```bash
pytest
```

### Development Server

#### Docker

To spin up a development server, run the following commands:

```bash
docker-compose build
docker-compose up -d
```

#### Conda and Poetry

To spin up a development server, run the following command:

```bash
uvicorn backend.main:app --reload
```

#### Documentation

You can view the OpenAPI documentation at the following endpoint `/docs`.

## Technical Assignment

### Introduction
VIA is developing an application to help a Power Company provide access to its data through VIA's analytics platform, TAC. 

This application will provide data to end-users via a RESTful API.

We have tasked you with developing the API used by the application using the python framework FastAPI.

Currently, only two endpoints have been added `/datasets` and `/users`, both with GET and POST methods.

#### Datasets
The purpose of this endpoint is to determine all the datasets defined in the application.
The schemas associated with the creation and return models for this endpoint are defined in `schemas.py`.
The database model is defined in `models.py`. The endpoint is defined in `datasets.py`.

#### Users
The purpose of this endpoint is to determine all the users defined in the application.
The schemas associated with the creation and return models for this endpoint are defined in `schemas.py`.
The database model is defined in `models.py`. The endpoint is defined in `users.py`.

#### Requirements

The Product Owner has provided the following user stories for the application.

As an application user, I would like

1. to be able to add a new dataset by providing its name and description. //done
   
2. to be able to retrieve a list of all datasets.   //done
   
3. to be able to update the name and/or description of a dataset. //done
   
4. the name of the dataset to be unique and to receive an appropriate error message when attempting to create a dataset with a non-unique name. //done
   
5. to be able to delete a dataset.  //done
   
6. to be able to add a new user by providing their name and surname. //done
   
7. to be able to retrieve a list of all users. //done
    
8. to be able to define a relationship between datasets and users which signifies which datasets users have access to. //done
    
9. to be able to add a dataset to the list of datasets a specific user has access to. //done
 
10. to be able to list all the users with access to a specific dataset.  //done

### Task
**Your task is to take the current API and improve it such that it meets the requirements provided by the PO. 
You have 2 hours to complete as much of the assignment as you can within that time.**

### Evaluation
To help evaluate whether the API meets the requirements, you should:

* **provide a test case for each requirement you complete.**
* **ensure all tests pass with a coverage of at least 95%.**
* **add a doc-string to each test indicating the requirement tested.**

### Submission
Use the following command to archive your solution:

```bash
bash archive.sh
```

This command will create an archive called `assignment.tar.gz` in the current folder.

Please submit the compressed archive, containing your assignment, to Lydia. 