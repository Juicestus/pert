#!/usr/bin/env python3

# Pert Interpreter frontend
# By Justus Languell
# Licensed under GPLv3 (see LICENSE)

import core
import sys

if __name__ == '__main__':

    if len(sys.argv) > 1:
        filename = sys.argv[1]
        
        executable = f'run("{filename}")'
        result, error = core.run('<stdin>', executable)

        if error:
            print(error.as_string())

        elif result:
            if len(result.elements) == 1:
                print(repr(result.elements[0]))
            else:
                print(repr(result))
                
    else:
        #print('Error - No file specified')
        print('Pert Shell ("exit" to quit)')
        
        while True:
            executable = input('>>> ')
            if executable == 'exit':
                break

            if executable.strip() == "":
                continue

            result, error = core.run('<stdin>', executable)

            if error:
                print(error.as_string())

            elif result:
                if len(result.elements) == 1:
                    print(repr(result.elements[0]))
                else:
                    print(repr(result))


