package com.longIt.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name="t_equipment")
public class Equipment implements Serializable {

    private Integer id;
    //实验室名称及型号
    private String xh;
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
    //是否审核（0未审核 1审核）
    private Integer isSh;
    private Integer isFw;
    private String ht;
    private Date fwTime;
    //是否保修
    private Integer isBx;
    //保修log
    private Integer bxLogid;
    //借用
    private Integer jyId;
    //是否借用
    private Integer isJy;
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
    @Column(name="isSh", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
    public Integer getIsSh() {
		return isSh;
	}

	public void setIsSh(Integer isSh) {
		this.isSh = isSh;
	}

	public void setId(Integer id) {
        this.id = id;
    }

    public String getXh() {
        return xh;
    }

    public void setXh(String xh) {
        this.xh = xh;
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

    @Column(name="isJy", nullable=false, columnDefinition="int default 0", updatable = true, insertable = false)
    public Integer getIsJy() {
        return isJy;
    }

    public void setIsJy(Integer isJy) {
        this.isJy = isJy;
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
