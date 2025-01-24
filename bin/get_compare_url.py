#!python
import subprocess

def get_branches(revision):
    output = subprocess.check_output(['git', 'branch', '-r', '--contains', revision]).strip()
    output = output.split(b'\n')
    output = [x.strip() for x in output]
    output = [x.decode('utf-8') for x in output]
    output = [x.removeprefix('origin/') for x in output]
    output = set(output)
    return output

def main():
    previous_branches = get_branches('HEAD^')
    current_branches = get_branches('HEAD')

    remaining_branch = previous_branches - current_branches
    assert len(remaining_branch) == 1
    assert len(current_branches) == 1

    print(f'https://github.com/discord/discord/compare/{remaining_branch.pop()}...{current_branches.pop()}?expand=1')

if __name__ == '__main__':
    main()
