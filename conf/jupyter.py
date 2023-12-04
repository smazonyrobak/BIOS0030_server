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
c.NotebookApp.password = u'argon2:$argon2id$v=19$m=10240,t=10,p=8$vW0DdxyApcG5bOIfeKORxQ$R9/lM60VQWwK3ooRtDXRk6ryBBqCCf18Z2iF9DT9uDc'
c.NotebookApp.port = int(os.environ.get("PORT", 8888))
c.NotebookApp.allow_root = False
