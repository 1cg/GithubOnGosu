package github

uses github.model.commit.Commits
uses github.model.commit

class GitHub {
 
 static function listCommits( user : String, repo : String, branch : String = "master" ) : List<Commits> {
   return commit.get( "http://github.com/api/v2/json/commits/list/${user}/${repo}/${branch}/" ).Commits
 }
  
}