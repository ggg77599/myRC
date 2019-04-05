#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 mrg <mrg@MrGMacBookPro.local>
#
# Distributed under terms of the MIT license.

"""

"""

#mrg@MrGMacBookPro:~/Development/Python_ProgramTest (master *+%=)$ vim ps1Color.py
#\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[1;33m\]\w \[\033[35m\]$(__git_ps1 '(%s)')\[\033[m\]$


regularColors = {   
                    'black'  :{'color':'\033[0;30m','raw':r'\[\033[0;30m\]'},
                    'red'    :{'color':'\033[0;31m','raw':r'\[\033[0;31m\]'},
                    'green'  :{'color':'\033[0;32m','raw':r'\[\033[0;32m\]'},
                    'yellow' :{'color':'\033[0;33m','raw':r'\[\033[0;33m\]'},
                    'blue'   :{'color':'\033[0;34m','raw':r'\[\033[0;34m\]'},
                    'purple' :{'color':'\033[0;35m','raw':r'\[\033[0;35m\]'},
                    'cyan'   :{'color':'\033[0;36m','raw':r'\[\033[0;36m\]'},
                    'white'  :{'color':'\033[0;37m','raw':r'\[\033[0;37m\]'},
                }

boldColors = {
                    'black'  :{'color':'\033[1;30m','raw':r'\[\033[1;30m\]'},
                    'red'    :{'color':'\033[1;31m','raw':r'\[\033[1;31m\]'},
                    'green'  :{'color':'\033[1;32m','raw':r'\[\033[1;32m\]'},
                    'yellow' :{'color':'\033[1;33m','raw':r'\[\033[1;33m\]'},
                    'blue'   :{'color':'\033[1;34m','raw':r'\[\033[1;34m\]'},
                    'purple' :{'color':'\033[1;35m','raw':r'\[\033[1;35m\]'},
                    'cyan'   :{'color':'\033[1;36m','raw':r'\[\033[1;36m\]'},
                    'white'  :{'color':'\033[1;37m','raw':r'\[\033[1;37m\]'},
                }

dimcolors = {
                    'black'  :{'color':'\033[2;30m','raw':r'\[\033[2;30m\]'},
                    'red'    :{'color':'\033[2;31m','raw':r'\[\033[2;31m\]'},
                    'green'  :{'color':'\033[2;32m','raw':r'\[\033[2;32m\]'},
                    'yellow' :{'color':'\033[2;33m','raw':r'\[\033[2;33m\]'},
                    'blue'   :{'color':'\033[2;34m','raw':r'\[\033[2;34m\]'},
                    'purple' :{'color':'\033[2;35m','raw':r'\[\033[2;35m\]'},
                    'cyan'   :{'color':'\033[2;36m','raw':r'\[\033[2;36m\]'},
                    'white'  :{'color':'\033[2;37m','raw':r'\[\033[2;37m\]'},
                }

dimcolors = {
                    'black'  :{'color':'\033[3;30m','raw':r'\[\033[3;30m\]'},
                    'red'    :{'color':'\033[3;31m','raw':r'\[\033[3;31m\]'},
                    'green'  :{'color':'\033[3;32m','raw':r'\[\033[3;32m\]'},
                    'yellow' :{'color':'\033[3;33m','raw':r'\[\033[3;33m\]'},
                    'blue'   :{'color':'\033[3;34m','raw':r'\[\033[3;34m\]'},
                    'purple' :{'color':'\033[3;35m','raw':r'\[\033[3;35m\]'},
                    'cyan'   :{'color':'\033[3;36m','raw':r'\[\033[3;36m\]'},
                    'white'  :{'color':'\033[3;37m','raw':r'\[\033[3;37m\]'},
                }

