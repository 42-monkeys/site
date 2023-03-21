deploy:
	rm -rf public
	hugo
	ssh baldarn@cervellone.lan "rm -rf sites/42monkeys-site; exit;"
	scp -r public baldarn@cervellone.lan:~/sites/42monkeys-site
