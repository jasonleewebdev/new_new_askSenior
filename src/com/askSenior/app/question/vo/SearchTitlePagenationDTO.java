package com.askSenior.app.question.vo;

import java.util.HashMap;

public class SearchTitlePagenationDTO {
	private HashMap<String, Integer> pageMap;
	private HashMap<String, String> searchTitleStore;
	public HashMap<String, Integer> getPageMap() {
		return pageMap;
	}
	public void setPageMap(HashMap<String, Integer> pageMap) {
		this.pageMap = pageMap;
	}
	public HashMap<String, String> getSearchTitleStore() {
		return searchTitleStore;
	}
	public void setSearchTitleStore(HashMap<String, String> searchTitleStore) {
		this.searchTitleStore = searchTitleStore;
	}
	@Override
	public String toString() {
		return "SearchTitlePagenationDTO [pageMap=" + pageMap + ", searchTitleStore=" + searchTitleStore + "]";
	}
	
	
	
}
