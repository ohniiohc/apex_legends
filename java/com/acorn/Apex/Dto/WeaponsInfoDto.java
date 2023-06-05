package com.acorn.Apex.Dto;

public class WeaponsInfoDto {
    private String name;
    private String img;
    private String type;
    private String ammoimg;
    private String ammoname;
    private String modeimg;
    private String modetype;
    private String modeimg2;
    private String modetype2;
    private String attachment1;
    private String attachment2;
    private String attachment3;
    private String attachment4;
    private String attachment5;
    private String body;
    private String head;
    private String legs;
    private String rpm;
    private String dps;
    private String magazine;
    private String tac;
    private String full;

    public WeaponsInfoDto() {
        // 기본 생성자
    }

    
	public WeaponsInfoDto(String name, String img, String type, String ammoimg, String ammoname, String modeimg,
			String modetype, String modeimg2, String modetype2, String attachment1, String attachment2,
			String attachment3, String attachment4, String attachment5, String body, String head, String legs,
			String rpm, String dps, String magazine, String tac, String full) {
		super();
		this.name = name;
		this.img = img;
		this.type = type;
		this.ammoimg = ammoimg;
		this.ammoname = ammoname;
		this.modeimg = modeimg;
		this.modetype = modetype;
		this.modeimg2 = modeimg2;
		this.modetype2 = modetype2;
	this.attachment1 = attachment1;
	this.attachment2 = attachment2;
	this.attachment3 = attachment3;
	this.attachment4 = attachment4;
	this.attachment5 = attachment5;
		this.body = body;
		this.head = head;
		this.legs = legs;
		this.rpm = rpm;
		this.dps = dps;
		this.magazine = magazine;
		this.tac = tac;
		this.full = full;
	}


	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAmmoimg() {
        return ammoimg;
    }

    public void setAmmoimg(String ammoimg) {
        this.ammoimg = ammoimg;
    }

    public String getAmmoname() {
        return ammoname;
    }

    public void setAmmoname(String ammoname) {
        this.ammoname = ammoname;
    }

    public String getModeimg() {
        return modeimg;
    }

    public void setModeimg(String modeimg) {
        this.modeimg = modeimg;
    }

    public String getModetype() {
        return modetype;
    }

    public void setModetype(String modetype) {
        this.modetype = modetype;
    }

    public String getModeimg2() {
        return modeimg2;
    }

    public void setModeimg2(String modeimg2) {
        this.modeimg2 = modeimg2;
    }

    public String getModetype2() {
        return modetype2;
    }

    public void setModetype2(String modetype2) {
        this.modetype2 = modetype2;
    }

    public String getAttachment1() {
        return attachment1;
    }

    public void setAttachment1(String attachment1) {
    	attachment1 = attachment1;
    }

    public String getAttachment2() {
        return attachment2;
    }

    public void setAttachment2(String attachment2) {
    	attachment2 = attachment2;
    }

    public String getAttachment3() {
        return attachment3;
    }

    public void setAttachment3(String attachment3) {
    	attachment3 = attachment3;
    }

    public String getAttachment4() {
        return attachment4;
    }

    public void setAttachment4(String attachment4) {
    	attachment4 = attachment4;
    }

    public String getAttachment5() {
        return attachment5;
    }

    public void setAttachment5(String attachment5) {
    	attachment5 = attachment5;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getLegs() {
        return legs;
    }

    public void setLegs(String legs) {
        this.legs = legs;
    }

    public String getRpm() {
        return rpm;
    }

    public void setRpm(String rpm) {
        this.rpm = rpm;
    }

    public String getDps() {
        return dps;
    }

    public void setDps(String dps) {
        this.dps = dps;
    }

    public String getMagazine() {
        return magazine;
    }

    public void setMagazine(String magazine) {
        this.magazine = magazine;
    }

    public String getTac() {
        return tac;
    }

    public void setTac(String tac) {
        this.tac = tac;
    }

    public String getFull() {
        return full;
    }

    public void setFull(String full) {
        this.full = full;
    }

    @Override
    public String toString() {
        return "WeaponsInfoDto [name=" + name + ", img=" + img + ", type=" + type + ", ammoimg=" + ammoimg
                + ", ammoname=" + ammoname + ", modeimg=" + modeimg + ", modetype=" + modetype + ", modeimg2="
                + modeimg2 + ", modetype2=" + modetype2 + ", Attachment1=" + attachment1 + ", Attachment2="
                + attachment2 + ", Attachment3=" + attachment3 + ", Attachment4=" + attachment4 + ", Attachment5="
                + attachment5 + ", body=" + body + ", head=" + head + ", legs=" + legs + ", rpm=" + rpm + ", dps=" + dps
                + ", magazine=" + magazine + ", tac=" + tac + ", full=" + full + "]";
    }
}

	
	
	

