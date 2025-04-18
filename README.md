# hello-openai-codex

## Using `security find-generic-password` (macOS)

### Export to Environment variable
```sh
export OPENAI_API_KEY=$(security find-generic-password -s OPENAI_API_KEY -a $(whoami) -w)
```

### Copy to clipboard
```sh
security find-generic-password -s OPENAI_API_KEY -a $(whoami) -w | pbcopy
```

### Register
```sh
security add-generic-password -s OPENAI_API_KEY -a $(whoami) -w $(pbpaste)
```

### Update
```sh
security add-generic-password -s OPENAI_API_KEY -a $(whoami) -w $(pbpaste) -U
```

### Delete
```sh
security delete-generic-password -s OPENAI_API_KEY -a $(whoami) -w
```

### Launch app
```sh
open /System/Applications/Passwords.app
```
