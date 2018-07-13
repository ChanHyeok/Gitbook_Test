# gitbook ���� ������ ��ġ�ϰ� gitbook ���带 ������.
gitbook install && gitbook build

# github pages�� �ٶ󺸴� gh-pages �귣ġ�� �����.
git checkout gh-pages

# �ֽ� gh-pages �귣ġ ������ ������ rebase�� �����Ѵ�.
git pull origin gh-pages --rebase

# gitbook build�� ���� _book���� �Ʒ� ��� ������ ���� ��ġ�� �����´�.
cp -R _book/* .

# node_modules������ _book������ �����ش�.
git clean -fx node_modules
git clean -fx _book

# NOQA
git add .

# Ŀ��Ŀ��!
git commit -a -m "Update docs"

# gh-pages �귣ġ�� PUSH!
git push origin gh-pages

# �ٽ� master �귣ġ�� ���ƿ´�.
git checkout master