import os
import pprint

def main(argv=None):
	pprint.pprint(dict(os.environ))

if __name__ == '__main__':
	main()