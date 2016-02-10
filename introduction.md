git checkout -b deadly_skills
git push origin deadly_skills
printf "On my way to becoming a GitHub Master. I love Ruby and JavaScript.\n\n* Ruby on Rails\n*Git\n* Rebase" > > introduction.md
git commit -am "Added rebase to my list of deadly skills." && git push origin deadly_skills

git fetch origin
git checkout -b deadly_skills origin/deadly_skills
git merge master

git checkout master
git merge --no-ff deadly_skills
git push origin master

git checkout 15f59e89a42e6e1dcea997281c975863c6e2d861
git tag -a v1.2.0 -m "Created v1.2.0 tag."
git push --tags


## Deadly Skills

* Ruby on Rails
* JavaScript
* Node.js" > introduction.md
git commit -am "Added deadly skills"
git push origin deadly_skills
pull.rebase = true
branch.autosetuprebase = always

git checkout master
git pull
git merge --no-ff deadly_skills
git push
