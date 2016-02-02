package cn.pinhong.ssm.mapper;

import cn.pinhong.ssm.po.Revert;
import cn.pinhong.ssm.po.RevertExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RevertMapper {
    int countByExample(RevertExample example);

    int deleteByExample(RevertExample example);

    int deleteByPrimaryKey(Integer rid);

    int insert(Revert record);

    int insertSelective(Revert record);

    List<Revert> selectByExample(RevertExample example);

    Revert selectByPrimaryKey(Integer rid);

    int updateByExampleSelective(@Param("record") Revert record, @Param("example") RevertExample example);

    int updateByExample(@Param("record") Revert record, @Param("example") RevertExample example);

    int updateByPrimaryKeySelective(Revert record);

    int updateByPrimaryKey(Revert record);
}