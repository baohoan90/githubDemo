package demo.itext.example.iTextPDF;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.licensekey.LicenseKey;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet("/SimpleServlet")
public class SimpleServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimpleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String htmlSource = "/media/DATA/workspace/git/itextpdf/resources/HTML/Accessibility.html";
        String resourceFolder = "/media/DATA/workspace/git/itextpdf/resources/HTML";
        String destinationFolder = "/media/DATA/workspace/git/itextpdf/resources/PDF";
        String license = "/media/DATA/workspace/git/itextpdf/license/maven-metadata.xml";
        String pdfDest = destinationFolder +  "Accessibility.pdf";
        
        //LicenseKey.loadLicenseFile(license);
        
        File file = new File(pdfDest);

        System.out.println("Parsing: " + htmlSource);
        file.getParentFile().mkdirs();

        PdfHelper helper = new PdfHelper();

        helper.createPdf(htmlSource, pdfDest, resourceFolder);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
        response.getWriter().write("test test test");



    }

}
