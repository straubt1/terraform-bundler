import click
import json
import hcl
from zipfile import ZipFile

# import os
# import subprocess
# from replicatedctl import ReplicatedCtl
# import boto3
# import psycopg2


@click.group()
def cli():
    pass


@cli.command()
def validateall():
    with open('bundle.hcl', 'r') as fp:
        obj = hcl.load(fp)
    click.echo(obj["terraform"]["version"])
    click.echo(obj["providers"])

    # # create a ZipFile object
    # zipObj = ZipFile('sample.zip', 'w')

    # # close the Zip File
    # zipObj.close()


if __name__ == '__main__':
    cli()
