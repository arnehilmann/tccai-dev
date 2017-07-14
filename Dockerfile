FROM thewtex/opengl

RUN echo "export LC_ALL=C.UTF-8" >> ~/.bashrc

WORKDIR /home/user/work

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update && apt-get install -y \
        build-essential zlib1g-dev libfreetype6-dev cmake libsdl2-dev libopenal-dev libglew-dev zip \
        libvorbis-dev libxcursor-dev libdevil-dev libboost-system1.55-dev libboost-thread1.55-dev \
        libboost-regex1.55-dev libboost-serialization1.55-dev libboost-program-options1.55-dev \
        libboost-chrono1.55-dev libunwind-dev  libboost-filesystem1.55-dev libboost-signals1.55-dev \
        libboost-test1.55-dev xsltproc libfontconfig1-dev libcurl4-openssl-dev p7zip-full \
        esl-erlang elixir && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
