package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.MemberMapper;
import utils.MybatisInit;
import vo.Member;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class MemberServiceImpl implements MemberService{
	@Getter
	private static MemberService instance = new MemberServiceImpl();  
	
	@Override
	public int register(Member member) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			return mapper.insert(member);
		}
	}

	@Override
	public Member findBy(String id) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession()) {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			return mapper.selectOne(id);
		}
	}

	@Override
	public boolean login(Member member) {
		Member m = findBy(member.getId());
		return m != null && m.getPw().equals(member.getPw());
	}

	@Override
	public List<Member> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modify(Member member) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean validateMember(Member member) {
		// TODO Auto-generated method stub
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession()) {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			return mapper.selectValid(member) == null;
		}
	}
	
	public static void main(String[] args) {
		System.out.println(MemberServiceImpl.getInstance()
				.validateMember(Member.builder().nick("왕").build()));
	}
	
	
	
}
