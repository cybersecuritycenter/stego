# stego

## Description
This bash will create a steganography that will take in image in the same folder add a text/flag to the image hiding it in the pixels. Then it will create multiple files and insert them all into a single file where it will keep track of the the image, the flag, encryption type, password, wordlist associated to that image. 


## Installation
Users can download the repo form here on our github, or open up your linux machine open up a terminal and open up your favorite text editor.

## Usage

Here I'll show you how to open it up using vim. You can copy this name or come up with your own name just make sure it ends with .sh
```bash
vim stego.sh
```
Press **i** to start typing into the vim editor. Copy and paste if you haven't done so from the repo named **stego.sh**. 

Now it time to save your bash script. **Press Esc Key** then 
```bash
:w 
```
This will save your bash scrpt but not close the vim, incase you want to edit still. 
or if you want to save and quit **Press Esc Key** then
```bash
:wq
``` 
Now repeat the step again but this time use this command in the terminal this will open vim editor. 
```bash
vim createflags.py
```
Now copy and paste from the repo the file named **createflags.py** now save it. 
Download some images from the web make sure they are **.jpg** files and that they are in the same folder as your bash script.
Let your images have a theme. 

It's time to test our Bash Script. **Replace stego.sh with whatever you named your bash scrpt.**
```bash 
bash stego.sh
```
now follow the propts
you should get something like this:
```bash 
Enter passphrase: 
Re-Enter passphrase: 
embedding "emb.txt" in "HP1.jpg"... done
```
In this simple program we have to where pressing enter without a password can be a password aswell. 
Let check out the file we created in the example above we had a file name **stegoOutput.csv**. To do this enter following example below into the terminal. 
```bash
cat stegoOutput.csv
```
You should get something that kind of looks like the following textfile, keep in mind we used a "Random" so our will look a little diffrent than yours.
```bash
file name, flag value, encoding method, password (n/a for none), wordlist/hint
HP1.jpg,CAHSI-MSEZM-48384,steghide,n/a,n/a
hp2.jpg,CAHSI-EYEWV-76132,steghide,n/a,n/a
hp3.jpg,CAHSI-QZKAO-14554,steghide,n/a,n/a
```
You can even test if the image is motified by going to https://futureboy.us/stegano/decinput.html upload the image and submit the query. You will see that the image matches the flag given in your **stegoOutput.csv** file. 

## Contributing

## License

