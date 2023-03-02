These notes cointain brief information on how to replicate what was done for Assignment 6 and how it was pushed to my public remote GitHub repository.

First, for Assignment 6, it is necessary to create a new local repository on your computer that includes all the six files that can be found on my remote Github repo. The idea is to write a Makefile that concatenates all the six files in order that, together, will make a website. For that, it is first necessary to assign 5 of these files into a .md file that does the job of concatenating them. Inside your newly created Makefile, type:

    Assignment6.md: preamble.txt litReview.txt approach.txt results.txt conclusion.txt
	cat $^ > $@

In which cat $^ > $@ means that we will concatenate all the files at once ($^) and all of these arguments will be passed to the script ($@).

Further, to create the .html file (that will generate a website that can be opened in your preferred browser), type this above the last command:

    Assignment6.html: Assignment6.md ViEWSMapGridCell.png
	pandoc Assignment6.md -s --mathjax -f markdown+tex_math_dollars -t html -o Assignment6.html

Note that we add the 6th file in the first line of code, an image that is not a .txt file as the others. This avoids errors related to UTF-8 enconding because a .png file does not contain the same characters as the .txt ones. Finally, pandoc turns the .md file into a .html file, generating the website.

After having all 9 files in the repository on your local computer (the 6 initial files + the .md, .html and the Makefile), open Git Bash (or another terminal of your preference -- I used the standard one that comes with the Linux extension, Ubuntu). It is important that this file is inside the local repository that contains the other 9 files to facilitate pushing them to GitHub. Also, if you have never done so, it is crucial to generate and add a new SSH key to your local and remote repository for authentification reasons in the moment you push your files to GitHub.

For the commands, type:

    git init 

to create a new Git repository. Then:

    git add .

to add all the files that you have inside your local repository. Then:

    git commit

to save your changes to the local repository. Then: 

    git remote add origin git@github.com:username/new_repo

substituting "git@github.com:username/new_repo" with your own SSH. Finally:

    git push -u origin master

and done!