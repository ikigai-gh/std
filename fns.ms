.TL
FNS - File naming standard 0.1.1
.AU
Vladislav Slepov
.AI
ikigai@ikigai.fail
.AB no
This document describes rules and considerations which a user of an Unix-like operating
system must follow in order to get the best experience while dealing with software that manipulates files.
.AE
.NH 1
Conventions and terms
.PP
Consider some modal verbs that you will encounter when reading this standard, including:
.IP \(bu 0.2i
MUST: It's vital to hold some requirement. The opposite is strongly prohibited, because it can lead to incorrect behaviour of software;
.IP \(bu
MUST NOT: There is a strong reason NOT to do something, because it can cause huge issues with software;
.IP \(bu
SHOULD: It's recommended to follow an advice. Although some consequences may not be so good, there is no strong prohibition;
.IP \(bu
SHOULD NOT: You better NOT to do something for some reason, but you can do this without any serious problems;
.NH 1
Rationale
.PP
There are plenty of operating systems(Windows, GNU/Linux, BSD family, MacOS, etc.) and file systems(NTFS, ext4, Btrfs, HFS+ and so on). Each one of them has its own limitations on naming files.
In order to feel yourself comfortable when using a PC, it is important to provide an easy and painless way to manipulate files.
.NH 1
Specification
.NH 2
Language
.PP
A user SHOULD always use only ASCII characters in their file names. In other words, only English is recommended. Using non-ASCII characters in a file name forces a user to escape such characters.
.NH 2
Common
.PP
A user SHOULD only use letters(a-z), all lower case. File listing utilities, such as a "ls" by default prints content of the path in lexicographical order.
.NH 2
Separators
.PP
A user MUST NOT use " "(space) to separate parts of file names. Many GNU/Linux utilities
such as "mv", "cp", "rm", etc. use a space character to separate arguments. Therefore, without escaping the file name "one two" would be interpreted as two different files.
.PP
A user instead SHOULD use "_"(underscore) for separating words and "-"(hyphen) character for the purpose of sorting of files and appending timestamp.
.NH 2
Meaningfull extensions
.PP
A user SHOULD use these file extensions to indicate:
.IP \(bu 0.2i
Backups: .bck
.NH 2
Date and timestamp
.PP
A user SHOULD append date in ISO 8601 format. If time information is needed, file name SHOULD contain an
Unix timestamp only in UTC time.
.NH 2
Changing of sort order
.PP
A user MUST prefix their file names with numbers, according to needed order, ascending. 
