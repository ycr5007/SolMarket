package com.solmarket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.solmarket.dto.*;
import com.solmarket.mapper.AttachMapper;
import com.solmarket.mapper.MarketMapper;

@Service("service")
public class MarketServiceImpl implements MarketService {
	
	@Autowired
	public MarketMapper mapper;
	
	@Autowired
	public AttachMapper attachMapper;

	/* ====================== 장터 등록 ====================== */
	@Override
	public boolean registerMarket(MarketDTO insertDTO) {
		mapper.insert(insertDTO);
		if(insertDTO.getAttachList() == null || insertDTO.getAttachList().size() <= 0) {
			return false;
		}
		return true;
	}

	/* ================= 장터 참여 신청 목록 보기 ================= */
	@Override
	public List<ProductDTO> showReceive(int marketNo, Criteria criteria) {
		return mapper.selectReceive(marketNo, criteria);
	}
	
	@Override
	public int TotalReceive(int marketNo) {
		return mapper.selectTotalReceive(marketNo);
	}
	
	/* ================= 장터 참여 신청 상품 상세 ================= */
	@Override
	public ProductDTO showProduct(int marketNo, int productNo) {
		return mapper.selectProduct(marketNo, productNo);
	}

	/* ================= 장터 참여 승인 / 거부 ================== */
	@Override
	public boolean ProductAccept(int productNo) {
		return mapper.updateProductAccept(productNo) == 1 ? true : false;
	}

	@Override
	public boolean ProductDeny(int productNo) {
		return mapper.updateProductDeny(productNo) == 1 ? true : false;
	}

	/* ================= 장터 참여 승인 목록 보기 ================= */
	@Override
	public List<ProductDTO> showProductAcceptList(int marketNo, Criteria criteria) {
		return mapper.selectAcceptList(marketNo, criteria);
	}
	
	@Override
	public int TotalAccept(int marketNo) {
		return mapper.selectTotalAccept(marketNo);
	}

	/* ====================== 장터 오픈 ====================== */
	@Override
	public boolean MarketOn(int marketNo) {
		return mapper.updateMarketOn(marketNo) == 1 ? true : false;
	}

	@Override
	public boolean ProductOn(int productNo) {
		return mapper.updateProductOn(productNo) == 1 ? true : false;
	}

	/* ====================== 장터 위치 정보 불러오기 ====================== */
	@Override
	public String showMarketLoc(int marketNo) {
		return mapper.selectMarketLoc(marketNo);
	}
	
	/* ====================== 장터 공지 목록 보기 ====================== */
	@Override
	public List<NoticeDTO> showNoticeList(int marketNo, Criteria criteria) {
		return mapper.selectNoticeList(marketNo, criteria);
	}
	
	@Override
	public int TotalNotice(int marketNo) {
		return mapper.selectTotalNotice(marketNo);
	}

	/* ====================== 장터 공지 등록 ====================== */
	@Override
	public boolean registerNotice(NoticeDTO noticeDTO) {
		return mapper.insertNotice(noticeDTO) == 1 ? true : false;
	}
	
	/* ================== 장터 판매 상품 목록 보기 ================== */
	@Override
	public List<ProductDTO> ProductList(int marketNo, Criteria criteria) {
		return mapper.selectProductList(marketNo, criteria);
	}
	
	@Override
	public int TotalProduct(int marketNo) {
		return mapper.selectTotalProduct(marketNo);
	}

	/* ====================== 장터 종료 ====================== */
	@Override
	public boolean MarketOff(int marketNo) {
		return mapper.updateMarketOff(marketNo) == 1 ? true : false;
	}

	@Override
	public boolean ProductOff(int productNo) {
		return mapper.updateProductOff(productNo) == 1 ? true : false;
	}

	/* ====================== 첨부 파일 ====================== */
	@Override
	public AttachDTO MarketImg(int marketNo) {
		return attachMapper.selectMarketImg(marketNo);
	}
	
	@Override
	public AttachDTO ProductImg(int marketNo) {
		ProductDTO dto = new ProductDTO();
		dto.setMarketNo(marketNo);
		int productNo = dto.getProductNo();
		return attachMapper.selectProductImg(productNo);
	}

	/* ====================== 장터 후기 ====================== */
	@Override
	public List<ReviewDTO> ReviewList(int marketNo, Criteria criteria) {
		return mapper.selectReviewList(marketNo, criteria);
	}
	
	@Override
	public int TotalReview(int marketNo) {
		return mapper.selectTotalReview(marketNo);
	}
	
	@Override
	public double MarketRate(int marketNo) {
		return mapper.selectMarketRate(marketNo);
	}
	
	@Override
	public boolean findReveiwer(int marketNo, int userNo) {
		return mapper.selectReveiwer(marketNo, userNo) >= 0 ? true : false;
	}

	@Override
	public boolean registerReview(ReviewDTO reviewDTO) {
		if(reviewDTO.getReviewContent() == null) {
			return false;
		}
		return mapper.insertReview(reviewDTO) == 1 ? true : false;
	}
	
	@Override
	public boolean ReviewRate(ReviewDTO reviewDTO) {
		return mapper.updateReviewRate(reviewDTO) == 1 ? true : false;
	}

	/* ==================== 장터 후기 삭제 (운영자) ==================== */
	@Override
	public boolean deleteReview(int reviewNo) {
		return mapper.deleteReview(reviewNo) == 1 ? true : false;
	}

}