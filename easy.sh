import cmd
import shlex                                                        

class PyShell(cmd.Cmd()):
    def do_exit(self,arg_str:str) -> None:
        """usage: exit [exitcode]"""
        args=shlex.split(arg_str)
        if len(args)>1:
            print('exit:too many arguments',flie=sys.stderr)
            return
        if len(args)==0 or args[0]=='':
            exit(0)
        try:
            exit(int(args[0]))
        except ValueError:
            print('exit:invalid exit code',file=sys.stderr) 
    
if __name__=='main':
    cmd.Cmd().cmdloop()
