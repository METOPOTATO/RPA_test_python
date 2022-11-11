from RPA.Archive import Archive

lib = Archive()
lib.archive_folder_with_tar(folder='./src_python',
                            archive_name='test.zip', recursive=True)
files = lib.list_archive('test.zip')
for file in files:
    print(file)
