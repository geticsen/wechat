package cn;

public class Question {
	public int tid;
	public String question;
	public String A;
	public String B;
	public String C;
	public String D;
	public String anwser;
	public Question() {
		
	}
	public Question(int tid,String question, String A, String B, String C, String D,String anwser) {
		this.tid = tid;
		this.question = question;
		this.A = A;
		this.B = B;
		this.C = C;
		this.D = D;
		this.anwser = anwser;
	}
}
