package sample;

import java.io.File;
import org.alicebot.ab.*;
public class ChatBot {
	
	
	private static final boolean TRACE_MODE=false;
	
	public static String putData(String textline)
	{
		String resourcepath=getpath();
		MagicBooleans.trace_mode=TRACE_MODE;
		Bot b=new Bot("super",resourcepath);
		Chat chatsession=new Chat(b);
		String res=chatsession.multisentenceRespond(textline);
		return res;
	}
	private static String getpath()
	{
		String path="D:\\Eclipse Workspace\\ChatBot";
		String resourcepath=path + File.separator +"src" + File.separator +"main" +File.separator +"resources";
		return resourcepath;
	}
}