underlinecolors = {
                    'black'  :{'color':'\033[4;30m','raw':r'\[\033[4;30m\]'},
                    'red'    :{'color':'\033[4;31m','raw':r'\[\033[4;31m\]'},
                    'green'  :{'color':'\033[4;32m','raw':r'\[\033[4;32m\]'},
                    'yellow' :{'color':'\033[4;33m','raw':r'\[\033[4;33m\]'},
                    'blue'   :{'color':'\033[4;34m','raw':r'\[\033[4;34m\]'},
                    'purple' :{'color':'\033[4;35m','raw':r'\[\033[4;35m\]'},
                    'cyan'   :{'color':'\033[4;36m','raw':r'\[\033[4;36m\]'},
                    'white'  :{'color':'\033[4;37m','raw':r'\[\033[4;37m\]'},
                }

colorReset = {'color':'\033[m','raw':r'\[\033[m\]'}

# -----------------------------------------------------------------------------
username = "mrg"
hostname = "MrGMacBookPro"
absolutePath = "~/Development/Python_ProgramTest"
gitPrompt = "(master *+%=)"
command = "vim"

usernameColor = regularColors['cyan']
atColor = colorReset
hostnameColor = regularColors['green']
commandColor = colorReset
absolutepathColor = boldColors['yellow']
gitPromptColor = boldColors['purple']
dollarsignColor = colorReset
commandcolor = ""

prompt = "{usernameColor}{username}{atColor}@{hostnameColor}{hostname}{commandColor}:{absolutepathColor}{absolutePath} {gitPromptColor}{gitPrompt}{dollarsignColor}$ {commandcolor}{command}".format(
        usernameColor=usernameColor['color'],
        username=username, 
        atColor=atColor['color'],
        hostnameColor=hostnameColor['color'],
        hostname=hostname, 
        commandColor=commandColor['color'],
        absolutepathColor=absolutepathColor['color'],
        absolutePath=absolutePath,
        gitPromptColor=gitPromptColor['color'],
        gitPrompt=gitPrompt, 
        dollarsignColor=dollarsignColor['color'],
        commandcolor=commandcolor,
        command=command)

print(prompt)
print('\033[0m', end='')


# -----------------------------------------------------------------------------


for usernameColor_k in regularColors:
    for hostnameColor_k in regularColors:

        usernameColor = regularColors[usernameColor_k]
        hostnameColor = regularColors[hostnameColor_k]

        #if hostnameColor['color'] == absolutepathColor or \
        #        hostnameColor['color'] == gitPromptColor:
        #    continue

        prompt = "{usernameColor}{username}{atColor}@{hostnameColor}{hostname}{commandColor}:{absolutepathColor}{absolutePath} {gitPromptColor}{gitPrompt}{dollarsignColor}$ {commandcolor}{command}".format(
            usernameColor=usernameColor['color'],
            username=username, 
            atColor=atColor['color'],
            hostnameColor=hostnameColor['color'],
            hostname=hostname, 
            commandColor=commandColor['color'],
            absolutepathColor=absolutepathColor['color'],
            absolutePath=absolutePath,
            gitPromptColor=gitPromptColor['color'],
            gitPrompt=gitPrompt, 
            dollarsignColor=dollarsignColor['color'],
            commandcolor=commandcolor,
            command=command)
        print(prompt)
        print('\033[0m', end='')



        #\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[1;33m\]\w \[\033[35m\]$(__git_ps1 '(%s)')\[\033[m\]$
        promptraw = r"""export PS1="{usernameColor}\u{atColor}@{hostnameColor}\h{commandColor}:{absolutepathColor}\w {gitPromptColor}\$(__git_ps1 '(%s)'){dollarsignColor}\$ " """.format(
            usernameColor=usernameColor['raw'],
            atColor=atColor['raw'],
            hostnameColor=hostnameColor['raw'],
            commandColor=commandColor['raw'],
            absolutepathColor=absolutepathColor['raw'],
            gitPromptColor=gitPromptColor['raw'],
            dollarsignColor=dollarsignColor['raw'],
            )

        print(promptraw)
 




