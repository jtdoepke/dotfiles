"""Fix `c d..` -> `cd ..`"""

def match(command):
    return command.script.startswith('c d')


def get_new_command(command):
    return 'cd ' + command.script[3:]
