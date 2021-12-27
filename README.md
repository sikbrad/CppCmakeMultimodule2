# CppCmakeMultimodule2

It is cmake tester.

Tests executable, and sub directory module linking.

## To achieve

To practice how to code in vscode, with cmake, and vs2019 cl.exe setup.

## How it came out

It works!

## To build with docker

This commands builds program

``` bash
docker-compose up
```

This commands builds prog and connects to newly built container

``` bash
docker-compose run cmm2 sh
```

Run program with docker-compose

``` bash
docker-compose run --rm cmm2 ./build/CppCmakeMultimodule
```


## Working environment

Natively : Teseted with VS2019 CL.exe, with cmake, on vscode.

With dockerizing : Tested on windows 10, with docker toolbox installed.



## To build in Visual Studio

Other than clion and vscode, we can build as visual studio solution. It will produce familiar .sln, .vcxproj files. 

``` bash
mkdir build
cd build
cmake ..
```

Then bunch of sln and vcxproj files will be generated. Use that as reference to understand the analogous structure of this cmake styled project, but please do not use it for permanent use. Follow cmake style, please.



## Refernece

[Research note : 2021-12-24 C++ VSCODE 멀티타겟 테스트
](https://stryxcokr-my.sharepoint.com/personal/insik_b_stryx_co_kr/Documents/Notebooks/Stryx_Insik_ResearchNote1/Logs_Unsorted.one#2021-12-24%20C++%20VSCODE%20멀티타겟%20테스트&section-id={4432DF05-CC8C-4BC8-B822-A2E03DD27544}&page-id={FAA1A9A1-1153-4DFD-BD46-51D0C7031DEB}&end)
