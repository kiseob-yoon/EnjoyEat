package com.ks.sb_project.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;
import java.text.DecimalFormat;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ToString
public class Food {
	private int num;
	private String menu;
	private BigDecimal price;
	private String item;
	private int id;

	public String getFormattedPrice() {
		return new DecimalFormat("#,###").format(this.price);
	}
}
