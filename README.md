## alloy-analyser-gitpod

[![Docker hub version](https://img.shields.io/docker/v/adstewart/alloy-analyser-gitpod?label=Docker%20Hub)](https://hub.docker.com/r/adstewart/alloy-analyser-gitpod)

A Docker image designed to work with [Gitpod][gitpod], letting you use the
[Alloy Analyser][alloy] in a cloud-based IDE.

[gitpod]: https://www.gitpod.io/
[alloy]: https://github.com/AlloyTools/org.alloytools.alloy

## Using with Gitpod

- Visit https://gitpod.io/#https://github.com/arranstewart-dev/alloy-analyser-gitpod in your browser
- Gitpod will download the Docker image and create an online IDE environment
- The environment will take a couple of minutes to build and start
- Once it starts – a popup should display saying "A service is available on port 6080".
  Click the "Open Browser" button on that popup, and a new browser tab will open. \
  (You can dismiss any other popups.)
- In the "Terminal" tab of the IDE, type "alloy".
- Switch to the new tab that opened, and the analyser should be visible there.


## Viewing the Analyser tab

- If the browser tab containing the analyser gets closed for any reason,
  you can open it by clicking the "remote explorer" icon on the left-hand side
  of the IDE, hovering over the row that says "6080 open (private)",
  and selecting the "globe"/browser icon at the right-hand side of that row. 



