package model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by DengrongGuan on 2016/7/4.
 * - 自增ID
 - 外关联：物料编号
 - 调度类型（入库/出库）
 - 调度数量
 - 调度时间
 - 外关联：负责人（用户ID）
 */
@Entity(name = "stock_dispatch")
public class StockDispatch implements Serializable{
    private int id;
    private int materialId;
    private DispatchType type = DispatchType.DEFAULT;
    private double quantity;
    private Timestamp timestamp = new Timestamp(new Date().getTime());
    private int userId;

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

    @Column(name = "material_id",nullable = false)
    public int getMaterialId() {
        return materialId;
    }

    public void setMaterialId(int materialId) {
        this.materialId = materialId;
    }

    @Column(name = "type",nullable = false)
    @Enumerated(EnumType.STRING)
    public DispatchType getType() {
        return type;
    }

    public void setType(DispatchType type) {
        this.type = type;
    }

    @Column(name = "quantity",nullable = false)
    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    @Column(name = "timestamp", nullable = false)
    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
