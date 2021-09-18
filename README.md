The build process for Heroku is a bit interesting. Since I'm not using a CI/CD pipeline builder like Jenkins, I can just go straight from the Heroku CLI to the provisioned Heroku app in my login. I'm following this tutorial: https://devcenter.heroku.com/articles/deploying-spring-boot-apps-to-heroku

Essentially I had to download the Heroku CLI. 
Then you can login with >> heroku login
This just takes your username and password.
**NOTE: I did this running as admin in Windows Terminal**

I set up the SSH key to this machine in my Heroku profile settings (i.e. remember, this is done by just running >> ssh-keygen -o -t rsa -b 4096 and then just getting the public id_rsa.pub file from C:/Users/Brady.ssh/ and dropping it into the SSH key section of the Heroku profile.)

Essentially the Heroku CLI is just a command line interface for really anything you'd do if you were logged into the WebApp and managing stuff that way. You just log in with the CLI and then you do some setup/config with >> heroku.

Since I had already created a new Heroku app NOT using the CLI, I needed to hook this up to my softball-reference-api application. This is done by creating a new remote repo in my local git repo that points to my heroku app (which is stored @ https://git.heroku.com/softball-reference-api.git). So heroku stores the app at a Git location that then allows you to just push your code to it for building. This is brilliant and easy if we don't have Jenkins in the middle of things...

If you didn't already have a Heroku app but you had the git repository of the code you wanted to build, you could just run 

`>> heroku create`

and that would give you a brand new provisioned Heroku app with a random name (which you could rename later with the `>> heroku apps:rename`) command.

But since I had already created one, all I have to do is create a new git remote in my local git repository that points to my heroku git repo @ https://git.heroku.com/softball-reference-api.git. This is done by running the following in /webapps/softball-reference-api

`>> heroku git:remote -a softball-reference-api`

Now when I run >> git remote -v I get: 

```bash
PS D:\Programming\webapps\softball-reference-api> git remote -v
heroku  https://git.heroku.com/softball-reference-api.git (fetch)
heroku  https://git.heroku.com/softball-reference-api.git (push)
origin  https://github.com/bradykey/softball-reference-api.git (fetch)
origin  https://github.com/bradykey/softball-reference-api.git (push)
```

Now I guess I can just deploy my code with >> git push heroku master ...? Seriously?