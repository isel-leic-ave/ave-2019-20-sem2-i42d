using System;
using System.Reflection;
using LoggerEmit.log.Log;


public class Info 
{
	public int a;

	public int b;

    [Level(3)]  // Only Loggers with internal level set to >= 3 can log
                // the value of field "c"
	public int c;

	[DontLog]
	public int d;
	
	public Info(int a, int b, int c, int d) 
	{
		this.a = a; this.b = b; this.c = c; this.d = d;
	}
}

public class User
{
    [Level(1)] // Only Loggers with internal level set to >= 1 can log
               // the value of field "username"
	public string username;
	
	[DontLog]
	public string password;
	
	public string name;
	
	public User(string uname, string passwd, string fullname) {
		username = uname; password = passwd; name = fullname;
	}
}

public class Logs 
{
    static readonly ILog theRefLog = new RefLog();
	
	static ILog GetLogger(object obj)
	{
        return new LoggerForInfo();
		//return theRefLog;
		// OR
		//return GenLog.For(obj.GetType().GetTypeInfo());
	}

	static void Log(object obj, int level)
	{
		GetLogger(obj).Log(obj, level);
	}
	
	public static void Main()
	{
		Info info = new Info(1, 2, 3, 4);
		User user = new User("jtrindade", "1234", "Joao Trindade");

		Log(info, 2); // A Logger with level 2
        Log(info, 5); // A Logger with level 5

        //Log(user, 0); // A Logger with level 0
        //Log(user, 2); // A Logger with level 2
	}
}
