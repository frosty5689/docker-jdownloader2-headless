[hub]: https://hub.docker.com/r/frosty5689/jdownloader2-headless/

# frosty5689/jdownloader2-headless
[![](https://images.microbadger.com/badges/version/frosty5689/jdownloader2-headless.svg)](https://microbadger.com/images/frosty5689/jdownloader2-headless "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/frosty5689/jdownloader2-headless.svg)](https://microbadger.com/images/frosty5689/jdownloader2-headless "Get your own image badge on microbadger.com")[![Docker Pulls](https://img.shields.io/docker/pulls/frosty5689/jdownloader2-headless.svg)][hub][![Docker Stars](https://img.shields.io/docker/stars/frosty5689/jdownloader2-headless.svg)][hub]

## Running the container
1.  Become root if your user is not part of the docker group:

    ```
    sudo su
    ```
2.  Create a folder on your host for the configuration files (eg. sudo mkdir /config/jd2)
3.  Run the container:

    ```
    docker run -d --name jd2 \
        -v /config/jd2:/opt/JDownloader/cfg \
        -v /home/user/Downloads:/root/Downloads \
        plusminus/jdownloader2-headless
    ```
4.  Wait a minute for the container to initialize
5.  Stop the container:

    ```
    docker stop jd2
    ```
6.  On your host, enter your credentials (in quotes) to the file `org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json` as in:

    ```
    { "password" : "mypasswort", "email" : "email@home.org" }
    ```
7.  Start the container:

    ```
    docker start jd2
    ```

