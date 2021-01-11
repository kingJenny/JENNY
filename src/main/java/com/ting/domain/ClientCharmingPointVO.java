package com.ting.domain;



public class ClientCharmingPointVO {
	private int clientCharmingPointIdx;
	private int clientIdx;
	private int charmingPointIdx;
	private CharmingPointVO charmingPoint;
	
	public CharmingPointVO getCharmingPoint() {
		return charmingPoint;
	}
	public void setCharmingPoint(CharmingPointVO charmingPoint) {
		this.charmingPoint = charmingPoint;
	}
	
	public int getClientCharmingPointIdx() {
		return clientCharmingPointIdx;
	}
	public void setClientCharmingPointIdx(int clientCharmingPointIdx) {
		this.clientCharmingPointIdx = clientCharmingPointIdx;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getCharmingPointIdx() {
		return charmingPointIdx;
	}
	public void setCharmingPointIdx(int charmingPointIdx) {
		this.charmingPointIdx = charmingPointIdx;
	}
	

	
	
}