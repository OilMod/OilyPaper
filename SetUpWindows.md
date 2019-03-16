## Required programs ##
- [Git for windows](https://git-scm.com/download/win) (alternatives will not work)
- JDK8 (not never) - google jdk8 download, this [link](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) might work
- [Maven3](https://maven.apache.org/download.cgi)

Please install git and jdk using the normal installer. Download the maven zip and extract it into a folder like `C:\maven\`

## Check installation ##
If you already have those installed, make sure the path is setup correctly. To do that please open git bash and run the following commands:
- `git`
- `jar`
- `java`
- `mvn`
Do not add anything, just write them like this. If one of them is not working please see below

## Path settings ##
First open the path settings using this [guide](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/)

Find your java jdk install path. It should look something like this: `C:\Program Files\Java\jdk1.8.0_202`. 
In this case check the subfolder `bin` and make sure it contains jar.exe and many others. 
Then add `C:\Program Files\Java\jdk1.8.0_202\bin\ `to your path settings. 
Please adjust it for the path of your local jdk installation. 

Now go to your maven installation. If you placed it in the folder as described above it should be: `C:\maven\apache-maven-3.6.0`.
 Again check that there is a subfolder called `bin` containing a file called `mvn` with no file extension. 
 Also add this to you path. In my case it is `C:\maven\apache-maven-3.6.0\bin\ `.
 
 Make sure that there are no trailing spaces or anything like that. 
 Click okay to close both of the settings windows and then close all instances of git-bash. 
 Please now check your installation again, if it still does not work either your installation of 
 maven, git for windows, or jdk8 is corrupted or you made a small mistake.
 
 ##Setting up Git to work with github
 Follow the help pages of github: 
- [How to generate an SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
- [How to add a key to github](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

## Cloning project ##
Go into the parent folder where you want your OilyPaper project folder.
 e.g. your projects folder and right click and select open git-bash here. otherwise navigate to that folder within git-bash.
 Now run the following commands in order:
 
- Open bash window in project root directory
- `git clone git@github.com:OilMod/OilyPaper.git` - this clones both the files and git repo. DO NOT just download the zip
- `cd ./OilyPaper` - might be different, check the newly created folder. i.e. navigate inside the folder with git-bash or open a new one inside that folder
- `./concrete init-sm` - downloads and initialises submodules
- `./concrete up` - decompiles minecraft, sets up paper
- `./concrete patch` - adds our patches, creates OilyPaper code, creates correct local git structure

Now open your favourite IDE and select open/import project from maven and select the outermost pom.xml 

Happy programming
 
