package com.web.exam.domain; /*
                             lux的JAVA学习日记
                             */

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Account {
  private String id;
  private String accountid;
  private String password;
  private String name;
  private String gender;
  private String phone;
  private String address;
  private String identity;
  private String profession;

  @Id
  @Column(name = "id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  @Basic
  @Column(name = "accountid")
  public String getAccountid() {
    return accountid;
  }

  public void setAccountid(String accountid) {
    this.accountid = accountid;
  }

  @Basic
  @Column(name = "password")
  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Basic
  @Column(name = "name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Basic
  @Column(name = "gender")
  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  @Basic
  @Column(name = "phone")
  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  @Basic
  @Column(name = "address")
  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  @Basic
  @Column(name = "identity")
  public String getIdentity() {
    return identity;
  }

  public void setIdentity(String identity) {
    this.identity = identity;
  }

  @Basic
  @Column(name = "profession")
  public String getProfession() {
    return profession;
  }

  public void setProfession(String profession) {
    this.profession = profession;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Account account = (Account) o;
    return Objects.equals(id, account.id)
        && Objects.equals(accountid, account.accountid)
        && Objects.equals(password, account.password)
        && Objects.equals(name, account.name)
        && Objects.equals(gender, account.gender)
        && Objects.equals(phone, account.phone)
        && Objects.equals(address, account.address)
        && Objects.equals(identity, account.identity)
        && Objects.equals(profession, account.profession);
  }

  @Override
  public int hashCode() {
    return Objects.hash(
        id, accountid, password, name, gender, phone, address, identity, profession);
  }
}
