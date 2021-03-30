package com.longIt.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="t_equipment")
public class Equipment implements Serializable {

    private Integer id;
    //实验室设备名称
    private String name;
    //设备的实验室名称
    private String address;
    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	//设备价格
    private Double jg;
    //设备制造商
    private String zzs;
    //设备序列号
    private String sbxlh;
    //实验室备注
    private String bz;
    private String photo;
    private Laboratory laboratory;
    //0未删除，1已删除
    private Integer isDelete;
    //状态0可借用，1已借用，2待审核借用，3待审核归还
    private Integer state;
    private Integer isFw;
    private String ht;
    private Date fwTime;
    //是否保修
    private Integer isBx;
    //保修log
    private Integer bxLogid;
    //借用
    private Integer jyId;
    //服务时间
    private Date time;
    private User jyUser;
    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    @Column(name="isDelete", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

	public void setId(Integer id) {
        this.id = id;
    }


    public Double getJg() {
        return jg;
    }

    public void setJg(Double jg) {
        this.jg = jg;
    }

    public String getZzs() {
        return zzs;
    }

    public void setZzs(String zzs) {
        this.zzs = zzs;
    }

    public String getSbxlh() {
        return sbxlh;
    }

    public void setSbxlh(String sbxlh) {
        this.sbxlh = sbxlh;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name="Laboratory_id")
    public Laboratory getLaboratory() {
        return laboratory;
    }

    public void setLaboratory(Laboratory laboratory) {
        this.laboratory = laboratory;
    }

    @Column(name="isBx", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
    public Integer getIsBx() {
        return isBx;
    }

    public void setIsBx(Integer isBx) {
        this.isBx = isBx;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getHt() {
        return ht;
    }

    public void setHt(String ht) {
        this.ht = ht;
    }

    public Date getFwTime() {
        return fwTime;
    }

    public void setFwTime(Date fwTime) {
        this.fwTime = fwTime;
    }

    @Column(name="isFw", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
    public Integer getIsFw() {
        return isFw;
    }

    public void setIsFw(Integer isFw) {
        this.isFw = isFw;
    }
    @Column(name="state", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
    public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public Integer getBxLogid() {
        return bxLogid;
    }

    public void setBxLogid(Integer bxLogid) {
        this.bxLogid = bxLogid;
    }

    public Integer getJyId() {
        return jyId;
    }

    public void setJyId(Integer jyId) {
        this.jyId = jyId;
    }

    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name="JyUser_id")
    public User getJyUser() {
        return jyUser;
    }

    public void setJyUser(User jyUser) {
        this.jyUser = jyUser;
    }
}
