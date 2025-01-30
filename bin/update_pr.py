#!python
import subprocess

def find_current_commit(output):
    lines = [o for o in output if o.startswith('@')]

    assert len(lines) == 1

    line = lines[0]
    line = line.split()

    return line[1]

def find_rewritten_commits(output):
    lines = [o for o in output if o.startswith('x')]

    result = {}

    for line in lines:
        line = line[line.index('['):]

        new_commit = line[:line.index(']')].split()[-1]
        branch_name = line.split()[-1].removeprefix('origin/')

        result[new_commit] = branch_name

    return result

def find_matching_branch(current_commit, rewritten_commits):
    for commit, branch in rewritten_commits.items():
        if commit.startswith(current_commit):
            return branch

def main():
    output = subprocess.check_output(['sl', 'ssl']).strip()
    output = output.decode('utf-8')
    output = output.split('\n')
    output = [o.strip('o|│ ╷ ') for o in output]

    current_commit = find_current_commit(output)
    rewritten_commits = find_rewritten_commits(output)

    branch = find_matching_branch(current_commit, rewritten_commits)

    assert branch is not None

    print(f'sl push -t {branch} --force')

    subprocess.run(['sl', 'push', '-t', branch, '--force'])

if __name__ == '__main__':
    main()
