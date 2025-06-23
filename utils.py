import subprocess


def run_command(command) -> str:
    return subprocess.check_output(command, shell=True, text=True)
