# static-web-apps-image

This builds a slimmer version of the `mcr.microsoft.com/appsvc/staticappsclient:stable` image which is needed for Azure static web app deployments. The official image is >2GB in size.

This builds an image using `stretch-slim` as a base and copies over the Oryx build files from the official image. The resulting image is <300MB in size and is published to ghcr.io. The resulting image will download approximately 30s faster when executing on a GitHub action, thus saving GitHub action minutes and reducing bandwidth/compute costs in deploying.

This image is consumed by the (ajraczkowski/static-web-apps-deploy)[https://github.com/ajraczkowski/static-web-apps-deploy], which is a fork of (Azure/static-web-apps-deploy)[https://github.com/Azure/static-web-apps-deploy] with the change to use this slim image.

This project will be deprecated once the Azure static web apps team will provide an official deployment action that makes this obselete. The GitHub issue tracking that request is found [here](https://github.com/Azure/static-web-apps/issues/878).
