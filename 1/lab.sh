#!/bin/sh
set -e
cd ~

mkdir subdir
touch subdir/file1

echo "=== исходные права ==="
ls -l subdir/file1

chmod 664 subdir/file1        # A; для B — 750, для C — 704
echo "=== новые права ==="
ls -l subdir/file1

ln subdir/file1 file2
echo "=== inode (совпадают) ==="
ls -i subdir/file1 file2

ln -s file2 file3
echo "=== мягкая ссылка ==="
ls -l file3

echo "=== ссылки (второе поле = 2) ==="
ls -l subdir/file1 file2
stat subdir/file1 | grep -i links
stat file2        | grep -i links

# подождать, пока посмотрят

rm subdir/file1
rmdir subdir
rm -f file2 file3
echo "=== готово ==="