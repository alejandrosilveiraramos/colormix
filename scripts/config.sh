# This script is used to carry out actions that will make it possible to carry out the execution of the project.
# Here are some actions we can mention: 
# - installation of project dependencies
# - generation of files to perform the JSON serialization 
# - internationalization files.

FLUTTER_COMMAND=""

echo "Choose between 'fvm' or 'flutter' command"
echo "1 - fvm"
echo "2 - flutter"
read -p "Enter your choice: " choice

if [ $choice -eq 1 ]
then
    echo "You have chosen 'fvm flutter'"
    FLUTTER_COMMAND="fvm flutter"
elif [ $choice -eq 2 ]
then
    echo "You have chosen 'flutter'"
    FLUTTER_COMMAND="flutter"
else
    echo "Invalid choice"
    exit 1
fi


echo '============Cleaning build cache============'
$FLUTTER_COMMAND clean

echo "============Getting Flutter Dependencies============"
$FLUTTER_COMMAND pub get

echo "============Generating JSON Files============"
# rm -rf ./lib/models/http/*.g.dart
$FLUTTER_COMMAND packages pub get
$FLUTTER_COMMAND pub run build_runner build --delete-conflicting-outputs
echo "============JSON generation done!============"

echo "============Generating INTL Files============"
$FLUTTER_COMMAND pub run intl_utils:generate
echo "============INTL generation done!============"
