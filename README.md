# Purpose

To provide a starting point for a [Bridgetown](https://bridgetownrb.com)
project.

## Quick start

```bash
git clone https://github.com/ParamagicDev/getting-started-with-bridgetown.git
cd getting-started-with-bridgetown
source ./docker.env
docker-compose up --build
```

Navigate to `localhost:4000` in your browser and you should be up and
running!

## Commands:

```
{
  "scripts": {
    "build": "bundle exec bridgetown build",
    "serve": "bundle exec bridgetown serve",
    "webpack-build": "webpack --mode production",
    "webpack-dev": "webpack --mode development -w",
    "deploy": "yarn webpack-build && yarn build",
    "sync": "node sync.js",
    "start": "node start.js"
  }
}
```

Two main commands:

## For development

`yarn start`: calls `node start.js`
Uses `concurrently` to run 3 commands simultaneously.

`start.js`

```bash
yarn webpack-dev &
yarn serve &
yarn sync
```

3 ports get taken up.

localhost:4000 - Viewable locally and externally (go to localhost:4002 to view how
to share, uses [BrowserSync] to accomplish this)
localhost:4001 - Viewable only locally.
localhost:4002 - Browser sync

## For Production build

`yarn deploy`

```bash
yarn webpack-build && bundle exec bridgetown build
```
