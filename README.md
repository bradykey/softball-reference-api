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

It successfully built but I am not running any "dynos" on my heroku app? Goodness the learning curve here... Looks like I need to have a Procfile in my root of the spring boot app. This file should not have an extension and should contain something that defines what heroku needs to do when this is spun up. 

Maybe something like:

`web: java -Dserver.port=$PORT -jar target/softball-reference-api-0.0.1-SNAPSHOT.war`

>> NOTE: For awhile I was building without the `-Dserver.port=$PORT` argument in the procfile and was getting an error that said "Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 90 seconds of launch". Once I added that, then I was golden.

Then once it's built I need to run something like: 

`>> heroku ps:scale web=1`

to give it some resources? I think you only need to do that once.

Like everything said in the https://devcenter.heroku.com/articles/connecting-to-relational-databases-on-heroku-with-java#using-the-spring_datasource_url-in-a-spring-boot-app articles, as long as your application has the proper JDBC driver defined as a dependency, the spring.datasource.* environment variables should be set automatically when the dyno starts up. The values of the variables will be identical to the values int he corresponding JDBC variables. You shouldn't have to have any more configuration needed to connect to your database.

You can view some of the variables that get automatically set by Heroku by running `heroku run env`. You'll see the spring.datasource.* stuff there.

BIG NOTE. You don't even need the variables defined in the application.properties file.

### Building Vue.js to Heroku
I'm following this: https://cli.vuejs.org/guide/deployment.html#heroku

Since I had already created my heroku app, I need to create the new git remote in my local git repository that points to my heroku git. Again, this is done with `>> heroku git:remote -a softball-reference`

```bash
>> heroku buildpacks:add heroku/nodejs
Buildpack added. Next release on softball-reference will use heroku/nodejs.
Run git push heroku main to create a new release using this buildpack.

>> heroku buildpacks:add https://github.com/heroku/heroku-buildpack-static
Buildpack added. Next release on softball-reference will use:
  1. heroku/nodejs
  2. https://github.com/heroku/heroku-buildpack-static
Run git push heroku main to create a new release using these buildpacks.
```

Also need to add a `static.json` file into the root of the vue project so that heroku can figure out what type it is. The contents can be as simple as this:

```json
{
  "root": "dist",
  "clean_urls": true,
  "routes": {
    "/**": "index.html"
  }
}
```

Now just push with

```bash
>> git push heroku master
```

Insane how simple that is...

### Hooking up my custom domain

Big thing here is just to make sure the Heroku account is verified (i.e. has a cc on file). Once that's done, run the following in softball-reference-ui:

```bash
>> heroku domains:add www.softball-reference.com
```

Then run the following to see the DNS Target you need to add in the domains.google.com site:

```bash
>> heroku domains
=== softball-reference Heroku Domain
softball-reference.herokuapp.com

=== softball-reference Custom Domains
Domain Name                DNS Record Type DNS Target                                             SNI Endpoint 
www.softball-reference.com CNAME           functional-rook-iozdh4e1eacyxm36l45aylwr.herokudns.com undefined 
```

Take that DNS target and go to domains.google.com, click on the softball-reference.com domain, click DNS in the sidebar and add a custom record. The host should be "www" since that just goes on top of softball-reference.com, the type is CNAME, and the data is the DNS target from above. It should work right away, I guess? Crazy, now I can hit softball-reference.com. NOTE: It must be non-secure (i.e. http not https). I bet I can fix that...

I noticed that the "naked" domain, or root, which is softball-reference.com wasn't correctly hitting my site. This is because you can't use CNAME records with a root domain, and more specifically, all naked domains must point to a direct IP address. Well Heroku (and other hosting services) use dynamic IP addresses, so we have to use a CNAME that points to a dynamic endpoint on Heroku. Therefore, my CNAME on google domains is setup with a host name of www.softball-reference.com and you must enter it that way. Well, you can set up some domain forwarding to say, "when you hit the naked domain @ softball-reference.com, go to http://www.softball-reference.com". This works for now, but supposedly will only work for non-ssl sites? The other option is to use a domain hosting that does aliasing or CNAME flattening that work with heroku (Cloudflare looks like the best). NOTE: you can have DNS be done by a different company than who is your domain registrar... I could do all the domain ownership with GoogleDomains but NOT use their free DNS tools and instead use Cloudflare for the DNS tooling (https://support.cloudflare.com/hc/en-us/articles/205195708-Changing-your-domain-nameservers-to-Cloudflare)

https://social.dnsmadeeasy.com/blog/registrar-or-dns-hosting-the-difference-explained/

https://help.heroku.com/NH44MODG/my-root-domain-isn-t-working-what-s-wrong