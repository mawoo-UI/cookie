package servlet.oneday;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ClassCurriculumService;
import service.ClassCurriculumServiceImpl;
import service.MyClassService;
import service.MyClassServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;
import vo.Attach;
import vo.ClassCurriculum;
import vo.Member;
import vo.MyClass;
import vo.Review;

@WebServlet("/oneday/writereview")
public class WriteReview extends HttpServlet{
	private ClassCurriculumService curriculumService = ClassCurriculumServiceImpl.getInstance();
	private MyClassService myService =  MyClassServiceImpl.getInstance();
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Object memberObj = req.getSession().getAttribute("member");
		
		if(memberObj == null) {
			Commons.printMsg("로그인 후 이용하실 수 있습니다.", "/cookie/member/signin", resp);
			return;
		}
		
		Member m = (Member) memberObj;
		List<MyClass> myList = myService.list(m.getId());
		List<ClassCurriculum> curriList = new ArrayList<ClassCurriculum>();
		for(int i = 0; i < myList.size(); i++) {
			curriList.add(curriculumService.findBy(myList.get(i).getCcno()));
		}
		
		req.setAttribute("curriList", curriList);
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/write-review.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Review review = Commons.param(req, Review.class);
		
		List<Attach> attachs = new ArrayList<Attach>();
		
		String[] uuids = req.getParameterValues("uuid");
		String[] origins = req.getParameterValues("origin");
		String[] paths = req.getParameterValues("path");
		String[] images = req.getParameterValues("image");
		
		if(uuids != null) {
			for (int i = 0; i < uuids.length;  i++) {
				Attach a = Attach.builder()
					.uuid(uuids[i])
					.origin(origins[i])
					.image(images[i].equals("true"))
					.path(paths[i])
					.build();
				attachs.add(a);
			}
		}
		review.setAttachs(attachs);
		reviewService.write(review);
		
		Long cbno = Long.valueOf(curriculumService.findBy(review.getCcno()).getCbno());
		
		resp.sendRedirect("view?cbno=" + cbno);
	}
	
}
