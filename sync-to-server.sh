#!/usr/bin/env sh

# Check if .tmp exists
if [ -d .tmp ]; then
  echo "Removing .tmp"
  rm -rf .tmp
fi

# Create .tmp
echo "Creating .tmp"
mkdir .tmp

mv ../1.20.4/config .tmp
mv ../1.20.4/world/serverconfig .tmp

# Remove old files
echo "Removing old files"
rm -rf ../1.20.4/config
rm -rf ../1.20.4/world/serverconfig

# Move new files
echo "Moving new files"
cp -r ./config ../1.20.4/
cp -r ./serverconfig ../1.20.4/world/

# If the ./secrets folder exists, move it to the new server
if [ -d ./secrets ]; then
  echo "Moving secrets"
  
  # Test if we have ./secrets/config/
    if [ -d ./secrets/config ]; then
        echo "Moving ./secrets/config"
        cp -r ./secrets/config ../1.20.4/
    fi

    # Test if we have ./secrets/world/serverconfig/
    if [ -d ./secrets/world/serverconfig ]; then
        echo "Moving ./secrets/serverconfig"
        cp -r ./secrets/serverconfig ../1.20.4/world/
    fi
fi
