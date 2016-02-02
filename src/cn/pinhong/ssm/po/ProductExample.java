package cn.pinhong.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andPidIsNull() {
            addCriterion("pid is null");
            return (Criteria) this;
        }

        public Criteria andPidIsNotNull() {
            addCriterion("pid is not null");
            return (Criteria) this;
        }

        public Criteria andPidEqualTo(Integer value) {
            addCriterion("pid =", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotEqualTo(Integer value) {
            addCriterion("pid <>", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThan(Integer value) {
            addCriterion("pid >", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThanOrEqualTo(Integer value) {
            addCriterion("pid >=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThan(Integer value) {
            addCriterion("pid <", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThanOrEqualTo(Integer value) {
            addCriterion("pid <=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidIn(List<Integer> values) {
            addCriterion("pid in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotIn(List<Integer> values) {
            addCriterion("pid not in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidBetween(Integer value1, Integer value2) {
            addCriterion("pid between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotBetween(Integer value1, Integer value2) {
            addCriterion("pid not between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andPnameIsNull() {
            addCriterion("pname is null");
            return (Criteria) this;
        }

        public Criteria andPnameIsNotNull() {
            addCriterion("pname is not null");
            return (Criteria) this;
        }

        public Criteria andPnameEqualTo(String value) {
            addCriterion("pname =", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotEqualTo(String value) {
            addCriterion("pname <>", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameGreaterThan(String value) {
            addCriterion("pname >", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameGreaterThanOrEqualTo(String value) {
            addCriterion("pname >=", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLessThan(String value) {
            addCriterion("pname <", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLessThanOrEqualTo(String value) {
            addCriterion("pname <=", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameLike(String value) {
            addCriterion("pname like", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotLike(String value) {
            addCriterion("pname not like", value, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameIn(List<String> values) {
            addCriterion("pname in", values, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotIn(List<String> values) {
            addCriterion("pname not in", values, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameBetween(String value1, String value2) {
            addCriterion("pname between", value1, value2, "pname");
            return (Criteria) this;
        }

        public Criteria andPnameNotBetween(String value1, String value2) {
            addCriterion("pname not between", value1, value2, "pname");
            return (Criteria) this;
        }

        public Criteria andPbrandIsNull() {
            addCriterion("pbrand is null");
            return (Criteria) this;
        }

        public Criteria andPbrandIsNotNull() {
            addCriterion("pbrand is not null");
            return (Criteria) this;
        }

        public Criteria andPbrandEqualTo(String value) {
            addCriterion("pbrand =", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandNotEqualTo(String value) {
            addCriterion("pbrand <>", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandGreaterThan(String value) {
            addCriterion("pbrand >", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandGreaterThanOrEqualTo(String value) {
            addCriterion("pbrand >=", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandLessThan(String value) {
            addCriterion("pbrand <", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandLessThanOrEqualTo(String value) {
            addCriterion("pbrand <=", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandLike(String value) {
            addCriterion("pbrand like", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandNotLike(String value) {
            addCriterion("pbrand not like", value, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandIn(List<String> values) {
            addCriterion("pbrand in", values, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandNotIn(List<String> values) {
            addCriterion("pbrand not in", values, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandBetween(String value1, String value2) {
            addCriterion("pbrand between", value1, value2, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPbrandNotBetween(String value1, String value2) {
            addCriterion("pbrand not between", value1, value2, "pbrand");
            return (Criteria) this;
        }

        public Criteria andPmodelIsNull() {
            addCriterion("pmodel is null");
            return (Criteria) this;
        }

        public Criteria andPmodelIsNotNull() {
            addCriterion("pmodel is not null");
            return (Criteria) this;
        }

        public Criteria andPmodelEqualTo(String value) {
            addCriterion("pmodel =", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelNotEqualTo(String value) {
            addCriterion("pmodel <>", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelGreaterThan(String value) {
            addCriterion("pmodel >", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelGreaterThanOrEqualTo(String value) {
            addCriterion("pmodel >=", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelLessThan(String value) {
            addCriterion("pmodel <", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelLessThanOrEqualTo(String value) {
            addCriterion("pmodel <=", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelLike(String value) {
            addCriterion("pmodel like", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelNotLike(String value) {
            addCriterion("pmodel not like", value, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelIn(List<String> values) {
            addCriterion("pmodel in", values, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelNotIn(List<String> values) {
            addCriterion("pmodel not in", values, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelBetween(String value1, String value2) {
            addCriterion("pmodel between", value1, value2, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPmodelNotBetween(String value1, String value2) {
            addCriterion("pmodel not between", value1, value2, "pmodel");
            return (Criteria) this;
        }

        public Criteria andPpriceIsNull() {
            addCriterion("pprice is null");
            return (Criteria) this;
        }

        public Criteria andPpriceIsNotNull() {
            addCriterion("pprice is not null");
            return (Criteria) this;
        }

        public Criteria andPpriceEqualTo(Float value) {
            addCriterion("pprice =", value, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceNotEqualTo(Float value) {
            addCriterion("pprice <>", value, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceGreaterThan(Float value) {
            addCriterion("pprice >", value, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceGreaterThanOrEqualTo(Float value) {
            addCriterion("pprice >=", value, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceLessThan(Float value) {
            addCriterion("pprice <", value, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceLessThanOrEqualTo(Float value) {
            addCriterion("pprice <=", value, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceIn(List<Float> values) {
            addCriterion("pprice in", values, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceNotIn(List<Float> values) {
            addCriterion("pprice not in", values, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceBetween(Float value1, Float value2) {
            addCriterion("pprice between", value1, value2, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpriceNotBetween(Float value1, Float value2) {
            addCriterion("pprice not between", value1, value2, "pprice");
            return (Criteria) this;
        }

        public Criteria andPpictureIsNull() {
            addCriterion("ppicture is null");
            return (Criteria) this;
        }

        public Criteria andPpictureIsNotNull() {
            addCriterion("ppicture is not null");
            return (Criteria) this;
        }

        public Criteria andPpictureEqualTo(String value) {
            addCriterion("ppicture =", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureNotEqualTo(String value) {
            addCriterion("ppicture <>", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureGreaterThan(String value) {
            addCriterion("ppicture >", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureGreaterThanOrEqualTo(String value) {
            addCriterion("ppicture >=", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureLessThan(String value) {
            addCriterion("ppicture <", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureLessThanOrEqualTo(String value) {
            addCriterion("ppicture <=", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureLike(String value) {
            addCriterion("ppicture like", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureNotLike(String value) {
            addCriterion("ppicture not like", value, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureIn(List<String> values) {
            addCriterion("ppicture in", values, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureNotIn(List<String> values) {
            addCriterion("ppicture not in", values, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureBetween(String value1, String value2) {
            addCriterion("ppicture between", value1, value2, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPpictureNotBetween(String value1, String value2) {
            addCriterion("ppicture not between", value1, value2, "ppicture");
            return (Criteria) this;
        }

        public Criteria andPdesIsNull() {
            addCriterion("pdes is null");
            return (Criteria) this;
        }

        public Criteria andPdesIsNotNull() {
            addCriterion("pdes is not null");
            return (Criteria) this;
        }

        public Criteria andPdesEqualTo(String value) {
            addCriterion("pdes =", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesNotEqualTo(String value) {
            addCriterion("pdes <>", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesGreaterThan(String value) {
            addCriterion("pdes >", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesGreaterThanOrEqualTo(String value) {
            addCriterion("pdes >=", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesLessThan(String value) {
            addCriterion("pdes <", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesLessThanOrEqualTo(String value) {
            addCriterion("pdes <=", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesLike(String value) {
            addCriterion("pdes like", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesNotLike(String value) {
            addCriterion("pdes not like", value, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesIn(List<String> values) {
            addCriterion("pdes in", values, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesNotIn(List<String> values) {
            addCriterion("pdes not in", values, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesBetween(String value1, String value2) {
            addCriterion("pdes between", value1, value2, "pdes");
            return (Criteria) this;
        }

        public Criteria andPdesNotBetween(String value1, String value2) {
            addCriterion("pdes not between", value1, value2, "pdes");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}