package com.askSenior.app.question.vo;

public class CategoryPagenationDTO {
	private int rowCount;
 	private int startRow;
 	private String searchCategory;
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public String getSearchCategory() {
		return searchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}
	@Override
	public String toString() {
		return "CategoryPagenationDTO [rowCount=" + rowCount + ", startRow=" + startRow + ", searchCategory="
				+ searchCategory + "]";
	}
 	
 	
}
