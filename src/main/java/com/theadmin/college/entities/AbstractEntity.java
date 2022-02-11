package com.theadmin.college.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.util.StringUtils;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.theadmin.college.constants.AppConstants;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Setter;

@Data
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class AbstractEntity {

	@Id
    @Setter(AccessLevel.NONE)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @CreationTimestamp
    @Setter(AccessLevel.NONE)
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_at", nullable = false, updatable = false)
    private Date createdAt;

    @UpdateTimestamp
    @Setter(AccessLevel.NONE)
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "updated_at", nullable = false)
    private Date updatedAt;

    @CreatedBy
    @Setter(AccessLevel.PUBLIC)
    @Column(name = "created_by", nullable = false, updatable = false)
    private String createdBy;

    @JsonIgnore
    @LastModifiedBy
    @Setter(AccessLevel.PUBLIC)
    @Column(name = "updated_by", nullable = false)
    private String updatedBy;

    @PrePersist
    public void prePersist() {
        final String userName = AppConstants.SYSTEM;
        if (StringUtils.isEmpty(this.createdBy)) {
            this.createdBy = userName;
        }
        if (StringUtils.isEmpty(this.updatedBy)) {
            this.updatedBy = userName;
        }
    }

    @PreUpdate
    public void preUpdate() {
        if (StringUtils.isEmpty(this.updatedBy)) {
            this.updatedBy = AppConstants.SYSTEM;
        }
    }
}
