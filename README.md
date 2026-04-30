# ghcal
[![Build Status](https://travis-ci.com/icaoberg/singularity-ghcal.svg?branch=master)](https://travis-ci.com/icaoberg/singularity-ghcal)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/singularity-ghcal.svg)](https://github.com/icaoberg/singularity-ghcal/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/singularity-ghcal.svg)](https://github.com/icaoberg/singularity-ghcal/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/singularity-ghcal.svg)](https://github.com/icaoberg/singularity-ghcal/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/quick-guide-gplv3.en.html)

![ghcal](https://camo.githubusercontent.com/3c38e331250e8e5f75f9cca3f0bd94ad40a02079/687474703a2f2f692e696d6775722e636f6d2f797a456c475a4e2e706e67)

## About
Singularity/Apptainer recipe for [ghcal](https://github.com/IonicaBizau/ghcal).

## Installation

* Install [Singularity](https://sylabs.io/docs/) or [Apptainer](https://apptainer.org/docs/).
* Build the image using the script `build.sh` included in this repository.

```bash
bash build.sh
```

## Help
```
singularity run --app ghcal singularity-ghcal.sif --help
Usage: ghcal [options]

Options:
  -u, --username <username>  The GitHub username. If you're using CLI GitHub,
                             by default it will be your username.
  -c, --cookie <cookie>      Your GitHub cookie. Useful to get private stats.
  -s, --since <date>         Optional start date.
  -e, --until <date>         Optional end date.
  -n, --no-ansi              Forces the tool not to use ANSI styles.
  -l, --light                Enables the light theme.
  -h, --help                 Displays this help.
  -v, --version              Displays version information.

Examples:
  ghcal -u ionicabizau
  ghcal -u ionicabizau --light
  ghcal -u ionicabizau --no-ansi
  ghcal -u ionicabizau -s '1 January 2015' # All the commits from 1 January 2015 to now
  ghcal -u ionicabizau -s '1 January 2015' -e '1 March 2015' # Select a time range

Note that only the last year statistics are available.

Documentation can be found at https://github.com/IonicaBizau/ghcal
```

## Example
```
singularity run --app ghcal singularity-ghcal.sif -u icaoberg

╔══════════════════════════════════════════════════════════════════════════════════╗
║        Jun       Jul     Aug     Sep       Oct     Nov     Dec       Jan     Feb ║
║Sun   ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║Mon   ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║Tue   ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║Wed   ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║Thu ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║Fri ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║Sat ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ◼ ║
║* * *                                                                             ║
║Commits in May 17, 2018 – Feb 9, 2019: 593                                        ║
║Longest Streak: 4 days                                                            ║
║Current Streak: 2 days                                                            ║
║Max a day: 33                                                                     ║
╚══════════════════════════════════════════════════════════════════════════════════╝
```

## Disclaimer

[![Would you buy me some coffee?](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/icaoberg)

I am nothing but a humble programmer creating the container for this wonderful app. Please visit the [original developer](https://github.com/IonicaBizau) for more info about the app.

---
Copyright © 2026 [icaoberg](http://www.andrew.cmu.edu/~icaoberg) at [Carnegie Mellon University](http://www.cmu.edu)
