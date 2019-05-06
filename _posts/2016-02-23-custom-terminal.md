---
layout: post
title:  "Custom Terminal"
date:   2016-02-23
excerpt: "$HOME/.custom_terminal/*"
image: "/images/posts/custom.png"
---

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
