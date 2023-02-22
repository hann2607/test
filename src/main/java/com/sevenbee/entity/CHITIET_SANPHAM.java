package com.sevenbee.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "CHITIET_SANPHAM")
public class CHITIET_SANPHAM {
	@Id
	String CTSP_MA;
	String CTSP_MoTa;
	String Kich_Thuoc, CTSP_Mau, CTSP_ThongTinThem;
	@OneToOne(mappedBy = "ct_sanpham")
	SANPHAM sanpham;
	
}
