for combo in $(curl https://raw.github.com/BAM-Team/android_vendor_BAM-Rom/jellybean/bam-build-targets | sed -e 's/#.*$//' | grep jellybean | awk {'print $1'})
do
    add_lunch_combo $combo
done
