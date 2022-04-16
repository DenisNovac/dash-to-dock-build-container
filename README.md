Run `docker build .` in folder with Dockerfile to build an image. 

Go to the folder with Dash to Dock. Then:

```sh
# run the container and give it an dash-to-dock folder as a volume (use :z if you are on Fedora or some other linux with SELinux)
# you'll see the ID after docker build execution
docker run -it --rm -v "$(pwd)":/root:z --network host -u 0 bf0b57f6b19c bash
# now when you are in container
cd /root
make
make install
```

After this you'll get the extension in /root/.local folder which is actually your dash to dock folder. You may now stop the container and copy the extension to your actual extensions folder.

