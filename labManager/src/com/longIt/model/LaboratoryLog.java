package com.longIt.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="t_LaboratoryLog")
public class LaboratoryLog implements Serializable {

    private Integer id;
    //状态0可预约，1已预约，2待审核预约，3待审核取消预约
    private Integer state;
    //预约人
    private User user;
    //预约时间
    private Date time;
    //结束预约时间
    private Date endTime;
    //结束预约操作人
    private User qx;
    private Laboratory laboratory;

    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }
    @Column(name="state", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	@ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name="user_id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name="laboratory_id")
    public Laboratory getLaboratory() {
        return laboratory;
    }

    public void setLaboratory(Laboratory laboratory) {
        this.laboratory = laboratory;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name="userQx_id")
    public User getQx() {
        return qx;
    }

    public void setQx(User qx) {
        this.qx = qx;
    }

}
