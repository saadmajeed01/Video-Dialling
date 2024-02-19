<h1 align="center">Video Dialling</h1>

<br />

<p align="center">Free WebRTC - SFU - Simple, Secure, Scalable Real-Time Video Conferences with support for up to 4k resolution. It's compatible with all major browsers and platforms</p>

<hr />

<p align="center">
    <a href="https://sfu.videodialling.com/">Explore Video Dialling</a>
</p>

<hr />

<p align="center">
    <a href="https://sfu.videodialling.com/">
        <img src="public/images/videodialling-header.gif">
    </a>
</p>

<hr />

<p align="center">
    Join our community for questions, discussions, and support on <a href="https://averox.com">Averox</a>
</p>

<hr />

<details>
<summary>Features</summary>

<br/>

-   Is `100% Free` - `Open Source (AGPLv3)` - `Self Hosted` and [PWA](https://en.wikipedia.org/wiki/Progressive_web_application)!
-   Unlimited conference rooms with no time limitations.
-   Live broadcasting streaming.
-   Translated into 133 languages.
-   Host protection to prevent unauthorized access.
-   User auth to prevent unauthorized access.
-   JWT.io securely manages credentials for host configurations and user authentication, enhancing security and streamlining processes.
-   Room password protection.
-   Room lobby, central gathering space.
-   Room spam mitigations, focused on preventing spam.
-   Geolocation, identification or estimation of the real-world geographic location of the participants.
-   Compatible with desktop and mobile devices.
-   Optimized mobile room URL sharing.
-   Webcam streaming with front and rear camera support for mobile devices.
-   Broadcasting, distribution of audio or video content to a wide audience.
-   Crystal-clear audio streaming with speaking detection and volume indicators.
-   Screen sharing for presentations.
-   File sharing with drag-and-drop support.
-   Choose your audio input, output, and video source.
-   Supports video quality up to 4K.
-   Supports advance Picture-in-Picture (PiP) offering a more streamlined and flexible viewing experience.
-   Record your screen, audio, and video.
-   Snapshot video frames and save them as PNG images.
-   Chat with an Emoji Picker for expressing feelings, private messages, Markdown support, and conversation saving.
-   ChatGPT (powered by OpenAI) for answering questions, providing information, and connecting users to relevant resources.
-   Speech recognition, execute the app features simply with your voice.
-   Push-to-talk functionality, similar to a walkie-talkie.
-   Advanced collaborative whiteboard for teachers.
-   Real-time sharing of YouTube embed videos, video files (MP4, WebM, OGG), and audio files (MP3).
-   Full-screen mode with one-click video element zooming and pin/unpin.
-   Customizable UI themes.
-   Right-click options on video elements for additional controls.
-   Supports [REST API](app/api/README.md) (Application Programming Interface).
-   Integration with [Slack](https://api.slack.com/apps/) for enhanced communication.
-   Utilizes [Sentry](https://sentry.io/) for error reporting.
-   And much more...

</details>

<details>
<summary>About</summary>

<br>

-   [Presentation](https://www.videodialling.com/design/DAE693uLOIU/view)
-   [Video Overview](https://www.videodialling.com/watch?v=_IVn2aINYww)

</details>

<details>
<summary>Direct Join</summary>

<br/>

-   You can `directly join a room` by using link like:
-   https://sfu.videodialling.com/join?room=test&roomPassword=0&name=videodialling&audio=0&video=0&screen=0&notify=0

    | Params       | Type           | Description     |
    | ------------ | -------------- | --------------- |
    | room         | string         | Room Id         |
    | roomPassword | string/boolean | Room password   |
    | name         | string         | User name       |
    | audio        | boolean        | Audio stream    |
    | video        | boolean        | Video stream    |
    | screen       | boolean        | Screen stream   |
    | notify       | boolean        | Welcome message |
    | hide         | boolean        | Hide myself     |
    | token        | string         | JWT             |

</details>

<details>
<summary>Host Protection Configuration</summary>

<br/>

When [host.protected](https://docs.videodialling.com/videodialling-sfu/host-protection/) or `host.user_auth` is enabled, the host/users can provide a valid token for direct joining the room as specified in the `app/src/config.js` file.

| Params           | Value                                                                            | Description                                                                            |
| ---------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `host.protected` | `true` if protection is enabled, `false` if not (default false)                  | Requires the host to provide a valid username and password during room initialization. |
| `host.user_auth` | `true` if user authentication is required, `false` if not (default false).       | Determines whether host authentication is required.                                    |
| `host.users`     | JSON array with user objects: `{"username": "username", "password": "password"}` | List of valid host users with their credentials.                                       |

Example:

```js
    host: {
        protected: true,
        user_auth: true,
        users: [
            {
                username: 'username',
                password: 'password',
            },
            {
                username: 'username2',
                password: 'password2',
            },
            //...
        ],
    },
```

</details>

<details>
<summary>Embed a meeting</summary>

<br/>

To embed a meeting in `your service or app` using an iframe, use the following code:

```html
<iframe
    allow="camera; microphone; display-capture; fullscreen; clipboard-read; clipboard-write; autoplay"
    src="https://sfu.videodialling.com/newroom"
    style="height: 100vh; width: 100vw; border: 0px;"
></iframe>
```

</details>

<details open>
<summary>Quick Start</summary>

<br/>

-   Before running video dialling, ensure you have `Node.js` and all [requirements](https://mediasoup.org/documentation/v3/mediasoup/installation/#requirements) installed. This project has been tested with Node version [16.X](https://nodejs.org/en/blog/release/v16.15.1/) and [18.X](https://nodejs.org/en/download).

-   Requirements install example for `Ubuntu 20.04`

```bash
# Gcc g++ make
$ apt-get update
$ apt-get install -y build-essential
# Python 3.8 and pip
$ DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
$ apt install -y software-properties-common
$ add-apt-repository -y ppa:deadsnakes/ppa
$ apt update
$ apt install -y python3.8 python3-pip
# NodeJS 18.X and npm
$ apt install -y curl dirmngr apt-transport-https lsb-release ca-certificates
$ curl -sL https://deb.nodesource.com/setup_18.x | bash -
$ apt-get install -y nodejs
$ npm install -g npm@latest
```

-   Start the server

```bash
# Clone this repo
$ git clone https://github.com/saadmajeed01/Video-Dialling.git
# Go to to dir videodialling
$ cd videodialling
# Copy app/src/config.template.js in app/src/config.js and edit it if needed
$ cp app/src/config.template.js app/src/config.js
# Install dependencies - be patient, the first time will take a few minutes, in the meantime have a good coffee ;)
$ npm install
# Start the server
$ npm start
# If you want to start the server on a different port than the default use an env var
$ PORT=3011 npm start
```

-   Open [https://localhost:3010](https://localhost:3010) or `:3011` if the default port has been changed in your browser.

<br/>
</details>

<details open>
<summary>Docker</summary>

<br/>

![docker](public/images/docker.png)

-   Repository [docker hub](https://hub.docker.com/r/videodialling/sfu)
-   Install [docker engine](https://docs.docker.com/engine/install/) and [docker compose](https://docs.docker.com/compose/install/)

```bash
# Copy app/src/config.template.js in app/src/config.js IMPORTANT (edit it according to your needs)
$ cp app/src/config.template.js app/src/config.js
# Copy docker-compose.template.yml in docker-compose.yml and edit it if needed
$ cp docker-compose.template.yml docker-compose.yml
# (Optional) Get official image from Docker Hub
$ docker-compose pull
# Create and start containers
$ docker-compose up # -d
# To stop and remove resources
$ docker-compose down
```

-   Open [https://localhost:3010](https://localhost:3010) in your browser.

</details>

<details>
<summary>Documentations</summary>

<br>

-   `Ngrok/HTTPS:` You can start a video conference directly from your local PC and make it accessible from any device outside your network by following [these instructions](docs/ngrok.md), or expose it directly on [HTTPS](app/ssl/README.md).

-   `Self-hosting:` For `self-hosting videodialling` on your own dedicated server, please refer to [this comprehensive guide](docs/self-hosting.md). It will provide you with all the necessary instructions to get your videodialling instance up and running smoothly.

-   `Rest API:` The [API documentation](https://docs.videodialling.com/videodialling-sfu/api/) uses [swagger](https://swagger.io/) at https://localhost:3010/api/v1/docs or check it on live [here](https://sfu.videodialling.com/api/v1/docs).

    ```bash
    # The response will give you a entrypoint / Room URL for your meeting.
    $ curl -X POST "http://localhost:3010/api/v1/meeting" -H "authorization: videodialling_default_secret" -H "Content-Type: application/json"
    $ curl -X POST "https://sfu.videodialling.com/api/v1/meeting" -H "authorization: videodialling_default_secret" -H "Content-Type: application/json"
    # The response will give you a entrypoint / URL for the direct join to the meeting.
    $ curl -X POST "http://localhost:3010/api/v1/join" -H "authorization: videodialling_default_secret" -H "Content-Type: application/json" --data '{"room":"test","roomPassword":"false","name":"videodialling","audio":"false","video":"false","screen":"false","notify":"false"}'
    $ curl -X POST "https://sfu.videodialling.com/api/v1/join" -H "authorization: videodialling_default_secret" -H "Content-Type: application/json" --data '{"room":"test","roomPassword":"false","name":"videodialling","audio":"false","video":"false","screen":"false","notify":"false"}'
    # The response will give you a entrypoint / URL for the direct join to the meeting with a token.
    $ curl -X POST "http://localhost:3010/api/v1/join" -H "authorization: videodialling_default_secret" -H "Content-Type: application/json" --data '{"room":"test","roomPassword":"false","name":"videodialling","audio":"false","video":"false","screen":"false","notify":"false","token":{"username":"username","password":"password","presenter":"true", "expire":"1h"}}'
    $ curl -X POST "https://sfu.videodialling.com/api/v1/join" -H "authorization: videodialling_default_secret" -H "Content-Type: application/json" --data '{"room":"test","roomPassword":"false","name":"videodialling","audio":"false","video":"false","screen":"false","notify":"false","token":{"username":"username","password":"password","presenter":"true", "expire":"1h"}}'
    ```

</details>


<details>
<summary>Contributing</summary>

<br/>

-   Contributions are welcome and greatly appreciated!
-   Just run before `npm run lint`

</details>

<details>
<summary>License</summary>

<br/>

[![AGPLv3](public/images/AGPLv3.png)](LICENSE)

Videodialling is free and open-source under the terms of AGPLv3 (GNU Affero General Public License v3.0). Please `respect the license conditions`, In particular `modifications need to be free as well and made available to the public`. Get a quick overview of the license at [Choose an open source license](https://choosealicense.com/licenses/agpl-3.0/).

To obtain a [videodialling license](https://docs.videodialling.com/license/licensing-options/) with terms different from the AGPLv3, you can conveniently make your [purchase on Averox](https://averox.com/solutions/). This allows you to tailor the licensing conditions to better suit your specific requirements.

</details>

<details open>
<summary>Support the project</summary>

<br/>

Do you find videodialling indispensable for your needs? Join us in supporting this transformative project by [becoming a backer or sponsor](https://averox.com). By doing so, not only will your logo prominently feature here, but you'll also drive the growth and sustainability of videodialling. Your support is vital in ensuring that this valuable platform continues to thrive and remain accessible for all. Make an impact – back videodialling today and be part of this exciting journey!

|                                                                                   |                                                                                        |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| [![BroadcastX](public/sponsors/BroadcastX.png)](https://broadcastx.de/)           | [![Hetzner](public/sponsors/HetznerLogo.png)](https://hetzner.cloud/?ref=XdRifCzCK3bn) |
| [![LuvLounge](public/sponsors/LuvLounge.png)](https://luvlounge.ca)               | [![QuestionPro](public/sponsors/QuestionPro.png)](https://www.videodialling.com)         |
| [![BrowserStack](public/sponsors/BrowserStack.png)](https://www.browserstack.com) | [![CrystalSound](public/sponsors/CrystalSound.png)](https://crystalsound.ai)           |

</details>

<details open>
<summary>Advertisers</summary>

---

[![Contabo](public/advertisers/ContaboLogo.png)](https://www.dpbolvw.net/click-101027391-14462707)

---

</details>

<!--
## Diving into Additional videodialling Projects:

<details>
<summary>videodialling P2P</summary>

<br/>

Try also [videodialling P2P](https://github.com/videodialling/videodialling) `peer to peer` real-time video conferences, optimized for small groups. `Unlimited time, unlimited concurrent rooms` each having 5-8 participants.

</details>

<details>
<summary>videodialling C2C</summary>

<br>

Try also [videodialling C2C](https://github.com/videodialling/videodiallingc2c) `peer to peer` real-time video conferences, optimized for cam 2 cam. `Unlimited time, unlimited concurrent rooms` each having 2 participants.

</details>

<details>
<summary>videodialling BRO</summary>

<br>

Try also [videodialling BRO](https://github.com/videodialling/videodiallingbro) `Live broadcast` (peer to peer) live video, audio and screen stream to all connected users (viewers). `Unlimited time, unlimited concurrent rooms` each having a broadcast and many viewers.

</details>

<details>
<summary>videodialling WEB</summary>

<br>

Try also [videodialling WEB](https://github.com/videodialling/videodiallingwebrtc) a platform that allows for the management of an `unlimited number of users`. Each user must register with their email, username, and password, after which they gain access to their `personal dashboard`. Within the dashboard, users can `manage their rooms and schedule meetings` using the desired version of videodialling on a specified date and time. Invitations to these meetings can be sent via email, shared through the web browser, or sent via SMS.

</details>
-->

---

This project is tested with [BrowserStack](https://www.browserstack.com).

---
