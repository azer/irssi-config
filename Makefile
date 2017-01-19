all: clean
	  @./setup.sh
clean:
		@sed -i -e "s/real_name = \"[^\"]*\"/real_name = \"\"/" config
		@sed -i -e "s/user_name = \"[^\"]*\"/user_name = \"\"/" config
		@sed -i -e "s/nick = \"[^\"]*\"/nick = \"\"/" config
		@sed -i -e "s/password = \"[^\"]*\"/password = \"\"/" config
