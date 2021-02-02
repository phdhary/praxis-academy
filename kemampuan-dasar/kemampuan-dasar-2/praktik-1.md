# **Alice Scenario**

## Alice membuat project baru dan upload ke GitHub

Alice membuka terminal dan buat git repo pakai command line.

Pertama alice membuat folder project nya
```
>mkdir rhymes
```
Navigasi ke folder yang baru dibuat

```
>cd rhymes
```
Alice menginisialisasi repository git
```
>git init
Initialized empty Git repository in /home/laken/Documents/rhymes/.git/
```
Alice membuat file README.txt untuk commit pertamanya
```
>touch README.txt 
>git add README.txt 
>git commit -m 'First commit.' 
[master (root-commit) 711151e] First commit.
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.txt
```
Alice menambahkan teks penjelasan project pada file README
```
>echo 'This repo is a collection of my favorite nursery rhymes.' >> README.txt
```

Alice me review perubahan yang belum dicommit, lalu commit perubahan tersebut
```
>git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.txt
>git diff
>git add README.txt
>git commit -m 'Added project overview to README.txt'
[master 353ecca] Added project overview to README.txt
 1 file changed, 1 insertion(+)
```
Alice mendownload beberapa rhymes ke repo nya
```
>wget https://github.com/bryanhirsch/rhymes/blob/master/all-around-the-mulberry-bush.txt
>wget https://github.com/bryanhirsch/rhymes/blob/master/hokey-pokey.txt
>wget https://github.com/bryanhirsch/rhymes/blob/master/jack-and-jill.txt     
>wget https://github.com/bryanhirsch/rhymes/blob/master/old-mother-hubbard.txt  
>wget https://github.com/bryanhirsch/rhymes/blob/master/twinkle-twinkle.txt   
```
File nya sudah didownload tapi belum bisa dicommit. Alice menambahkan file `all-around-the-mulberry-bush.txt `
```
>git add all-around-the-mulberry-bush.txt 
```
Alice menggunakan git status untuk melihat perubahan
```
>git status 
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   all-around-the-mulberry-bush.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        hokey-pokey.txt
        jack-and-jill.txt
        old-mother-hubbard.txt
        twinkle-twinkle.txt
```
Alice menambahkan satu persatu file yang didownload
```
>git commit -m 'Added all-around-the-mulberry-bush.txt.'
>git add jack-and-jill.txt
>git commit -m 'Added jack-and-jill.txt.' 

```
Alice menambahkan file yang tesisa sekaligus
```
>git add .
```
Alice mengecheck git status. 3 file sudah bisa dicommit.
```
>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   hokey-pokey.txt
        new file:   old-mother-hubbard.txt
        new file:   twinkle-twinkle.txt
```
Alice meng-commit 3 file tersebut.
```
>git commit -m 'Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt' 
```
Alice me review commit nya.
```
>git log
>git log --oneline
>git log -p
```

Alice meng-upload project ke github dan mengganti nama branch dari `master` jadi `main`
```
>git remote add origin https://github.com/phdhary/rhymes.git
>git branch -M main    
>git push -u origin main
```