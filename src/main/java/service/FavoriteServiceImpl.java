package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.FavoriteMapper;
import utils.MybatisInit;
import vo.Favorite;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class FavoriteServiceImpl implements FavoriteService {
	@Getter
	private static FavoriteService instance = new FavoriteServiceImpl();
	
	@Override
	public List<Favorite> listById(String memberId) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			FavoriteMapper mapper = session.getMapper(FavoriteMapper.class);
			return mapper.selectListById(memberId);
		}
	}

	@Override
	public List<Favorite> listByCcno(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			FavoriteMapper mapper = session.getMapper(FavoriteMapper.class);
			return mapper.selectListByCcno(cbno);
		}
	}

	@Override
	public Favorite findBy(Long cbno, String memberId) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			FavoriteMapper mapper = session.getMapper(FavoriteMapper.class);
			return mapper.selectOne(cbno, memberId);
		}
	}

	@Override
	public int write(Favorite favorite) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			FavoriteMapper mapper = session.getMapper(FavoriteMapper.class);
			return mapper.insert(favorite);
		}
	}

	@Override
	public int remove(Long cbno, String memberId) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			FavoriteMapper mapper = session.getMapper(FavoriteMapper.class);
			return mapper.delete(cbno, memberId);
		}
	}

}