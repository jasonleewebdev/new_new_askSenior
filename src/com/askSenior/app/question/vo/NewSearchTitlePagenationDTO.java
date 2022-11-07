package com.askSenior.app.question.vo;

public class NewSearchTitlePagenationDTO {
	 	private int rowCount;
	 	private int startRow;
	 	private String searchTitle;
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
		public String getSearchTitle() {
			return searchTitle;
		}
		public void setSearchTitle(String searchTitle) {
			this.searchTitle = searchTitle;
		}
		@Override
		public String toString() {
			return "newSearchTitlePagenationDTO [rowCount=" + rowCount + ", startRow=" + startRow + ", searchTitle="
					+ searchTitle + "]";
		}
	 	
	 	
}
