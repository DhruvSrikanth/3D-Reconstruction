# # Create a folder containing the 2 dataset tgz files and this shell script.
# # Then run the shell script by typing ./init_config.sh or source init_config.sh
# # The script will create the dataset folders and extract the tgz files to those folders
# # It will then create src folder and git clone the master brance of the repo (needs git username and pwd at this stage)
# # Next it will call install.sh script which will install CUDA and cuDNN
# # After this is done, it will create a python virtual env, activate it and run pip on reqirements.txt to install modules

# INIT_DIR="$(pwd)"
# echo "$INIT_DIR"

# DATASET_DIR="datasets/ShapeNet/"
# SRC_DIR="src/"
# GIT_DIR="3D-Reconstruction"

# # change tgz file names to actual dataset files
# # RENDER_DS_PATH=${1:-CS_Minors.tgz}
# RENDER_DS_FILE="CS_Minors.tgz"
# VOXEL_DS_FILE="Personal_docs.tgz"

# # function to change directories
# ch_dir () {
#   dir_path=$1
#   cd $dir_path
# }

# if [ ! -d "$DATASET_DIR" ]
# then
#     echo "Dataset directory doesn't exist. Creating now"
#     mkdir -p "$DATASET_DIR"
#     echo "Directory created"

#     # tar -xvzf "$ARG1" -C $DATASET_DIR
#     tar -xvzf "$RENDER_DS_FILE" -C $DATASET_DIR
#     tar -xvzf "$VOXEL_DS_FILE" -C $DATASET_DIR
#     # rm *.tgz
# else
#     echo "Directory exists"
# fi

# if [ ! -d "$SRC_DIR" ]
# then
#     echo "Src code directory doesn't exist. Creating now"
#     mkdir -p "$SRC_DIR"
#     echo "Directory created"

#     ch_dir "$SRC_DIR"
#     # echo "$(pwd)"
#     echo "Cloning GitHub repository"
#     git clone "https://github.com/DhruvSrikanth/3D-Reconstruction.git"

#     ch_dir ..
#     # echo "$(pwd)"
#     sudo mv {"src/${GIT_DIR}"/*,"src/${GIT_DIR}"/.*} "src/"
#     rmdir "$GIT_DIR"

#     echo "Starting install of CUDA and cuDNN"
#     source src/install.sh
# else
#     echo "Directory exists"
# fi

# # Uncomment the commnds under this statement to setup virtual environment and install TF and other modules using pip
# # Which folder is the virtual env created? (inside src or outside src?)

# # ch_dir $SRC_DIR # if virual env should be inside src folder
# # sudo apt install python3-venv
# # python3 -m venv 3dr_venv
# # source 3dr_venv/bin/activate
# # sudo pip install -r src/requirements.txt

# # exit