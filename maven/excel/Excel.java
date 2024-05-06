package tineo;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;


public class Excel {
    private final ArrayList<GuestsModel> guests;
    private final ArrayList<Integer> roles;
    private final Workbook workbook;

    public Excel(ArrayList<GuestsModel> guests, ArrayList<Integer> roles) {
        this.guests = guests;
        this.roles = roles;
        this.workbook = new XSSFWorkbook();
        this.reportTables();
        this.reportChart();
        this.createFile();
    }

    public void createFile() {
        File currentDirectory = new File(".");
        String path = currentDirectory.getAbsolutePath();
        String filename = "report.xlsx";
        String fileLocation = path.substring(0, path.length() - 1) + filename;
        FileOutputStream fileOut;

        try {
            fileOut = new FileOutputStream(fileLocation);
            workbook.write(fileOut);
            fileOut.close();
            System.out.println("File created in: " + fileLocation);
        } catch (Exception e) {
            System.out.println("Error creating the file");
        }
    }

    public void reportTables() {
        // Objeto + hoja + contador fila
        Sheet sheet = workbook.createSheet("Guests");
        int indexRow = 0;
        Row row;
        Cell cell;

        // Estilo de la cabecera
        CellStyle style = workbook.createCellStyle();
        Font font = workbook.createFont();
        font.setBold(true);
        font.setColor(IndexedColors.BLUE.getIndex());
        style.setFont(font);

        // Cabecera
        row = sheet.createRow(indexRow);
        String[] headers = {"ID", "Name", "Email", "Role"};
        for (int i = 0; i < headers.length; i++) {
            cell = row.createCell(i);
            cell.setCellValue(headers[i]);
            cell.setCellStyle(style);
        }

        // Contenido
        indexRow++;
        for (GuestsModel guest : guests) {
            row = sheet.createRow(indexRow);
            row.createCell(0).setCellValue(guest.getId());
            row.createCell(1).setCellValue(guest.getName());
            row.createCell(2).setCellValue(guest.getEmail());
            row.createCell(3).setCellValue(guest.getRole());
            indexRow++;
        }

        // Formatea columnas
        for (int i = 0; i < headers.length; i++) {
            sheet.autoSizeColumn(i);
        }
    }


    public void reportChart() {
        DefaultPieDataset dataset = new DefaultPieDataset();
        String label1 = "Admin: " + roles.get(0);
        String label2 = "Guest: " + roles.get(1);
        dataset.setValue(label1, roles.get(0));
        dataset.setValue(label2, roles.get(1));

        JFreeChart chart = ChartFactory.createPieChart(
                "Graphic - Admin & Guests",
                dataset,
                true,
                true,
                false
        );

        try {
            BufferedImage chartImage = chart.createBufferedImage(400, 300);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ChartUtilities.writeBufferedImageAsPNG(byteArrayOutputStream, chartImage);

            Sheet sheet = workbook.createSheet("Graphic");
            int pictureIdx = workbook.addPicture(byteArrayOutputStream.toByteArray(), Workbook.PICTURE_TYPE_PNG);
            byteArrayOutputStream.close();

            CreationHelper helper = workbook.getCreationHelper();
            Drawing<?> drawing = sheet.createDrawingPatriarch();
            ClientAnchor anchor = helper.createClientAnchor();

            anchor.setCol1(1);
            anchor.setRow1(1);

            Picture pict = drawing.createPicture(anchor, pictureIdx);
            pict.resize();
            System.out.println("Graphic created in the Excel file");
        } catch (Exception e) {
            System.out.println("Error creating chart: " + e.getMessage());
        }
    }
}
