## How to use this:

0. Make sure you have rustup and nodejs installed

1. Run init.sh (I didn't make a batch file for windows yet)
2. If you want to use lldb in VSCode install that otherwise you should be up to go now.
3. open `workspace.code-workspace` and **install the recomended extentions** for the workspace

4. rebuild the core with `./rebuild-core.sh` or running the task from the command pallete `Ctrl+shift+P`(on linux) > `Tasks: Run Task` > `rebuild-all-dc-node`
5. start electron with 
```
cd deltachat-desktop
npx electron .
```
6. when electron is running press `F5` and attach the debugger to the first electron process (should be the one with the lowest process id)



## Use without vscode

rebuild core and bindings:
run `./rebuild-core.sh` or
```
cd deltachat-node
npm run rebuild-all
cd ..
```

start electron:
```
cd deltachat-desktop
npx electron .
```


## other things
rebuild desktop after changing renderer javascript or scss:
run `./build-js.sh` or
```
cd deltachat-node
npm run build
cd ..
```