
---
layout: post
title:  "Custom Terminal"
date:   2016-02-23
excerpt: "$HOME/.custom_terminal/*"
image: "/images/pic02.jpg"
---
<!--
  '2016-02-23-custom-terminal.md'
  Author/CopyRight: Mancuso, Logan
  Last Edit Date: 04-28-2019--14:41:19
-->

# Custom Terminal

` git clone git@gitlab.com:logmancuso/custom_terminal.git `

add this to the end of ~/.bashrc in the $HOME directory
```
for f in $HOME/.custom_terminal/*; do
  if [ ${f: -3} == ".sh" ]
  then
      . $f
  fi
done
```

then run exec bash
