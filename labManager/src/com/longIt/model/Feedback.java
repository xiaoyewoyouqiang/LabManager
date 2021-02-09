package com.longIt.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="t_Feedback")
public class Feedback implements Serializable {

    /**
	 * 设备故障反馈
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
    //楼层
    private String floor;
    //房间号
    private String room;
    //设备编号
    private String number;
    //故障描述 
    private String description;
    //申报时间
    private Date time;
    //是否被删除，默认为0，未被删除
    private Integer isDelete;
    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Column(name="isDelete", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

    
    
}
