
# Define project directory
PROJECT_DIR=$(pwd) && echo "Current working directory: ${PROJECT_DIR}"
# Get data if not donwloaded 
if [ -d "${PROJECT_DIR}/data/afhq_32x32" ]; then
    echo "Data already downloaded."
else
    echo "Downloading data..."
    # Clone animal faces 32x32 repo
    cd ${PROJECT_DIR}/data/ && ls
    git clone https://github.com/arashash/AnimalFaces32x32
    unzip ${PROJECT_DIR}/data/AnimalFaces32x32/afhq_32x32.zip -d ${PROJECT_DIR}/data/AnimalFaces32x32/
    mv ${PROJECT_DIR}/data/AnimalFaces32x32/afhq ${PROJECT_DIR}/data/afhq_32x32
    rm -r AnimalFaces32x32/
    cd ${PROJECT_DIR}
fi