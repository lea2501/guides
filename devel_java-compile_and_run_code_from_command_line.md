# Compile the Java File to a *.class file
```
$ javac TheJavaFile.java
```
(This will create a TheJavaFile.class file)

# Execution of the Java File
```
$ java TheJavaFile
```

# Creation of an executable *.jar file
(You've got two options here)

## With an external manifest file:
Create the manifest file say - MANIFEST.mf
The MANIFEST file is nothing but an explicit entry of the Main Class
```
$ jar -cvfm TheJavaFile.jar MANIFEST.mf TheJavaFile.class
```

## Executable by Entry Point:
```
$ jar -cvfe TheJavaFile.jar <MainClass> TheJavaFile.class
```

To run the Jar File
```
$ java -jar TheJavaFile.jar
```
