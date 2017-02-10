# selenium-safari

[![Build Status](https://travis-ci.org/ddry/selenium-safari.svg?branch=master)](https://travis-ci.org/ddry/selenium-safari) [![Coverage Status](https://coveralls.io/repos/github/ddry/selenium-safari/badge.svg?branch=master)](https://coveralls.io/github/ddry/selenium-safari?branch=master) [![dependencies Status](https://david-dm.org/ddry/selenium-safari/status.svg)](https://david-dm.org/ddry/selenium-safari) [![devDependencies Status](https://david-dm.org/ddry/selenium-safari/dev-status.svg)](https://david-dm.org/ddry/selenium-safari?type=dev)

<img src="https://cloud.githubusercontent.com/assets/5163953/22628172/6b91f120-ebe0-11e6-8456-0f5b2dc3a553.png" alt="ddry logo" width="250">

Safari Selenium driver wrapped ready to use with **ddry**.

### Usage

For **macOS** only. In other environments fallbacks to **geckodriver**.

Don't forget to enable **Develop > Allow Remote Automation** in your Safari before use or you'll be notified about that on the first test attempt.

### Load balancing

**Safari** is extremely tender and vulnerable in parallel running matters. To handle this precious load balancing **ddry** has modular/Makefile workaround.

Please take a look at [main.coffee](https://github.com/ddry/selenium-safari/blob/master/source/spec/main.coffee) file containing core spec config and the rest spec files simply applying specific constraints to it.

Then [Makefile](https://github.com/ddry/selenium-safari/blob/master/Makefile) explains quite comfortable way to feed partial tasks to **Mocha**.

Adjust partial tasks and sleep times to achieve the full stability of testing in your environment.
