build:
	pip install -r requirements.txt
	rst2s5.py --theme-url ui/pycon index.rst index.html
