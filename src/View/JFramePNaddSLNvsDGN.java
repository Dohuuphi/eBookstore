/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import CodeFrame.CodeBanHang;
import Model.SanPham;
import Service.SanPhamService;
import java.awt.Color;
import javax.swing.JOptionPane;

/**
 *
 * @author NHT_Kurumi
 */
public class JFramePNaddSLNvsDGN extends javax.swing.JFrame {

    private SanPhamService sanphamService;
    /**
     * Creates new form JFramePhieuNhapSLNvsDGN
     */
    public JFramePNaddSLNvsDGN() {
        initComponents();
        setResizable(false);//Vô hiệu hóa nút phóng to
        getContentPane().setBackground(Color.WHITE);//Background đổi màu
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);//Đóng Jframe khi click(x)
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jSpinner1 = new javax.swing.JSpinner();
        jPanel1 = new javax.swing.JPanel();
        txtSLNhap = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jbtClose = new javax.swing.JButton();
        jbtNext = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        txtDGNhap = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Nhập số thông tin", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        txtSLNhap.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("Số lượng nhập");

        jbtClose.setBackground(new java.awt.Color(204, 0, 0));
        jbtClose.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jbtClose.setForeground(new java.awt.Color(255, 255, 255));
        jbtClose.setText("Đóng");
        jbtClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtCloseActionPerformed(evt);
            }
        });

        jbtNext.setBackground(new java.awt.Color(0, 204, 0));
        jbtNext.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jbtNext.setForeground(new java.awt.Color(255, 255, 255));
        jbtNext.setText("Tiếp");
        jbtNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtNextActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setText("Đơn giá nhập");

        txtDGNhap.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jbtClose, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 93, Short.MAX_VALUE)
                .addComponent(jbtNext, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(30, 30, 30))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(txtSLNhap, javax.swing.GroupLayout.PREFERRED_SIZE, 236, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(txtDGNhap, javax.swing.GroupLayout.PREFERRED_SIZE, 236, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtSLNhap, javax.swing.GroupLayout.DEFAULT_SIZE, 42, Short.MAX_VALUE))
                .addGap(27, 27, 27)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDGNhap, javax.swing.GroupLayout.DEFAULT_SIZE, 42, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jbtClose, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jbtNext, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(47, 47, 47))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jbtCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbtCloseActionPerformed

    private void jbtNextActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtNextActionPerformed
        JFramePhieuNhapAdd.SLNhap = txtSLNhap.getText();
        JFramePhieuNhapAdd.DGNhap = txtDGNhap.getText();
        sanphamService = new SanPhamService();

        int row = JFramePhieuNhapAdd.tableCTPN.getSelectedRow();
        String masp = JFramePhieuNhapAdd.tableCTPN.getValueAt(row, 0).toString();
        SanPham sp = sanphamService.getSanPhamByMaSP(masp);

        if (txtSLNhap.getText().equalsIgnoreCase("")) {
            JOptionPane.showMessageDialog(this, "Chưa nhập số lượng nhập!");
            txtSLNhap.requestFocusInWindow();
        } else if (txtDGNhap.getText().equalsIgnoreCase("")) {
            JOptionPane.showMessageDialog(this, "Chưa nhập đơn giá nhập!");
            txtDGNhap.requestFocusInWindow();
        } else if (Integer.parseInt(JFramePhieuNhapAdd.SLNhap) <= 0) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập lại số lượng nhập!");
            txtSLNhap.requestFocusInWindow();
        } else if (Integer.parseInt(JFramePhieuNhapAdd.DGNhap) <= 0) {
            JOptionPane.showMessageDialog(this, "Vui lòng nhập lại đơn giá nhập!");
            txtDGNhap.requestFocusInWindow();
        } else {
            JFramePhieuNhapAdd.tableCTPN.setValueAt(Integer.parseInt(JFramePhieuNhapAdd.SLNhap), row, 4);
            JFramePhieuNhapAdd.tableCTPN.setValueAt(Integer.parseInt(JFramePhieuNhapAdd.DGNhap), row, 5);
            Float ThanhTien = Float.valueOf(JFramePhieuNhapAdd.SLNhap) * Float.parseFloat(JFramePhieuNhapAdd.DGNhap);
            JFramePhieuNhapAdd.tableCTPN.setValueAt(String.format("%.0f", ThanhTien), row, 6);

            //KetToan
            CodeBanHang cbh = new CodeBanHang();
            JFramePhieuNhapAdd.txtTongTien.setText(cbh.TinhTongTien(JFramePhieuNhapAdd.tableCTPN));
            this.setVisible(false);
        }
    }//GEN-LAST:event_jbtNextActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        int row = JFramePhieuNhapAdd.tableCTPN.getSelectedRow();
        txtSLNhap.setText(JFramePhieuNhapAdd.tableCTPN.getValueAt(row, 4).toString());
        txtDGNhap.setText(JFramePhieuNhapAdd.tableCTPN.getValueAt(row, 5).toString());
        this.getRootPane().setDefaultButton(jbtNext);
    }//GEN-LAST:event_formWindowOpened

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JSpinner jSpinner1;
    private javax.swing.JButton jbtClose;
    private javax.swing.JButton jbtNext;
    private javax.swing.JTextField txtDGNhap;
    private javax.swing.JTextField txtSLNhap;
    // End of variables declaration//GEN-END:variables
}
