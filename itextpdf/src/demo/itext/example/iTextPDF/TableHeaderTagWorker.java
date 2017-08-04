package java.itext.example.iTextPDF;

import com.google.common.collect.Table.Cell;
import com.itextpdf.html2pdf.attach.ProcessorContext;
import com.itextpdf.html2pdf.attach.impl.tags.TdTagWorker;
import com.itextpdf.html2pdf.html.node.IElementNode;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.layout.IPropertyContainer;


public class TableHeaderTagWorker extends TdTagWorker {
    public TableHeaderTagWorker(IElementNode element, ProcessorContext context) {
        super(element, context);
    }
 
    @Override
    public IPropertyContainer getElementResult() {
//        Cell cell =(Cell) super.getElementResult();
//        cell.setRole(PdfName.TH);
        return super.getElementResult();
    }
}