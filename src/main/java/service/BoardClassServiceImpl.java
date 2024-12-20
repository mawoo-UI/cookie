package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.Criteria;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.AttachMapper;
import mapper.BoardClassMapper;
import utils.MybatisInit;
import vo.BoardClass;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class BoardClassServiceImpl implements BoardClassService {
	@Getter
	private static BoardClassService instance = new BoardClassServiceImpl();
	
	@Override
	public List<BoardClass> listAll() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public BoardClass findBy(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			
			BoardClass boardClass = mapper.selectOne(cbno);
			boardClass.setAttachs(attachMapper.selectClassList(cbno));
			return boardClass;
		}
	}

	@Override
	public BoardClass view(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			BoardClass boardClass = findBy(cbno);
			mapper.increaseViewCount(cbno);
			boardClass.setAttachs(attachMapper.selectClassList(cbno));
			return boardClass;
		}
	}

	@Override
	public int write(BoardClass boardClass) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			// cbno null
			mapper.insert(boardClass);
			// cbno not null
			
			boardClass.getAttachs().forEach(a -> {
				a.setCbno(boardClass.getCbno());
				attachMapper.insert(a);
			});
			
			return 1;
		}
	}

	@Override
	public int remove(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.delete(cbno);
		}
	}

	@Override
	public int modify(BoardClass boardClass) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.update(boardClass);
		}
	}

	@Override
	public List<BoardClass> listShow(Criteria cri) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.showList(cri);
		}
	}

	@Override
	public List<BoardClass> listTrend() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			
			List<BoardClass> list = mapper.trendList();
			list.forEach(b -> {
				b.setAttachs(attachMapper.selectClassList(b.getCbno()));
			});
			
			return list;
		}
	}

	@Override
	public List<BoardClass> sortCbno(Criteria cri, Long cbno, Long viewCount) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			List<BoardClass> list = mapper.selectCbnoDesc(cri, cbno, viewCount);
			return list;
			
		}
	}
	
	public static void main(String[] args) {
		BoardClassService service = new BoardClassServiceImpl();
		System.out.println(service.listTrend());
	} 

}
