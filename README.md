getFpFromArchive.sh
================
[![Build Status](https://travis-ci.org/haysclark/getFpFromArchive.sh.svg?branch=master)](https://travis-ci.org/haysclark/getFpFromArchive.sh)

Script downloads and unzips the Mac Debug [Adobe Flash Player](http://www.adobe.com/products/flashplayer.html) from a [Adobe Flash Archive URL](http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html).  The script is intended for use with AS3 projects which are using [Travis-CI](https://travis-ci.org/) for [Continuous Integration](http://en.wikipedia.org/wiki/Continuous_integration).

See [Travis-CI ActionScript Demo](https://github.com/Larusso/travis-CI-actionscript-demo)

Enjoy!

Usage
------------

```
getFpFromArchive.sh <FlashPlayer Archile Url>
```

Running Developer Test
------------

```
bats test
```

Author
------------
Hays Clark