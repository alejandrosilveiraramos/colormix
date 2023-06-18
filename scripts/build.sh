#!/bin/bash

#GLOBAL VARIABLES
FVM_OR_FLUTTER_COMMAND=""
FILE=""

#====================================================================================================
#============================CHOOSE BETWEEN FVM OR FLUTTER COMMAND===================================
#====================================================================================================
echo "Choose between 'fvm' or 'flutter' command"
echo "1 - fvm"
echo "2 - flutter"
read -p "Enter your choice: " fvm_flutter_choice

if [ $fvm_flutter_choice -eq 1 ]
then
    FVM_OR_FLUTTER_COMMAND="fvm flutter"
elif [ $fvm_flutter_choice -eq 2 ]
then
    FVM_OR_FLUTTER_COMMAND="flutter"
else
    echo "Invalid choice"
    exit 1
fi


#====================================================================================================
#=========================Choose between main.dart or main_prod.dart=================================
#====================================================================================================
echo "Choice between main.dart or main_prod.dart"
echo "--------------------------"
echo "1 - main.dart"
echo "2 - main_prod.dart"
echo "--------------------------"
read -p "Enter your choice: " main_file

if [ $main_file -eq 1 ]
then
    FILE="main.dart"
elif [ $main_file -eq 2 ]
then
    FILE="main_prod.dart"
else
    echo "Invalid choice"
    exit 1
fi

#====================================================================================================
#==========================Choose between Android or IOS build type==================================
#====================================================================================================
echo "Choice between build type (Android, IOS)"
echo "--------------------------"
echo "1 - Android (APK)"
echo "2 - Android (AAB)"
echo "3 - IOS"
echo "--------------------------"
read -p "Enter your choice: " build_type

echo "=================Build started================="
echo "Building for: " | cat pubspec.yaml | grep "version:"

if [ $build_type -eq 1 ]
then
    $FVM_OR_FLUTTER_COMMAND build apk -t ./lib/$FILE --release
    open ./build/app/outputs/flutter-apk/
    echo "=========APK MOVED TO YOUR ROOT DIRECTORY========"
elif [ $build_type -eq 2 ]
then
    $FVM_OR_FLUTTER_COMMAND build appbundle -t ./lib/$FILE --release
    open ./build/app/outputs/bundle/release/
    echo "=========APK MOVED TO YOUR ROOT DIRECTORY========"
elif [ $build_type -eq 3 ]
then
    if ! grep -q "darwin"* <<< $OSTYPE; then
        echo 'CANNOT RUN IOS BUILD ON NON MAC OS'
        exit 1
    fi

    $FVM_OR_FLUTTER_COMMAND build ipa -t ./lib/$FILE --release
    open ./build/ios/archive/
else
    echo "Invalid choice"
    exit 1
fi

echo "=================Build completed================="
