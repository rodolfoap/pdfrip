drun(){
	docker run -it --rm --name crack \
		-v $(pwd):/crack \
		-v $(pwd)/.bashrc_helpers:/root/.bashrc \
		crack bash;
}
case "$1" in
e)	vi -p .x
	;;
b)	docker build -t crack .
	;;
"")	drun
	;;
esac
