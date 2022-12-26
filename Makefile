PUBLIC_KEY=age1fd76l78y23u88mye2lxmm93xeqmmtn4pnedtxdfrtj5kyw6au5gqalpalh

.PHONY: encrypt
encrypt:
	cat $(FILE) | age -r $(PUBLIC_KEY) > $(FILE).age

.PHONY: decrypt
decrypt:
	age --decrypt -i secret.txt $(I_FILE) > $(O_FILE)
	

