savedcmd_/home/sid/stuff/programs/kernMod/simpleKernelModule.mod := printf '%s\n'   simpleKernelModule.o | awk '!x[$$0]++ { print("/home/sid/stuff/programs/kernMod/"$$0) }' > /home/sid/stuff/programs/kernMod/simpleKernelModule.mod