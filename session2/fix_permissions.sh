#!/bin/bash

owner=sms
group=po

sudo chown ${owner}:${group} .
sudo chown ${owner}:${owner} dir_for_others_with_readonly_permission dir_for_others_with_write_permission dir_for_owner_group_readonly
sudo chmod 755 dir_for_others_with_readonly_permission
sudo chmod 777 dir_for_others_with_write_permission
sudo chmod 750 dir_for_owner_group_readonly

# FOLDER dir_for_others_with_readonly_permission 
sudo chown ${owner}:${owner} dir_for_others_with_readonly_permission 
sudo find dir_for_others_with_readonly_permission -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 664 dir_for_others_with_readonly_permission/for_others_test_file_for_reading.txt
sudo chmod 666 dir_for_others_with_readonly_permission/for_others_test_file_for_updation.txt dir_for_others_with_readonly_permission/for_others_test_file_for_writing.txt
sudo chmod 660 dir_for_others_with_readonly_permission/test_file_for_reading.txt
sudo chmod 660 dir_for_others_with_readonly_permission/test_file_for_updation.txt dir_for_others_with_readonly_permission/test_file_for_writing.txt

# FOLDER dir_for_others_with_write_permission 
sudo chown ${owner}:${owner} dir_for_others_with_write_permission 
sudo find dir_for_others_with_write_permission -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 664 dir_for_others_with_write_permission/for_others_test_file_for_other_reading.txt
sudo chmod 666 dir_for_others_with_write_permission/for_others_test_file_for_other_updation.txt dir_for_others_with_write_permission/for_others_test_file_for_other_writing.txt
sudo chmod 640 dir_for_others_with_write_permission/for_others_test_file_for_reading.txt
sudo chmod 660 dir_for_others_with_write_permission/for_others_test_file_for_updation.txt dir_for_others_with_write_permission/for_others_test_file_for_writing.txt
sudo chmod 640 dir_for_others_with_write_permission/test_file_for_reading.txt
sudo chmod 660 dir_for_others_with_write_permission/test_file_for_updation.txt dir_for_others_with_write_permission/test_file_for_writing.txt
sudo chmod 644 dir_for_others_with_write_permission/first.txt dir_for_others_with_write_permission/second.txt dir_for_others_with_write_permission/three.txt

# FOLDER dir_for_owner_group_readonly
sudo chown ${owner}:${group} dir_for_owner_group_readonly
sudo chmod 750 dir_for_owner_group_readonly
sudo find dir_for_owner_group_readonly -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 664 dir_for_owner_group_readonly/for_others_test_file_for_reading.txt
sudo chmod 666 dir_for_owner_group_readonly/for_others_test_file_for_updation.txt dir_for_owner_group_readonly/for_others_test_file_for_writing.txt
sudo chmod 640 dir_for_owner_group_readonly/test_file_for_reading.txt
sudo chmod 660 dir_for_owner_group_readonly/test_file_for_updation.txt dir_for_owner_group_readonly/test_file_for_writing.txt


# FOLDER dir_for_owner_group_writable
sudo chown ${owner}:${group} dir_for_owner_group_writable
sudo chmod 770 dir_for_owner_group_writable
sudo find dir_for_owner_group_writable -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 644 dir_for_owner_group_writable/for_others_test_file_for_reading.txt
sudo chmod 666 dir_for_owner_group_writable/for_others_test_file_for_updation.txt dir_for_owner_group_writable/for_others_test_file_for_writing.txt
sudo chmod 640 dir_for_owner_group_writable/test_file_for_reading.txt
sudo chmod 660 dir_for_owner_group_writable/test_file_for_updation.txt dir_for_owner_group_writable/test_file_for_writing.txt

# FOLDER dir_for_owner_only
sudo chown ${owner}:${group} dir_for_owner_only
sudo chmod 700 dir_for_owner_only
sudo find dir_for_owner_only -type f -print | xargs -r chown ${owner}:${group}

sudo chmod 644 dir_for_owner_only/for_others_test_file_for_reading.txt
sudo chmod 666 dir_for_owner_only/for_others_test_file_for_updation.txt dir_for_owner_only/for_others_test_file_for_writing.txt
sudo chmod 640 dir_for_owner_only/test_file_for_reading.txt
sudo chmod 660 dir_for_owner_only/test_file_for_updation.txt dir_for_owner_only/test_file_for_writing.txt
sudo chmod 600 dir_for_owner_only/test_file_for_owner_only.txt


# FOLDER dir_for_po_group_readonly
sudo chown ${owner}:${group} dir_for_po_group_readonly
sudo chmod 750 dir_for_po_group_readonly
sudo find dir_for_po_group_readonly -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 644 dir_for_po_group_readonly/for_others_test_file_for_reading.txt
sudo chmod 666 dir_for_po_group_readonly/for_others_test_file_for_updation.txt dir_for_po_group_readonly/for_others_test_file_for_writing.txt
sudo chmod 640 dir_for_po_group_readonly/test_file_for_reading.txt
sudo chmod 660 dir_for_po_group_readonly/test_file_for_updation.txt dir_for_po_group_readonly/test_file_for_writing.txt

# FOLDER dir_for_po_group_writable
sudo chown ${owner}:${group} dir_for_po_group_writable
sudo chmod 770 dir_for_po_group_writable
sudo find dir_for_po_group_writable -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 644 dir_for_po_group_writable/for_others_test_file_for_reading.txt
sudo chmod 666 dir_for_po_group_writable/for_others_test_file_for_updation.txt dir_for_po_group_writable/for_others_test_file_for_writing.txt
sudo chmod 640 dir_for_po_group_writable/test_file_for_reading.txt
sudo chmod 660 dir_for_po_group_writable/test_file_for_updation.txt dir_for_po_group_writable/test_file_for_writing.txt
sudo chmod 600 dir_for_po_group_writable/practice.txt

# FOLDER dir_with_default_umask
sudo chown ${owner}:${group} dir_with_default_umask
sudo chmod 755 dir_with_default_umask
sudo find dir_with_default_umask -type f -print | xargs -r chown ${owner}:${group}
sudo chmod 644 dir_with_default_umask/for_others_test_file_for_reading.txt
sudo chmod 666 dir_with_default_umask/for_others_test_file_for_updation.txt dir_with_default_umask/for_others_test_file_for_writing.txt
sudo chmod 640 dir_with_default_umask/test_file_for_reading.txt
sudo chmod 660 dir_with_default_umask/test_file_for_updation.txt dir_with_default_umask/test_file_for_writing.txt


# HOME folder of session2
sudo chown -R ${owner}:${owner} for_others_test_file_for_other_reading.txt for_others_test_file_for_other_updation.txt for_others_test_file_for_other_writing.txt
sudo chmod 644 for_others_test_file_for_other_reading.txt
sudo chmod 666 for_others_test_file_for_other_updation.txt for_others_test_file_for_other_writing.txt

sudo chown -R ${owner}:${group} for_po_test_file_for_reading.txt for_po_test_file_for_updation.txt for_po_test_file_for_writing.txt
sudo chmod 640 for_po_test_file_for_reading.txt 
sudo chmod 660 for_po_test_file_for_updation.txt for_po_test_file_for_writing.txt

sudo chown -R ${owner}:${owner} for_others_test_file_for_other_reading.txt for_others_test_file_for_other_updation.txt for_others_test_file_for_other_writing.txt
sudo chmod 400 test_file_for_reading.txt
sudo chmod 600 test_file_for_updation.txt test_file_for_writing.txt

