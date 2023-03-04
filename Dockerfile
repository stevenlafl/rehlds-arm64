FROM debian

RUN apt update && \
    apt install -y bash cmake make g++ git curl libc6-dev rsync && \
    mkdir /app
COPY . /app/
WORKDIR /app

RUN curl -o /usr/include/sse2neon.h https://raw.githubusercontent.com/DLTcollab/sse2neon/master/sse2neon.h

# ./build.sh -DUSE_STATIC_LIBSTDC
# mkdir -p publish/hlsdk
# rsync -a rehlds/common/ publish/hlsdk/common/
# rsync -a rehlds/dlls/ publish/hlsdk/dlls/
# rsync -a rehlds/pm_shared/ publish/hlsdk/pm_shared/
# rsync -a rehlds/public/ publish/hlsdk/public/ --exclude rehlds/
# rsync -a rehlds/public/rehlds/ publish/hlsdk/engine

# mkdir -p publish/bin/linux64/valve/dlls
# mv build/rehlds/engine_aarch64.so publish/bin/linux64/engine_aarch64.so
# mv rehlds/version/appversion.h publish/appversion.h
# mv build/rehlds/dedicated/hlds_linux publish/bin/linux64/hlds_linux
# mv build/rehlds/HLTV/Console/hltv publish/bin/linux64/hltv
# mv build/rehlds/HLTV/Core/core.so publish/bin/linux64/core.so
# mv build/rehlds/HLTV/Proxy/proxy.so publish/bin/linux64/proxy.so
# mv build/rehlds/HLTV/DemoPlayer/demoplayer.so publish/bin/linux64/demoplayer.so
# mv build/rehlds/HLTV/Director/director.so publish/bin/linux64/valve/dlls/director.so
# mv build/rehlds/filesystem/FileSystem_Stdio/filesystem_stdio.so publish/bin/linux64/filesystem_stdio.so