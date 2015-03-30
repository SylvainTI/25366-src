Essayons d'utiliser les outils comme Google prévoit qu'on les utilisent :
http://code.google.com/p/support/wiki/CodeReviews#Commit_log_syntax

# Commit log syntax #

Reviews can also be assigned via commit log messages using a simple command syntax. (Project administrators must enable this option via the Administer/Source page.) Commands consist of a line containing only the phrase "new review:", optionally followed by 1 or more option lines and ending with a description. For example:
```
new review:
owner: mike.j.parent
labels: Priority-High, MajorFeature, HotStuff
A large set of changes to the core library.
```
One review request is allowed per log message. The "new review" line must be preceded by a single blank line, or must be the very first line in the message. The description consists of the first non-option line until the end of the log message. Default values from the "Review request" issue template will be used for any unspecified options. Valid review request options are:

  * wner
  * c
  * ummary
  * tatus
  * abels
  * ranch

Examples:

```
Fixed bug causing File::Open method to return an incorrect value.

new review:
owner: steve.mckay
cc: jrobbins, mike.j.parent
summary: Review proposed library changes
labels: ReadyForReview, Priority-Medium
branch: /branches/mikes-changes
Please review my proposed changes to the File class.
Pay extra attention to my changes to File::Open.
Updated Acme library to v1.0

new review
```