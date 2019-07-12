/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;

/**
 *
 * @author Shardul
 */
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import static java.time.OffsetTime.now;
import java.time.format.DateTimeFormatter;
import javax.swing.JOptionPane;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import java.util.Locale;
import javax.swing.JFrame;
import net.proteanit.sql.DbUtils;

public class VetHome extends javax.swing.JFrame {

    /**
     * Creates new form VetHome
     */
    public VetHome() {
        initComponents();
        show_user_vet();
    }
    public ArrayList<user_vet> userList(){
        ArrayList<user_vet> userList = new ArrayList<>();
        try
        {
            String path = "jdbc:mysql://localhost:3305/wildlife";
            String user = "admin";
            String pass = "1234";
            Connection con = DriverManager.getConnection(path,user,pass);
            String query1 = "SELECT * FROM vet";
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query1);
            user_vet user1;
            while(rs.next()){
                user1 = new user_vet(rs.getInt("animal_ID"), rs.getInt("endangered_S"), rs.getString("sex"),rs.getInt("preg_S"), rs.getInt("weight"), rs.getInt("feed_count"),rs.getInt("alive"),rs.getInt("injury_S"));
                userList.add(user1);
            }
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null, "Error Found" +ex);
        }
        return userList;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
            public void show_user_vet(){
            
            ArrayList<user_vet> list = userList();
            DefaultTableModel model = (DefaultTableModel)jTable1.getModel();
            Object [] row = new Object[8];
            for(int i=0;i<list.size();i++){
                row[0]=list.get(i).getanimal_ID();
                row[1]=list.get(i).getendangered_S();
                row[2]=list.get(i).getsex();
                row[3]=list.get(i).getpreg_S();
                row[4]=list.get(i).getweight();
                row[5]=list.get(i).getfeed_count();
                row[6]=list.get(i).getalive();
                row[7]=list.get(i).getinjury_S();
                model.addRow(row);
            }
        }
    public VetHome(String para){
        initComponents();
        jLabel10.setText(para);
        show_user_vet();
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox<>();
        jLabel4 = new javax.swing.JLabel();
        jComboBox3 = new javax.swing.JComboBox<>();
        jLabel5 = new javax.swing.JLabel();
        jTextField5 = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jTextField6 = new javax.swing.JTextField();
        jComboBox4 = new javax.swing.JComboBox<>();
        jButton2 = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        jComboBox5 = new javax.swing.JComboBox<>();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jComboBox6 = new javax.swing.JComboBox<>();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel49 = new javax.swing.JLabel();
        jLabel50 = new javax.swing.JLabel();
        jButton3 = new javax.swing.JButton();
        jLabel13 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocation(new java.awt.Point(0, 0));
        setMaximumSize(new java.awt.Dimension(1390, 860));
        setMinimumSize(new java.awt.Dimension(1390, 860));
        setPreferredSize(new java.awt.Dimension(1390, 860));
        setResizable(false);
        getContentPane().setLayout(null);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Animal_ID", "endangered_S", "sex", "preg_S", "weight", "feed_count", "alive", "injured"
            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        getContentPane().add(jScrollPane1);
        jScrollPane1.setBounds(400, 170, 950, 327);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel1.setText("Animal_ID:");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(70, 240, 66, 21);

        jTextField4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField4ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField4);
        jTextField4.setBounds(150, 240, 220, 22);

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel3.setText("Sex:");
        getContentPane().add(jLabel3);
        jLabel3.setBounds(110, 340, 28, 21);

        jComboBox2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "0", "1" }));
        getContentPane().add(jComboBox2);
        jComboBox2.setBounds(150, 290, 220, 22);

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel4.setText("Pregnancy Status:");
        getContentPane().add(jLabel4);
        jLabel4.setBounds(20, 390, 114, 21);

        jComboBox3.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "0", "1" }));
        getContentPane().add(jComboBox3);
        jComboBox3.setBounds(150, 390, 220, 22);

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel5.setText("Weight:");
        getContentPane().add(jLabel5);
        jLabel5.setBounds(80, 440, 49, 21);

        jTextField5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField5ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField5);
        jTextField5.setBounds(150, 480, 220, 22);

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel6.setText("Feed Count:");
        getContentPane().add(jLabel6);
        jLabel6.setBounds(60, 480, 76, 22);

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel7.setText("Alive/Dead:");
        getContentPane().add(jLabel7);
        jLabel7.setBounds(60, 520, 69, 21);

        jTextField6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField6ActionPerformed(evt);
            }
        });
        getContentPane().add(jTextField6);
        jTextField6.setBounds(150, 440, 220, 22);

        jComboBox4.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "0", "1" }));
        jComboBox4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox4ActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBox4);
        jComboBox4.setBounds(150, 520, 220, 22);

        jButton2.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jButton2.setText("Update");
        jButton2.setPreferredSize(new java.awt.Dimension(191, 29));
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2);
        jButton2.setBounds(180, 630, 90, 29);

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel8.setText("Endangered Status:");
        getContentPane().add(jLabel8);
        jLabel8.setBounds(10, 290, 122, 21);

        jComboBox5.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Male", "Female" }));
        getContentPane().add(jComboBox5);
        jComboBox5.setBounds(150, 340, 220, 22);

        jLabel9.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel9.setText("Your ID:");
        getContentPane().add(jLabel9);
        jLabel9.setBounds(80, 190, 52, 21);

        jLabel10.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        getContentPane().add(jLabel10);
        jLabel10.setBounds(150, 180, 220, 30);

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel11.setText("Injured");
        getContentPane().add(jLabel11);
        jLabel11.setBounds(90, 570, 44, 21);

        jComboBox6.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "0", "1" }));
        jComboBox6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox6ActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBox6);
        jComboBox6.setBounds(150, 570, 220, 22);

        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Message", "Animal ID"
            }
        ));
        jScrollPane2.setViewportView(jTable2);

        getContentPane().add(jScrollPane2);
        jScrollPane2.setBounds(400, 520, 950, 198);

        jButton1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jButton1.setText("Show Schedule");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1);
        jButton1.setBounds(840, 740, 140, 29);

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel2.setText("Veterinary Data Handler");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(589, 46, 277, 58);

        jLabel12.setIcon(new javax.swing.ImageIcon("C:\\Users\\Admin\\Desktop\\Project\\UI\\icons8-medical-doctor-50.png")); // NOI18N
        getContentPane().add(jLabel12);
        jLabel12.setBounds(510, 50, 50, 59);

        jLabel49.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel49.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel49.setText("Logout !");
        jLabel49.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jLabel49MousePressed(evt);
            }
        });
        getContentPane().add(jLabel49);
        jLabel49.setBounds(90, 750, 71, 25);

        jLabel50.setIcon(new javax.swing.ImageIcon("C:\\Users\\Admin\\Desktop\\Project\\UI\\Export_64px.png")); // NOI18N
        getContentPane().add(jLabel50);
        jLabel50.setBounds(20, 740, 60, 50);

        jButton3.setText("jButton3");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton3);
        jButton3.setBounds(690, 740, 120, 30);

        jLabel13.setIcon(new javax.swing.ImageIcon("C:\\Users\\Admin\\Desktop\\Project\\UI\\abstract-light-green-title-concept-background_e1ntet5mg__F0000.png")); // NOI18N
        getContentPane().add(jLabel13);
        jLabel13.setBounds(0, 0, 1490, 910);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField4ActionPerformed

    private void jTextField5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField5ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField5ActionPerformed

    private void jTextField6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField6ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField6ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        try{
            String path = "jdbc:mysql://localhost:3305/wildlife";
            String user = "admin";
            String pass = "1234";
            Connection con = DriverManager.getConnection(path,user,pass);
            Connection con1 = DriverManager.getConnection(path,user,pass);
            int Animal_ID = Integer.parseInt(jTextField4.getText());
            int employee_id = Integer.parseInt(jLabel10.getText());
            int endangered_S = Integer.parseInt(jComboBox2.getSelectedItem().toString());
            String sex = jComboBox5.getSelectedItem().toString();
            int preg_S = Integer.parseInt(jComboBox3.getSelectedItem().toString());
            int weight = Integer.parseInt(jTextField6.getText());
            int feed_count = Integer.parseInt(jTextField5.getText());
            int alive = Integer.parseInt(jComboBox4.getSelectedItem().toString());
            int injury_S = Integer.parseInt(jComboBox6.getSelectedItem().toString());
            String str = "Update";
            //Calendar now = Calendar.getInstance();
            LocalDateTime ldt = LocalDateTime.now().plusDays(0);
            DateTimeFormatter formmat1 = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.ENGLISH);
            String formatter = formmat1.format(ldt);
            int row = jTable1.getSelectedRow();
            //String value = (jTable1.getModel().getValueAt(row,0).toString());
            String query1 = "INSERT INTO adminlog(employee_id,Animal_ID,action,change_date) values('"+employee_id+"','"+Animal_ID+"','"+str+"','"+ldt+"')";
            String query = "UPDATE vet SET endangered_S='" +endangered_S+ "',sex='" +sex+ "',preg_S='" +preg_S+ "',weight='" +weight+ "' , feed_count = '"+feed_count+"',alive = '"+alive+"',injury_S = '"+injury_S+"'  where Animal_ID='" +Animal_ID+"'";
            Statement stmt = con.createStatement();
            Statement stmt1 = con1.createStatement();
            stmt.executeUpdate(query);
            stmt1.executeUpdate(query1);
            DefaultTableModel model = (DefaultTableModel)jTable1.getModel();
            model.setRowCount(0);
            show_user_vet();
            JOptionPane.showMessageDialog(null, "Successfully Updated!");
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null, "Error Found" +ex);
        }                                    
                                        
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
                // TODO add your handling code here:
        int i = jTable1.getSelectedRow();
        TableModel model = jTable1.getModel();
        jTextField4.setText(model.getValueAt(i,0).toString());
        jComboBox2.setSelectedItem(jTable1.getModel().getValueAt(i,1).toString());
        jComboBox5.setSelectedItem(jTable1.getModel().getValueAt(i,2).toString());
        jComboBox3.setSelectedItem(jTable1.getModel().getValueAt(i,3).toString());
        jTextField6.setText(model.getValueAt(i,4).toString());
        jTextField5.setText(model.getValueAt(i,5).toString());
        jComboBox4.setSelectedItem(jTable1.getModel().getValueAt(i,6).toString()); 
        jComboBox6.setSelectedItem(jTable1.getModel().getValueAt(i,7).toString()); 
    }//GEN-LAST:event_jTable1MouseClicked

    private void jComboBox4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox4ActionPerformed

    private void jComboBox6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox6ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox6ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
                 try{
            String path = "jdbc:mysql://localhost:3305/wildlife";
            String user = "admin";
            String pass = "1234";
            Connection con2 = DriverManager.getConnection(path,user,pass);
            int employee_id = Integer.parseInt(jLabel10.getText());
            String query2 = "SELECT sch,aid_ FROM sct WHERE eid = '"+employee_id+"'";
            Statement stmt2 = con2.createStatement();
            ResultSet rs = stmt2.executeQuery(query2);
            rs.beforeFirst();
            jTable2.setModel(DbUtils.resultSetToTableModel(rs));
            JOptionPane.showMessageDialog(null, "Successfully Updated!");
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(null, "Error Found" +ex);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jLabel49MousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel49MousePressed
        // TODO add your handling code here:
        this.hide();
        LoginPass re=new LoginPass();
        re.setVisible(true);
        re.pack();
        re.setLocationRelativeTo(null);
        re.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }//GEN-LAST:event_jLabel49MousePressed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        int eid = Integer.parseInt(jLabel10.getText());
            try {
                String path = "jdbc:mysql://localhost:3305/wildlife";
                String user = "admin";
                String pass = "1234";
                Connection con = DriverManager.getConnection(path, user, pass);
                String query = "DELETE from animal WHERE eid='"+eid+"' LIMIT 1";
                PreparedStatement pst = con.prepareStatement(query);
                //PreparedStatement pst1 = con1.prepareStatement(query1);
                pst.executeUpdate();
                //pst1.executeUpdate();
                DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
                model.setRowCount(0);
                JOptionPane.showMessageDialog(null, "Successfully Deleted!");
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, "Error Found" + ex);
            }
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(VetHome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(VetHome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(VetHome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(VetHome.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VetHome().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JComboBox<String> jComboBox2;
    private javax.swing.JComboBox<String> jComboBox3;
    private javax.swing.JComboBox<String> jComboBox4;
    private javax.swing.JComboBox<String> jComboBox5;
    private javax.swing.JComboBox<String> jComboBox6;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel49;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel50;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    // End of variables declaration//GEN-END:variables
}