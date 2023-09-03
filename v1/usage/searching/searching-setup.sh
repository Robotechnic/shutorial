#! /bin/sh

# THIS SCRIPT WAS GENERATED, DO NOT EDIT
# Real source: searching-setup.sharin

if [ -e /etc/locale.gen ] && grep -q '# fr_FR.UTF-8 UTF-8' /etc/locale.gen ; then
   (apt update; apt -y install locales manpages-fr) 2>/dev/null >/dev/null
   sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen
   dpkg-reconfigure --frontend=noninteractive locales  2>/dev/null >/dev/null
   update-locale LANG=fr_FR.UTF-8 2>/dev/null >/dev/null
fi


# KCCLEAN
cd; if [ "x$PWD" = "x/root" ] ; then mkdir .archive ; mv * .archive ; fi
updatedb

# KCINSTALL tree tree
if which tree >/dev/null 2>/dev/null || [ -e tree ] ; then :; else apt install tree 2>/dev/null >/dev/null; fi

for a in aaa bbb ccc ddd ; do 
  for b in de be xe ; do
    for c in ti li pi ; do
      for d in ka ta ra ; do
        for e in po so vo ; do
	  for f in mu lu zu ; do 
 	    mkdir -p $a/$b/$c/$d/$e/$f
	  done
	done
      done
    done
  done
done
touch ddd/de/li/ka/so/zu/pas-la

# Q1: trouver un fichier de nom "ici"
echo "Bravo, vous avez trouvé le fichier. L'information cherchée est: depikapolu." > aaa/de/pi/ka/po/lu/ici

# Q2: trouver un fichier dont on ignore le nom (find -type f)
echo "Bravo, c'était bien là. L'information était: bepitasolu." > bbb/be/pi/ta/so/lu/fichier_perdu

# Q3: trouver un fichier non vide (find -type f -size 0)
for a in ccc ; do 
  for b in de be xe ; do
    for c in ti li pi ; do
      for d in ka ta ra ; do
        for e in po so vo ; do
	  #for f in mu lu zu ; do
 	    # Des répertoires vides pour géner la recherche
	  #done
	  touch $a/$b/$c/$d/$e/peut-etre-la
	done
        touch $a/$b/$c/$d/peut-etre-la
      done
      touch $a/$b/$c/peut-etre-la
    done
    touch $a/$b/peut-etre-la
  done
done
echo "Bravo, c'était bien là. L'information était: deliravo." > ccc/de/li/ra/vo/peut-etre-la

for f in `find -type f` ; do
  iconv -f ISO_8859-1 -t utf8 -o /tmp/AZE $f && mv /tmp/AZE $f
done

# Q4: trouver un fichier plus récent qu'un autre
for a in ddd ; do 
  for b in de be xe ; do
    for c in ti li pi ; do
      for d in ka ta ra ; do
        for e in po so vo ; do
	  for f in mu lu zu ; do
	    echo "L'information ici est: ${b}${c}${d}${e}${f}." > $a/$b/$c/$d/$e/$f/peut-etre-la
	  done
	  echo "L'information ici est: ${b}${c}${d}${e}." > $a/$b/$c/$d/$e/peut-etre-la
	done
	echo "L'information ici est: ${b}${c}${d}." > $a/$b/$c/$d/peut-etre-la
      done
      echo "L'information ici est: ${b}${c}." > $a/$b/$c/peut-etre-la
    done
    echo "L'information ici est: ${b}." > $a/$b/peut-etre-la
  done
done
touch timestamp; touch -m timestamp

sleep 1
echo "L'information ici est: xepitapozu." > ddd/xe/pi/ta/po/zu/peut-etre-la

rm -f /tmp/.cmd

echo done > /tmp/.katacoda-finished
