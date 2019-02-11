# ghcal

![ghcal](https://camo.githubusercontent.com/3c38e331250e8e5f75f9cca3f0bd94ad40a02079/687474703a2f2f692e696d6775722e636f6d2f797a456c475a4e2e706e67)

## About
Singularity recipe for [ghcal](https://github.com/IonicaBizau/ghcal).

```
singularity inspect ghcal.simg
{
    "WEBSITE": "http://www.cbd.cmu.edu/icaoberg",
    "org.label-schema.usage.singularity.deffile.bootstrap": "docker",
    "org.label-schema.usage.singularity.deffile": "Singularity",
    "AUTHOR": "icaoberg",
    "org.label-schema.schema-version": "1.0",
    "org.label-schema.usage.singularity.deffile.includecmd": "yes",
    "org.label-schema.build-size": "802MB",
    "org.label-schema.usage.singularity.deffile.from": "ubuntu:16.04",
    "org.label-schema.build-date": "Sun,_10_Feb_2019_22:57:36_-0500",
    "org.label-schema.usage.singularity.version": "2.6.0-dist",
    "EMAIL": "icaoberg@cmu.edu"
}
```

## Download
To download the image run the command

```
singularity pull --name ghcal.simg shub://icaoberg/singularity-ghcal
```

## Help
```
singularity run --app ghcal ghcal.simg --help
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
singularity run --app ghcal ghcal.simg -u icaoberg

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
I am nothing but a humble programmer creating the container for this wonderful app. Please visit the [original developer](https://github.com/IonicaBizau) for more info about the app.

---
[![CBD](http://www.cbd.cmu.edu/wp-content/uploads/2017/07/wordpress-default.png)](http://www.cbd.cmu.edu)

Copyleft © 2018-2019 [icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)
