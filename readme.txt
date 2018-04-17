 ====================
  What does this do?
 ====================

  This program will automatically build a docker image with Mephisto ready to
  be used for homebrew development. It builds each package in intermediate
  docker images then to save space copies only necessary files into the final
  switchdev docker image. These intermediate docker images then can be deleted.

 ====================
  How do I build it?
 ====================

 Build the image:

   ./build.sh

 Copy the helper script:

   cp mephisto.sh /usr/local/bin

  Delete the intermediate docker images:

    ./clean.sh

 ==================
  How do I use it?
 ==================

 Use the helper script to run a NRO file:

   mephisto.sh --load-nro example.nro

 The local folder will be mounted as /build inside docker.

 ============================
  How do I save and load it?
 ============================

 Save the image:

   docker save mephisto | bzip2 > mephisto.tar.bz2

 Load the image:

   docker load < bzip2 -dc mephisto.tar.bz2

 ======================================
  What does a typical build look like?
 ======================================

  REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
  mephisto                  latest              faeedf87e8b4        3 minutes ago       236MB
  mephisto/mephisto         latest              514209dc53b3        3 minutes ago       1.03GB
  mephisto/builder          latest              f325689273cf        3 minutes ago       876MB
