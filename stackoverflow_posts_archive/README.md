## Overview 

[StackOverflow Posts archive data](https://ia800107.us.archive.org/view_archive.php?archive=/27/items/stackexchange/stackoverflow.com-Posts.7z) - downloaded on the 9th of February 2021. 

#### Data schema:
```
- Format: 7zipped
- Files:
  - **posts**.xml
       - Id
       - PostTypeId
          - 1: Question
          - 2: Answer
       - ParentID (only present if PostTypeId is 2)
       - AcceptedAnswerId (only present if PostTypeId is 1)
       - CreationDate
       - Score
       - ViewCount
       - Body
       - OwnerUserId
       - LastEditorUserId
       - LastEditorDisplayName="Jeff Atwood"
       - LastEditDate="2009-03-05T22:28:34.823"
       - LastActivityDate="2009-03-11T12:51:01.480"
       - CommunityOwnedDate="2009-03-11T12:51:01.480"
       - ClosedDate="2009-03-11T12:51:01.480"
       - Title=
       - Tags=
       - AnswerCount
       - CommentCount
       - FavoriteCount
```

Full archive available at: https://archive.org/download/stackexchange


#### XML layout: 
The XML itself has a non-traditional layout where each line starts with the term `row` and includes all variable available. 

```
<posts>
  <row .......>
</posts>
```


### File handling 

This is an (unzipped) 80GB file, containing all information for questions on StackOverflow relating to **any** programming language. Therefore, the first steps were to keep only rows that contained the `Tag` for R, refer to the original post (`PostType = 1`) that have an accepted answer (`AcceptedAnswerId`)

### XML header and tag 
As this removes the XML header and tag lines, these were added back in. 

### XML Parsing in R
The reduced XML file was then parsed into R using the package `xml`. Variables were then filtered to keep only: 

- Id
- PostTypeId
- AcceptedAnswerId
- CreationDate
- LastActivityDate
- Title 
- Tags

