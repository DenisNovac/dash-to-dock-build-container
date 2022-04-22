Run `docker build .` in folder with Dockerfile to build an image (or use a ready container: https://hub.docker.com/repository/docker/denisnovac/dash-to-dock-build-container)

Go to the folder with Dash to Dock. Then:

```sh
# run the container and give it an dash-to-dock folder as a volume (use :z if you are on Fedora or some other linux with SELinux)
# you'll see the ID after docker build execution
docker run -it --rm -v "$(pwd)":/root:z --network host -u 0 denisnovac/dash-to-dock-build-container bash
# now when you are in container
cd /root
make
make install
```

After this you'll get the extension in /root/.local folder which is actually your dash to dock folder. You may now stop the container and copy the extension to your actual extensions folder.

