# Robust Analytical Bayesian Inference Tool (RABIT)

An online data visualisation toolkit for Bayesian parameter estimation data.

## Features

`Coming soon!`
<!-- TODO -->

## Installation

### Cloning the repository

Clone this repository and all submodules.

```
git clone https://github.com/FIT3170-FY-Project-7/RABIT-COMMON.git --recursive
```

Switch to the `dev` branch in `RABIT-FRONTEND` or any branch that you're currently working on. **Do not use the `main` branch**.

```
cd RABIT-COMMON/RABIT-FRONTEND
git checkout dev
cd ..
```

Then proceed to the Docker or manual installation sections below.

### Docker

#### Dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Instructions

In the RABIT-COMMON directory, run:

```
docker-compose up --build
```

The app will be running at <http://localhost:8080/>

In case of an error, you may need to return to `RABIT-FRONTEND` and run:

```
rm package-lock.json
rm -rf node_modules
npm install
```

Afterwards, return to `RABIT-COMMON` and re-run `docker-compose up --build`

When you are making changes to the code, stop the containers and run

```
docker-compose up --build --force-recreate
```

Doing this will force rebuild and recreate the docker container.

### Manual installation

#### Dependencies

- [Node.js](https://nodejs.org/en/) - version 18 or later

You must follow both frontend and backend instructions.

#### Backend instructions

We're currently running a temporary backend to handle the file upload. We have our proper backend currently in development in [RABIT-BACKEND](https://github.com/FIT3170-FY-Project-7/RABIT-BACKEND).

Firstly, create a directory somewhere outside the repository. Here we will name it `rabit-backend-temp`.

In `RABIT-FRONTEND` directory, copy `server.tsx` to `rabit-backend-temp`. Then `cd` to `rabit-backend-temp` and install dependencies.

```
npm install express multer cors nodemon -save
npm install typescript @types/node --save-dev
```

Compile `server.tsx` and run the resulting js file

```
npx tsc server.tsx
node server.js
```

#### Frontend instructions

In `RABIT-FRONTEND` directory:

Install dependencies

```
npm install --save-dev
```

Run the app

```
npm run start
```

The app will be running at <http://localhost:3000/>

## Contributing

Refer to the [contributions document](CONTRIBUTING.md).
<!-- TODO: Setup all-contributors if not done already! -->

## Licence

Refer to the [ISC license file](LICENSE.md).
