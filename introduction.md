git fetch origin
git checkout -b deadly_skills origin/deadly_skills
git merge master
git checkout -b deadly_skills
git checkout -b Killing history
git rebase Killing history
printf "On my way to becoming a GitHub Master. I love Ruby and JavaScript.\n\n* Ruby on Rails\n*Git\n* Rebase" > > introduction.md
git commit -am "Added rebase to my list of deadly skills." && git push origin deadly_skills
git push origin Killing history
git checkout master
git merge --no-ff deadly_skills
git push origin master
