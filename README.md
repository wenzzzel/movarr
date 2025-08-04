<h1 align="center">
movarr
</h1>

<p align="center">
	<a href="https://github.com/wenzzzel/movarr/stargazers"><img src="https://img.shields.io/github/stars/wenzzzel/movarr?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/wenzzzel/movarr/issues"><img src="https://img.shields.io/github/issues/wenzzzel/movarr?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/wenzzzel/movarr/contributors"><img src="https://img.shields.io/github/contributors/wenzzzel/movarr?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>
<p align="center">
    <img src="Assets/logo.jpeg" style="width: 500px; height: auto; border-radius:10px"/>
</p>

## ℹ️ About
Moves subtitle files on a schedule. Could be useful in an arr stack when the Radarr and Sonarr directories aren't the same as the Jellyfin library.

## 🏃‍➡️ How to run
Mandatory environment variables
 - MOVARR_CRON
 - MOVARR_RADARR_DIRECTORY
 - MOVARR_TDARR_MOVIES_OUTPUT_DIRECTORY
 - MOVARR_SONARR_DIRECTORY
 - MOVARR_TDARR_SERIES_OUTPUT_DIRECTORY

## 🐋 Docker image
wenzzzel/movarr on [docker hub](https://hub.docker.com/repository/docker/wenzzzel/movarr/general)