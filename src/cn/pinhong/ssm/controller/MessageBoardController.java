package cn.pinhong.ssm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.pinhong.ssm.po.Message;
import cn.pinhong.ssm.po.Revert;
import cn.pinhong.ssm.service.MessageService;
import cn.pinhong.ssm.service.RevertService;
import cn.pinhong.ssm.util.PageBean;
import cn.pinhong.ssm.vo.RevertPageVo;
import cn.pinhong.ssm.vo.PageVo;

/**
 * 留言本相关页面
 * 
 * @author Pikapi
 *
 */
@Controller
@RequestMapping("/messageBoard")
public class MessageBoardController {

	@Resource
	private MessageService messageService;

	@Resource
	private RevertService revertService;

	@RequestMapping("/sMessageBoard")
	public String sMessageBoard() throws Exception {
		return "messageBoard/sMessageBoard";
	}

	@RequestMapping("/messageBoard_top")
	public String messageBoard_top() throws Exception {
		return "messageBoard/messageBoard_top";
	}

	@RequestMapping("/navigator")
	public String navigator() throws Exception {
		return "messageBoard/navigator";
	}

	@RequestMapping("/messageBoard_main")
	public String messageBoard_main(HttpServletRequest request, @RequestParam(defaultValue = "1") Integer pageNum) throws Exception {

		PageVo pageVo = new PageVo(pageNum, 10);
		PageBean<Message> pb = messageService.findByPage(pageVo);
		pb.setUrl(request.getRequestURI());
		request.setAttribute("pb", pb);
		return "messageBoard/messageBoard_main";
	}

	@RequestMapping("/rMessageBoard/{mid}")
	public String rMessageBoard(@PathVariable Integer mid) throws Exception {
		return "messageBoard/rMessageBoard";
	}

	@RequestMapping("/messageBoard_reply")
	public String messageBoard_reply(HttpServletRequest request,//
			@RequestParam(defaultValue = "1") Integer pageNum,//
			Integer mid) throws Exception {

		Message message = messageService.findById(mid);
		request.setAttribute("message", message);

		PageVo pageVo = new PageVo(pageNum, 5);
		RevertPageVo revertPageVo = new RevertPageVo();
		revertPageVo.setMid(mid);
		revertPageVo.setPageVo(pageVo);
		PageBean<Revert> pb = revertService.findByPage(revertPageVo);
		pb.setUrl(request.getRequestURI());
		request.setAttribute("pb", pb);

		return "messageBoard/messageBoard_reply";
	}

	@RequestMapping("/fastRevert")
	public String fastRevert(HttpServletRequest request,//
			Revert revert, Integer mid)//
			throws Exception {

		String rname = revert.getRname();
		String rcontent = revert.getRcontent();
		if (rname == null || rname.isEmpty() || rcontent == null || rcontent.isEmpty()) {
			return "messageBoard/suberror";
		}

		revertService.addRevert(revert);
		return "redirect:/messageBoard/rMessageBoard/" + mid;
	}

	@RequestMapping("/addMessageBoard")
	public String addMessageBoard() throws Exception {
		return "messageBoard/addMessageBoard";
	}

	@RequestMapping("/addMessage")
	public String addMessage() throws Exception {
		return "messageBoard/addMessage";
	}

	@RequestMapping("/messageAdd")
	public String messageAdd(Message message) throws Exception {

		String mname = message.getMname();
		String mtitle = message.getMtitle();
		String mcontent = message.getMcontent();
		if (mname == null || mname.isEmpty() || mtitle == null//
				|| mtitle.isEmpty() || mcontent == null || mcontent.isEmpty()) {
			return "messageBoard/suberror";
		}

		messageService.addMessage(message);
		return "messageBoard/sMessageBoard";
	}
}
