import java.awt.Graphics;
import java.awt.GraphicsEnvironment;
import java.awt.image.BufferedImage;
import java.io.File;
//from  w  w w.  java  2  s . c o m
import javax.imageio.ImageIO;
import javax.swing.JEditorPane;
public class HtmlToPng {
	public static void main(String[] args) throws Exception {
	    String html = "<!DOCTYPE html>\r\n" + 
	    		"<html>\r\n" + 
	    		"	<head>\r\n" + 
	    		"		<meta charset=\"utf-8\" />\r\n" + 
	    		"		<title>A simple, clean, and responsive HTML invoice template</title>\r\n" + 
	    		"\r\n" + 
	    		"		<style>\r\n" + 
	    		"			.invoice-box {\r\n" + 
	    		"				max-width: 800px;\r\n" + 
	    		"				margin: auto;\r\n" + 
	    		"				padding: 30px;\r\n" + 
	    		"				border: 1px solid #eee;\r\n" + 
	    		"				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);\r\n" + 
	    		"				font-size: 16px;\r\n" + 
	    		"				line-height: 24px;\r\n" + 
	    		"				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;\r\n" + 
	    		"				color: #555;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table {\r\n" + 
	    		"				width: 100%;\r\n" + 
	    		"				line-height: inherit;\r\n" + 
	    		"				text-align: left;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table td {\r\n" + 
	    		"				padding: 5px;\r\n" + 
	    		"				vertical-align: top;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr td:nth-child(2) {\r\n" + 
	    		"				text-align: right;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.top table td {\r\n" + 
	    		"				padding-bottom: 20px;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.top table td.title {\r\n" + 
	    		"				font-size: 45px;\r\n" + 
	    		"				line-height: 45px;\r\n" + 
	    		"				color: #333;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.information table td {\r\n" + 
	    		"				padding-bottom: 40px;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.heading td {\r\n" + 
	    		"				background: #eee;\r\n" + 
	    		"				border-bottom: 1px solid #ddd;\r\n" + 
	    		"				font-weight: bold;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.details td {\r\n" + 
	    		"				padding-bottom: 20px;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.item td {\r\n" + 
	    		"				border-bottom: 1px solid #eee;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.item.last td {\r\n" + 
	    		"				border-bottom: none;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box table tr.total td:nth-child(2) {\r\n" + 
	    		"				border-top: 2px solid #eee;\r\n" + 
	    		"				font-weight: bold;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			@media only screen and (max-width: 600px) {\r\n" + 
	    		"				.invoice-box table tr.top table td {\r\n" + 
	    		"					width: 100%;\r\n" + 
	    		"					display: block;\r\n" + 
	    		"					text-align: center;\r\n" + 
	    		"				}\r\n" + 
	    		"\r\n" + 
	    		"				.invoice-box table tr.information table td {\r\n" + 
	    		"					width: 100%;\r\n" + 
	    		"					display: block;\r\n" + 
	    		"					text-align: center;\r\n" + 
	    		"				}\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			/** RTL **/\r\n" + 
	    		"			.invoice-box.rtl {\r\n" + 
	    		"				direction: rtl;\r\n" + 
	    		"				font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box.rtl table {\r\n" + 
	    		"				text-align: right;\r\n" + 
	    		"			}\r\n" + 
	    		"\r\n" + 
	    		"			.invoice-box.rtl table tr td:nth-child(2) {\r\n" + 
	    		"				text-align: left;\r\n" + 
	    		"			}\r\n" + 
	    		"		</style>\r\n" + 
	    		"	</head>\r\n" + 
	    		"\r\n" + 
	    		"	<body>\r\n" + 
	    		"		<div class=\"invoice-box\">\r\n" + 
	    		"			<table cellpadding=\"0\" cellspacing=\"0\">\r\n" + 
	    		"				<tr class=\"top\">\r\n" + 
	    		"					<td colspan=\"2\">\r\n" + 
	    		"						<table>\r\n" + 
	    		"							<tr>\r\n" + 
	    		"								<td class=\"title\">\r\n" + 
	    		"									<img src=\"https://www.sparksuite.com/images/logo.png\" style=\"width: 100%; max-width: 300px\" />\r\n" + 
	    		"								</td>\r\n" + 
	    		"\r\n" + 
	    		"								<td>\r\n" + 
	    		"									Invoice #: 123<br />\r\n" + 
	    		"									Created: January 1, 2015<br />\r\n" + 
	    		"									Due: February 1, 2015\r\n" + 
	    		"								</td>\r\n" + 
	    		"							</tr>\r\n" + 
	    		"						</table>\r\n" + 
	    		"					</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"information\">\r\n" + 
	    		"					<td colspan=\"2\">\r\n" + 
	    		"						<table>\r\n" + 
	    		"							<tr>\r\n" + 
	    		"								<td>\r\n" + 
	    		"									Sparksuite, Inc.<br />\r\n" + 
	    		"									12345 Sunny Road<br />\r\n" + 
	    		"									Sunnyville, CA 12345\r\n" + 
	    		"								</td>\r\n" + 
	    		"\r\n" + 
	    		"								<td>\r\n" + 
	    		"									Acme Corp.<br />\r\n" + 
	    		"									John Doe<br />\r\n" + 
	    		"									john@example.com\r\n" + 
	    		"								</td>\r\n" + 
	    		"							</tr>\r\n" + 
	    		"						</table>\r\n" + 
	    		"					</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"heading\">\r\n" + 
	    		"					<td>Payment Method</td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>Check #</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"details\">\r\n" + 
	    		"					<td>Check</td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>1000</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"heading\">\r\n" + 
	    		"					<td>Item</td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>Price</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"item\">\r\n" + 
	    		"					<td>Website design</td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>$300.00</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"item\">\r\n" + 
	    		"					<td>Hosting (3 months)</td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>$75.00</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"item last\">\r\n" + 
	    		"					<td>Domain name (1 year)</td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>$10.00</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"\r\n" + 
	    		"				<tr class=\"total\">\r\n" + 
	    		"					<td></td>\r\n" + 
	    		"\r\n" + 
	    		"					<td>Total: $385.00</td>\r\n" + 
	    		"				</tr>\r\n" + 
	    		"			</table>\r\n" + 
	    		"		</div>\r\n" + 
	    		"	</body>\r\n" + 
	    		"</html>";
	    		
	    int width = 2000, height = 1000;

	    BufferedImage image = GraphicsEnvironment.getLocalGraphicsEnvironment()
	        .getDefaultScreenDevice().getDefaultConfiguration()
	        .createCompatibleImage(width, height);

	    Graphics graphics = image.createGraphics();

	    JEditorPane jep = new JEditorPane("html", html);
	    jep.setSize(width, height);
	    jep.print(graphics);

	    ImageIO.write(image, "png", new File("Image.png"));
	  }
}
