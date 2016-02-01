# siteprism-example


This basic example is aimed at those who are interested in Cucumber & Capybara & site_prism and in doing it in what some would deem to be a good practice. Besides this project can be used as a template for other siteprism projects.

I used Teknosa web site have excluded login details in this instance. I replaced the credentials in `login.feature` file with generic values. If you type your credentials in feature file, login scenario will be succeed. 

You can also run scenarios in phantomjs by setting `HEADLESS` enviroment variable as `true`.

Thanks,

--ertan


## Installation

In the below instructions the assumptions that Ruby has already been installed on your machine.

_**Mac/Linux/windows**_

[Clone](https://help.github.com/articles/cloning-a-repository/) or [Fork](https://help.github.com/articles/fork-a-repo/) the repository to your local machine. Ensure that you install the repository to a working folder.

You may also need to install the 'bundler' gem, so `gem install bundler`

Once complete ready from the command line navigate to where you have clones/forked the repository and run `bundle install` this should complete the install and update any gems you may be missing.

If any issues occur in the `bundle install` you will need to investigate the issue and attempt to resolve. There are some windows specific issues you may encounter that are explained below.

_**Windows specific**_

Git in the windows command line - You will need to install git from [here](https://git-scm.com/download/win)

You may need to add your git.exe path to the environment variables. To do this head to the start menu and in the search program input area type `environment variables` this should bring up the 'Edit the system environment variable' open this up. You should be taken to the System Properties and the advanced tab, from here select the environment variables button near the bottom.

You will need to set a new systems variable. The variable name will be `path` and the variable value will be the location of your `git.exe` i.e. `c:\Program Files\Git\bin`. If you do not know where your git.exe is installed you will need to look online on how to search for it's path.

_**Installing the Ruby Devkit**_

You will also need to install the Ruby Devkit which can be downloaded from [here](http://rubyinstaller.org/downloads/). You will need to download the `DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe` *Note* - that this comes in both a 32 bit and 64 bit version so ensure you have the right one.

1. Once downloaded you will need to run the executable and extract to a path of your choice.
2. In the command line head to the location of the extracted files i.e. `cd `Users\user1\downloads` - when you look into the directory of extraction `DIR` you should be able to see the `dk.rb`
3. from the command line input `ruby dk.rb init` - this will generate the necessary `config.yml` file
4. then type `ruby dk.rb install` - this will complete the necessary set up

To test the set up type into the command line `gem install json` - the gem should install without any errors. If any errors occur it may be that you downloaded and installed the incorrect Devkit and will need to follow the instructions as above for the over version.

_**Testing the template**_

Once the `bundle install` has completed successfully you will need to head to the `ruby_web_automation_template` you type `cucumber` and hit enter the example test should begin to run.
