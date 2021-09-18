# Submission

Submits OOP workshops and Milestones

## Installation

Clone repo

```bash
cd ~
git clone https://github.com/shawnyu5/seneca_submission
```

Add directory to path

```bash
echo "export PATH=\"$PATH:$HOME/seneca_submission/\"" >> ~/.bashrc
source ~/.bashrc
```

Configure prof option by running

```bash
cd seneca_submission
chmod +x submit
./submit config
```

And enter your prof's first name and last name. (*this needs to be done only
once*)

**Note**: Do not delete this folder after configuration

## Usage

By default, when running `submit` command without any flags, it will prompt for
workshop number and workshop part. And it will execute the submission command
for that corresponding workshop part.

You can also pass workshop number and part as command line arguments. `submit 3
2` will submit workshop 3 part 2

`submit -ms` will submit milestone instead of workshop.

Likewise, `submit -ms 3` will submit milestone 3
