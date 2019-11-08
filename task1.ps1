#task1
if($args.Count -ne 0) {                                   # if count args not equal 0 then do
 Switch($args[0]){                                        #switch
   "user"{                                                #if first param is user do 
        if($args.Count -gt 1){   
            Write-Host "Parameter list have too many argumet" 
        }else{
            Write-Host "Users on localhost"
            Get-LocalUser | select name                   #select list of users
             }
   }
   "process"{                                             #if args[0] equal process do
        if($args.Count -eq 2){                            #if args count = 2 (process and user ) do
             #Get-Process
             $variable=$args[1]
             gwmi win32_process | ?{$_.GetOwner().User -eq $variable} | select caption  #select process from user ($variable) 
         }else{
                Write-Host "Enter 2 parameters. Like: process user"
              }
   }
   "session"{
   if($args.Count -gt 1){   
            Write-Host "Parameter list have too many argumet" 
        }else{
             $Session = Get-Pssession
             if([string]::IsNullOrEmpty($Session) ){        #check if string is null then show message 
             Write-Host "Session not found"
             }else {
             echo $Session                                  #else print sessions
             }

             }
  
   }
}
  
}else {

Write-Host "Enter parameters";
}