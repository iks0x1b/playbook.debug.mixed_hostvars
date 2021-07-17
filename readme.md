##This artifact is to fufill a specific pattern

#to reformat wonky ini list objects as defined:
`ansible-playbook reformat_py_list_to_ini.yaml`

#to iterate over properly formatted inventory artifact you just produced:
`ansible-playbook -i the_file_you_want.ini site.yaml`
