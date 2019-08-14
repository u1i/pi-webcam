source ./cam.cfg
# Prepare page

cat page.template | sed "s~__IMAGE__~${b9y_host}${b9y_route_pic}~;" > page.html
curl --upload-file page.html "$b9y_host/keys/page?token=$token"

while [ 1 ]
do
	fswebcam -r 640x480 --no-timestamp --title "$(date '+%d/%m/%Y %H:%M:%S (Singapore)')" --font sans:18 --jpeg 85 -D 1 shot.jpg

	curl --upload-file shot.jpg "$b9y_host/keys/pic?token=$token"
	sleep 5
done
