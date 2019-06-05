package com.javawebspringboot.education.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import javax.persistence.CascadeType;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "subject")

public class Subject implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id_subject")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idSubject;

	@Column(name = "name_subject")
	private String nameSubject;

	@Column(name = "code_subject")
	private String codeSubject;

	@Column(name = "start_time")
	private Date startTime;

	@Column(name = "end_time")
	private Date endTime;

	@Column(name = "number_of_credit")
	private Integer numberOfCredits;

	@ManyToMany(mappedBy = "subjects")
	private List<User> userList;

	@OneToMany(mappedBy = "subject", fetch = FetchType.LAZY)
	private List<CoursesGoal> coursesGoalList;

	@OneToMany(mappedBy = "subject", fetch = FetchType.LAZY)
	private List<ScoresTable> scoresList;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "subject", fetch = FetchType.LAZY)
	private List<UserSubjectCoursesGoal> userSubjectCoursesgoalList;

	@OneToMany(mappedBy = "subject", fetch = FetchType.LAZY)
	private List<Answer> answerList;

	public Subject() {
		super();
	}

	public Subject(String nameSubject, String codeSubject, Date startTime, Date endTime, Integer numberOfCredits,
			List<User> userList, List<CoursesGoal> coursesGoalList, List<ScoresTable> scoresList,
			List<UserSubjectCoursesGoal> userSubjectCoursesgoalList, List<Answer> answerList) {
		super();
		this.nameSubject = nameSubject;
		this.codeSubject = codeSubject;
		this.startTime = startTime;
		this.endTime = endTime;
		this.numberOfCredits = numberOfCredits;
		this.userList = userList;
		this.coursesGoalList = coursesGoalList;
		this.scoresList = scoresList;
		this.userSubjectCoursesgoalList = userSubjectCoursesgoalList;
		this.answerList = answerList;
	}

	public Integer getIdSubject() {
		return idSubject;
	}

	public void setIdSubject(Integer idSubject) {
		this.idSubject = idSubject;
	}

	public String getNameSubject() {
		return nameSubject;
	}

	public void setNameSubject(String nameSubject) {
		this.nameSubject = nameSubject;
	}

	public String getCodeSubject() {
		return codeSubject;
	}

	public void setCodeSubject(String codeSubject) {
		this.codeSubject = codeSubject;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Integer getNumberOfCredits() {
		return numberOfCredits;
	}

	public void setNumberOfCredits(Integer numberOfCredits) {
		this.numberOfCredits = numberOfCredits;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public List<CoursesGoal> getCoursesGoalList() {
		return coursesGoalList;
	}

	public void setCoursesGoalList(List<CoursesGoal> coursesGoalList) {
		this.coursesGoalList = coursesGoalList;
	}

	public List<ScoresTable> getScoresList() {
		return scoresList;
	}

	public void setScoresList(List<ScoresTable> scoresList) {
		this.scoresList = scoresList;
	}

	public List<UserSubjectCoursesGoal> getUserSubjectCoursesgoalList() {
		return userSubjectCoursesgoalList;
	}

	public void setUserSubjectCoursesgoalList(List<UserSubjectCoursesGoal> userSubjectCoursesgoalList) {
		this.userSubjectCoursesgoalList = userSubjectCoursesgoalList;
	}

	public List<Answer> getAnswerList() {
		return answerList;
	}

	public void setAnswerList(List<Answer> answerList) {
		this.answerList = answerList;
	}

}
