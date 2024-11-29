package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;
import com.google.gson.internal.LinkedTreeMap;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.AjeMapper;
import mapper.BoardCategoryMapper;
import utils.MybatisInit;
import vo.Ajegag;

@Data
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class AjeServiceImpl implements AjeService{
	@Getter
	private static AjeService instance = new AjeServiceImpl();
	@Override
	public int register(Ajegag ajegag) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			AjeMapper mapper = session.getMapper(AjeMapper.class);
			return mapper.insert(ajegag);
		}
	}

	@Override
	public Ajegag findBy(Integer ajno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			AjeMapper mapper = session.getMapper(AjeMapper.class);
			return mapper.selectOne(ajno);
		}
	}

	@Override
	public Ajegag findRand() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			AjeMapper mapper = session.getMapper(AjeMapper.class);
			return mapper.selectRand();
		}
	}
	
	public static void main(String[] args) {
		System.out.println(AjeServiceImpl.getInstance().findRand());
	}
	
}
