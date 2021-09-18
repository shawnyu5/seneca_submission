# Submission

Submits OOP workshops and Milestones

## Installation

Clone repo

```bash
git clone https://github.com/shawnyu5/seneca_submission
```

Add directory to path

```bash
echo "export PATH="$PATH:~/seneca_submission/" >> ~/.bashrc
source ~/.bashrc
```

Configure prof option by running

```bash
submit config
```

And enter your prof's first name and last name.

## Usage

By default, when running `submit` command without any flags, it will prompt for
workshop number and workshop part. And it will execute the submission command
for that corresponding workshop part.

