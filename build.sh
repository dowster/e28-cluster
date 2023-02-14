#! sh

TAG=local
BUILD_NUMBER=local

# Build
docker run --rm -v $PWD/code:/project -w /project espressif/idf:release-v4.2 idf.py build
docker run --rm -v $PWD/pcb-design:/project -w /project registry.gitlab.com/dowster/eeshow:latest eeplot -o pcb-design-${TAG}-${BUILD_NUMBER}.pdf schematic.pro

# Package
tar -cvzf e28-cluster-${TAG}-${BUILD_NUMBER}.tar.gz \
    code/build/partition_table/partition-table.bin \
    code/build/bootloader/bootloader.bin \
    code/build/e28-cluster.bin \
    pcb-design/pcb-design-${TAG}-${BUILD_NUMBER}.pdf
