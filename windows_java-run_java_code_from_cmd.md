# Usage
Let's say your file is in C:\mywork\
Run Command Prompt

```
C:\> cd \mywork
```
This makes C:\mywork the current directory.

```
C:\mywork> dir
```
This displays the directory contents. You should see filenamehere.java among the files.

```
C:\mywork> set path=%path%;C:\Program Files\Java\jdk1.5.0_09\bin
```
This tells the system where to find JDK programs.

```
C:\mywork> javac filenamehere.java
```
This runs javac.exe, the compiler. You should see nothing but the next system prompt...

```
C:\mywork> dir
```
javac has created the filenamehere.class file. You should see filenamehere.java and filenamehere.class among the files.

```
C:\mywork> java filenamehere
```
This runs the Java interpreter. You should then see your program output.

If the system cannot find javac, check the set path command. If javac runs but you get errors, check your Java text. If the program compiles but you get an exception, check the spelling and capitalization in the file name and the class name and the java HelloWorld command. Java is case-sensitive!

