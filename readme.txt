 ====================
  What does this do?
 ====================

  This program will automatically build a docker image with
  mephisto ready to be used for homebrew development.

 ====================
  How do I build it?
 ====================

 Build the image:

   docker build -t mephisto-docker .

 Copy the helper script:

   cp mephisto-docker.sh /usr/local/bin

 ==================
  How do I use it?
 ==================

 Use the helper script to run a NRO file:

   mephisto-docker.sh --load-nro example.nro

 The local folder will be mounted as /build inside docker.

 ============================
  How do I save and load it?
 ============================

 Save the image:

   docker save mephisto-docker | bzip2 > mephisto-docker.tar.bz2

 Load the image:

   docker load < bzip2 -dc mephisto-docker.tar.bz2
