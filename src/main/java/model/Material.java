package model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by DengrongGuan on 2016/7/4.
 *
 - 自增ID
 - 物料名称
 - 物料编号
 - 物料成分
 - 物料单价
 - 单位
 - 类型（面料/辅料）
 - 入库时间
 - 颜色说明
 - 门幅
 - 出量 ?
 - 外关联：供应商编号
 - 仓储位置
 - 库存数量
 */

@Entity(name = "material")
public class Material implements Serializable{
    protected int id;
    protected String name;
    protected String number;
    protected String component;
    protected double unitprice=0;
    protected String measurement;
    protected MaterialType type = MaterialType.DEFAULT;
    protected Timestamp timestamp = new Timestamp(new Date().getTime());
    protected String colorExplain;
    protected double width=0;
    protected double outAmount=0;
    protected int supplierId=0;
    protected String storagePos;
    protected double inventoryAmount= 0;

    @Column(name = "time",nullable = false)
    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    @Column(name = "inventory_amount",nullable = false)
    public double getInventoryAmount() {
        return inventoryAmount;
    }

    public void setInventoryAmount(double inventoryAmount) {
        this.inventoryAmount = inventoryAmount;
    }

    @Column(name = "color_explain")
    public String getColorExplain() {
        return colorExplain;
    }

    public void setColorExplain(String colorExplain) {
        this.colorExplain = colorExplain;
    }

    @Column(name = "out_amount")
    public double getOutAmount() {
        return outAmount;
    }

    public void setOutAmount(double outAmount) {
        this.outAmount = outAmount;
    }

    @Column(name = "supllier_id",nullable = false)
    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    @Column(name = "storage_pos",nullable = false)
    public String getStoragePos() {
        return storagePos;
    }

    public void setStoragePos(String storagePos) {
        this.storagePos = storagePos;
    }

    @Id
    @Column(name="id",length = 32,nullable = true)
    @GeneratedValue(generator = "generator")
    @GenericGenerator(name = "generator",strategy = "increment")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "name",nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "number",nullable = false)
    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    @Column(name = "component",nullable = false)
    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component;
    }

    @Column(name = "unitprice",nullable = false)
    public double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(double unitprice) {
        this.unitprice = unitprice;
    }

    @Column(name = "measurement",nullable = false)
    public String getMeasurement() {
        return measurement;
    }

    public void setMeasurement(String measurement) {
        this.measurement = measurement;
    }

    @Column(name = "type",nullable = false)
    @Enumerated(EnumType.STRING)
    public MaterialType getType() {
        return type;
    }

    public void setType(MaterialType type) {
        this.type = type;
    }

    @Column(name = "width",nullable = false)
    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }


}
