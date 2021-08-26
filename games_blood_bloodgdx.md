# Usage:
```
$ java -jar ~/games/buildGDX/BuildGDX.jar
```

# Other instructions
```
1. Create a folder within your Blood directory called "bin"
2. Open up BloodGDX.jar with 7-zip, WinRAR, etc. (it's just a zip file)
3. Open up gdx-backend-lwjgl-natives.jar inside BloodGDX.jar and extract its contents into the bin folder
4. Create a batch file in your Blood directory with the following contents:
echo off
java -Djava.library.path=bin -jar BloodGDX.jar
```
