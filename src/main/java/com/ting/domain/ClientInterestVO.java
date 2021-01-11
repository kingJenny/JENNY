package com.ting.domain;



public class ClientInterestVO {
	private int clientInterestIdx;
	private int clientIdx;
	private int interestIdx;
	private InterestVO interest;
	
	public InterestVO getInterest() {
		return interest;
	}
	public void setInterest(InterestVO interest) {
		this.interest = interest;
	}
	public int getClientInterestIdx() {
		return clientInterestIdx;
	}
	public void setClientInterestIdx(int clientInterestIdx) {
		this.clientInterestIdx = clientInterestIdx;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getInterestIdx() {
		return interestIdx;
	}
	public void setInterestIdx(int interestIdx) {
		this.interestIdx = interestIdx;
	}
	

	
}