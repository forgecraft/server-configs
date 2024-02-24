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
