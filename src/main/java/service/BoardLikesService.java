package service;

import java.util.List;

import dto.Criteria;
import vo.Board;
import vo.BoardLikes;

public interface BoardLikesService {
	BoardLikes findBy(Long pno, String id);
	
}
