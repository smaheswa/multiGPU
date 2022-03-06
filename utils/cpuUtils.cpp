#include <iostream>
#include "config.h"

void printCodeInfo(){

    std::cout << 
        "\tProject name: " << PROJECT_NAME << "\n" <<
        "\tProject version: " << PROJECT_VER << "\n" << 
        "\tGit branch: " << GIT_BRANCH << "\n" << 
        "\tGit commit hash: " << GIT_COMMIT_HASH << std::endl;
}

