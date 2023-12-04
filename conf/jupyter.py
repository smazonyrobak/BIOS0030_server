import os

c = get_config()

# Kernel config
c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook

# Notebook config
c.NotebookApp.notebook_dir = '/app/cognitive_tests_group_11'
c.NotebookApp.allow_origin = 'bios0030-cogniapp-3e1a433ed719.herokuapp.com/'  # Your public IP or domain
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.allow_remote_access = True
c.NotebookApp.open_browser = False
c.NotebookApp.token = ''
c.NotebookApp.password = ''
c.NotebookApp.allow_password_change=True
c.NotebookApp.port = int(os.environ.get("PORT", 8888))
c.NotebookApp.allow_root = False
