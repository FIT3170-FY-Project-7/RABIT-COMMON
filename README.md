# Robust Analytical Bayesian Inference Tool (RABIT)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-18-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://linkedin.com/in/vajpeyi/"><img src="https://avatars.githubusercontent.com/u/15642823?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Avi Vajpeyi</b></sub></a><br /><a href="#mentoring-avivajpeyi" title="Mentoring">🧑‍🏫</a></td>
    <td align="center"><a href="https://github.com/AaditBhuwalka"><img src="https://avatars.githubusercontent.com/u/55835278?v=4?s=100" width="100px;" alt=""/><br /><sub><b>AaditBhuwalka</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=AaditBhuwalka" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/adam23232323"><img src="https://avatars.githubusercontent.com/u/55467606?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Adam</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=adam23232323" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/bevanlewis"><img src="https://avatars.githubusercontent.com/u/51845347?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Bevan Lewis</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=bevanlewis" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Brittank88"><img src="https://avatars.githubusercontent.com/u/24266948?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Brittank88</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=Brittank88" title="Code">💻</a> <a href="#infra-Brittank88" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#design-Brittank88" title="Design">🎨</a></td>
    <td align="center"><a href="https://github.com/Daniel-W-230"><img src="https://avatars.githubusercontent.com/u/101313229?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Daniel-W-230</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=Daniel-W-230" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/ddes0015"><img src="https://avatars.githubusercontent.com/u/62590792?v=4?s=100" width="100px;" alt=""/><br /><sub><b>ddes0015</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=ddes0015" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/JMSS-Unknown"><img src="https://avatars.githubusercontent.com/u/31131631?v=4?s=100" width="100px;" alt=""/><br /><sub><b>JMSS-Unknown</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=JMSS-Unknown" title="Code">💻</a> <a href="#infra-JMSS-Unknown" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/pulls?q=is%3Apr+reviewed-by%3AJMSS-Unknown" title="Reviewed Pull Requests">👀</a></td>
    <td align="center"><a href="https://github.com/jpit0004"><img src="https://avatars.githubusercontent.com/u/102277225?v=4?s=100" width="100px;" alt=""/><br /><sub><b>jpit0004</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=jpit0004" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Markichu"><img src="https://avatars.githubusercontent.com/u/31204091?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Marcus Fox</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=Markichu" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/megascrapper"><img src="https://avatars.githubusercontent.com/u/34503494?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Akbar Fadiansyah</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=megascrapper" title="Code">💻</a> <a href="#infra-megascrapper" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=megascrapper" title="Documentation">📖</a></td>
    <td align="center"><a href="https://github.com/rale0002"><img src="https://avatars.githubusercontent.com/u/88470745?v=4?s=100" width="100px;" alt=""/><br /><sub><b>rale0002</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=rale0002" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/RHackers-00"><img src="https://avatars.githubusercontent.com/u/55224240?v=4?s=100" width="100px;" alt=""/><br /><sub><b>RHackers-00</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=RHackers-00" title="Code">💻</a> <a href="#projectManagement-RHackers-00" title="Project Management">📆</a></td>
    <td align="center"><a href="https://github.com/RohitRajeshh"><img src="https://avatars.githubusercontent.com/u/62091393?v=4?s=100" width="100px;" alt=""/><br /><sub><b>RohitRajeshh</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=RohitRajeshh" title="Code">💻</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/Teg64"><img src="https://avatars.githubusercontent.com/u/101340211?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Teg64</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=Teg64" title="Code">💻</a> <a href="#infra-Teg64" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#projectManagement-Teg64" title="Project Management">📆</a> <a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/pulls?q=is%3Apr+reviewed-by%3ATeg64" title="Reviewed Pull Requests">👀</a></td>
    <td align="center"><a href="https://github.com/TONG0006"><img src="https://avatars.githubusercontent.com/u/55778977?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Timothy Ongko</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=TONG0006" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/VenuraWe"><img src="https://avatars.githubusercontent.com/u/69625231?v=4?s=100" width="100px;" alt=""/><br /><sub><b>VenuraWe</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=VenuraWe" title="Code">💻</a> <a href="#projectManagement-VenuraWe" title="Project Management">📆</a></td>
    <td align="center"><a href="https://github.com/Viny143"><img src="https://avatars.githubusercontent.com/u/53497752?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Viny143</b></sub></a><br /><a href="https://github.com/FIT3170-FY-Project-7/RABIT-COMMON/commits?author=Viny143" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!