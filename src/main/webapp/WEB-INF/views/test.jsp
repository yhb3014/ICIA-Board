<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/css/ec/mode/easiest/common.css" media="all" charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/calendars/duetds/css/default.css" />
    <link rel="stylesheet" type="text/css" href="//img.echosting.cafe24.com/calendars/duetds/css/themes/ec-date-picker.css" />
  </head>
  <body>
    <form name="frm" method="post" action="test">
        <input type="hidden" name="realclick" value="F" />
        <input type="hidden" id="tabclick" name="tabclick" value="F" />
        <input type="hidden" id="queryString" name="queryString" value="" />
        <input type="hidden" id="listName" value="order_list" />
        <input type="hidden" id="isSDE" value="T" />
        <input type="hidden" id="bNaviHide" name="navi_hide" value="" />
        <input type="hidden" id="bIsPinpointSearch" name="bIsPinpointSearch" value="" />
        <input type="hidden" id="bResetSearchOption" name="bResetSearchOption" value="" />
        <!-- content -->
        <div id="content">
            <!-- 참고 : Frame 구분 시 컨텐츠 시작 -->
            <div class="headingArea">
                <div class="mTitle">
                                                <h1>전체주문목록</h1>
                                                        <span class="cManual eSmartMode" code="OD.AO"></span>
                                                                    </div>
                <div class="mBreadcrumb">
                </div>
            </div>

                            <script type="text/javascript" src="/admin/js/orders/order.search.js?v=19.431.4.20211209.RLS" ></script>
<script type="text/javascript" src="/admin/js/jquery.12r.calendar.js?v=19.431.4.20211209.RLS" ></script>
<script type="text/javascript" src="//img.echosting.cafe24.com/js/calendar/dateUtil.js" charset="utf-8" ></script>
<script type="text/javascript" src="/admin/js/mode/mode.util.js?v=19.431.4.20211209.RLS" ></script>
<script type="text/javascript" src="/ind-script/moment.php?convert=T&vs=19.431.4.20211209.RLS"></script>
<input type="hidden" id="listShopNo" value="1" />
<input type="hidden" id="isUpgradeAfter" value="T" />
<input type="hidden" id="isSDE" value="T" />
<input type="hidden" id="searchPage" name="searchPage" value="AllOrder" />
<input type="hidden" id="menu_no" name="menu_no" value="74" />
<input type="hidden" id="sSearchDetailView" name="sSearchDetailView" value="F" />
<input type="hidden" id="bIsNewProduct" value="1" />
<input type="hidden" id="bOneYearSearchExcept" value="" />
<input type="hidden" id="bOrderPrivOrderSearch" value="T" />
<input type="hidden" id="searched_shop_no" name="searched_shop_no" value="1" />
<input type="hidden" id="sIsBusanCallCenter" name="sIsBusanCallCenter" value="" />
<input type="hidden" id="sOrderSearchLimit" name="sOrderSearchLimit" value="F" />
<input type="hidden" id="sOrderSearchLimitWhole" name="sOrderSearchLimitWhole" value="F" />
<input type="hidden" id="sIsOrderSearchNotAllowed" name="sIsOrderSearchNotAllowed" value="F" />
<input type="hidden" id="sIsSearchWordLength" name="sIsSearchWordLength" value="" />
<input type="hidden" id="searchTimeUsed" name="searchTimeUsed" value="F" />
<input type="hidden" id="bExistColdData" name="bExistColdData" value="" />
<div class="optionArea " id="QA_deposit1">

           <div class="mCtrl typeHeader"  style="display: none;" >
        <div class="gRight">
        <a href="#none" id="eSaveSearchForm" class="btnCtrl"><span>검색조회 항목 저장</span></a>
            <div class="cTip" code="OR.SM.AO.30"></div>
        </div>
    </div>
    
            <div class="mOption">
        <table border="1" summary="">
        <caption>주문 검색</caption>
        <colgroup>
            <col style="width:170px;" />
            <col style="width:600px;" />
            <col style="width:170px;" />
            <col style="width:auto;" />
        </colgroup>
        <tbody>
                                            
                                            <tr>
                <th scope="row">
                검색어
                                                <div class="cTip" code="OR.SM.AO.40"></div>
                                        </th>
                <td colspan="3">
                    <div id="mainSearch">
                                        <div >
                        <select class="fSelect" name=MSK[] style="width:163px;">
                                                        <option value="choice" >-검색항목선택-</option>
                                                        <option value="order_id" selected>주문번호</option>
                                                        <option value="ord_item_code" >품목별 주문번호</option>
                                                        <option value="invoice_no" >운송장번호</option>
                                                        <option value="line1" >-----------------</option>
                                                        <option value="o_name" >주문자명</option>
                                                        <option value="member_id" >주문자 아이디</option>
                                                        <option value="member_email" >회원 이메일</option>
                                                        <option value="o_email" >주문서 이메일</option>
                                                        <option value="o_phone2" >주문자 휴대전화</option>
                                                        <option value="o_phone1" >주문자 일반전화</option>
                                                    </select>
                        <input type="text" class="fText sBaseSearchBox" name=MSV[] id="sBaseSearchBox" style="width:400px;" />
                    </div>
                                        </div>
                </td>
            </tr>
                                            <tr>
                <th scope="row">
                    상품
                    <div class="cTip" code="OR.SM.AO.50"></div>
                </th>
                <td colspan="3">
                                            <select class="fSelect" id="eProductSearchType" name="product_search_type" style="width:110px;">
                                                                        <option value="product_name" selected="selected">상품명</option>
                                                <option value="product_code" >상품코드</option>
                                                <option value="item_code" >품목코드</option>
                                                <option value="product_tag" >상품태그</option>
                                                <option value="manufacturer_name" >제조사</option>
                                                <option value="supplier_name" >공급사</option>
                                                                    </select>
                    <input type="text" id="eOrderProductText" name="order_product_text" class="fText" style="width:490px;" value=""/>
                    <input type="hidden" name="order_product_no" id="eOrderProductNo" value="">
                    <input type="hidden" name="find_option" value="product_no">
                                        </td>
            </tr>
                                            
                                        
                            <tr  style="display: none;" >
                    <th scope="row">희망배송업체/방식
                                                        <div class="cTip" code="OR.SM.AO.60"></div>
                                                </th>
                <td colspan="3">
                    <select name="HopeShipCompanyId" class="fSelect">
                            <option value="all">- 희망배송업체 -</option>
                                                <option value="3" >우체국택배</option>
                                                <option value="4" >CJ대한통운</option>
                                            </select>
                </td>
            </tr>
            

                                                                    <tr>
                        <th scope="row">주문상태</th>
                        <td colspan=3 id="orderStatusCheck">
                                                                                            <label class="gLabel" ><input type="checkbox" name="orderStatus[]" class="fChk" value="all" checked='checked'> 전체</label>
                                                            <label class="gLabel"  style="display: none;" ><input type="checkbox" name="orderStatus[]" class="fChk" value="N10" > 상품준비중</label>
                                                            <label class="gLabel" ><input type="checkbox" name="orderStatus[]" class="fChk" value="N20" > 배송준비중</label>
                                                            <label class="gLabel" ><input type="checkbox" name="orderStatus[]" class="fChk" value="N22" > 배송보류</label>
                                                            <label class="gLabel" ><input type="checkbox" name="orderStatus[]" class="fChk" value="N21" > 배송대기</label>
                                                            <label class="gLabel" ><input type="checkbox" name="orderStatus[]" class="fChk" value="N30" > 배송중</label>
                                                            <label class="gLabel" ><input type="checkbox" name="orderStatus[]" class="fChk" value="N40" > 배송완료</label>
                                                                                                                        </td>
                    </tr>

                                            <tr>
                                            </tbody>
        </table>
    </div>
                    <div class="mOption gDivision" >
    </div>

    <div class="mOptionToogle"  style="display: none;" >
        <div class="ctrl">
            <span><button type="button" class="eOrdToogle">상세검색 열기</button></span>
        </div>
    </div>
    
    <div class="mButton gCenter">
    <a href="#none" id="search_button" class="btnSearch"><span>검색</span></a>
    <a href="#none" id="eBtnInit" class="btnSearch reset"><span>초기화</span></a>
        <div id="ordProgress" class="mLoading">
        <p>처리중입니다. 잠시만 기다려 주세요.</p>
                            <img src="//img.echosting.cafe24.com/ec/mode/influencer/common/ico_loading.gif" alt="" />
                        </div>
    </div>

    <input type="hidden" name="main_search" id="main_search" value="">
</div>

<!-- 참고 : 판매처 검색 기준 선택 -->
<div id="ordOption1" class="mLayer gMedium">
</div><!-- //참고 -->

<!-- 참고 : 주문 유입경로 상세검색 -->
<div id="ordOption2" class="mLayer gMedium">
</div><!-- //참고 -->

<!-- 참고 : 주문별 품목수 검색 설정 -->
<div id="ordOption3" class="mLayer gMedium">
</div><!-- //참고 -->

<!-- 참고 : 주문경로 상세검색 -->
<div id="layerOrderPath" class="mLayer gSmall" style="opacity: 1; top: 590px; left: 532px; margin-left: 0px; display: none;">
</div><!-- //참고 : 주문경로 상세검색 -->

<!-- 참고 : 결제업체 상세검색 -->
<div id="layerCompany" class="mLayer gSmall" style="display: none; opacity: 1;">
</div><!-- //참고 : 결제업체 상세검색 -->

<!-- 참고 : 결제수단 상세검색 -->
<div id="layerMethod" class="mLayer gSmall" style="display: none; opacity: 1;">
</div><!-- //참고 : 결제수단 상세검색 -->

            <div class="section" id="QA_inquiry2">
                <div class="mTitle"  style="display: none;" >
                    <h2>검색 결과</h2>
                                                <div class="cTip" code="OR.SM.AO.110"></div>
                                        </div>
                                        <div class="mTab typeTab eTab">
                        <ul>
                            <li class="selected"><a href="#none" id="eOrdNumTab">주문번호별</a></li>
                        </ul>
                    </div>
                                    <div id="tabNumber" class="tabCont">
                    <div class="mState typeHeader">
                        <div class="gLeft">
                                                            <p class="total">[ 검색결과
                                <strong>0</strong>건
                                                                    ]</p>
                                                        </div>
                        <div class="gRight">
                                                                <a title="새창 열림" target="_blank" id="eExcelDownloadBtn" class="btnNormal"><span><em class="icoXls"></em> 엑셀다운로드<em class="icoLink"></em></span></a>
                                                                                            <div class="mOpen">
                                <a href="#ordOpen1" class="btnNormal eOpenClick"><span><em class="icoPrint"></em> 인쇄 <em class="icoLayer"></em></span></a>
                                                                        <div id="ordOpen1" class="open wOrdOpenPrint" style="top:22px;right:0;">
                                                                        <div class="wrap">
                                        <ul class="print">
                                            <li><a href="#none" id="ePrintOrders" class="order">주문서(간단인쇄)</a></li>
                                            <li><a href="#none" id="ePrintOrdersDetail" class="order">주문서(상세인쇄)</a></li>                                                <li><a href="#none" id="ePrintSpec" class="order">거래명세서</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                                                            <a title="새창 열림" target="_blank" id="eMemoBatchBtn" class="btnNormal"  style="display: none;" ><span> 메모 일괄등록<em class="icoLink"></em></span></a>
                        </div>
                    </div>
                    <div class="mCtrl typeSetting setting">
                        <div class="gLeft">
                                                                                        </div>
                        <div class="gRight">
                            <label><input type="checkbox" id="eResponseInfo" class="fChk" /> 수령자 정보 표시</label>
                            <select name="searchSorting" class="fSelect">
                                <option value="order_asc" >주문일순</option>
                                <option value="order_desc" selected>주문일역순</option>
                                <option value="settle_price_asc" >총 실결제금액순</option>
                                <option value="settle_price_desc" >총 실결제금액역순</option>
                            </select>
                            <select name="rows" class="fSelect">
                                <option value="10" >10개씩보기</option>
                                <option value="20"  selected }>20개씩보기</option>
                                <option value="30" >30개씩보기</option>
                                <option value="50" >50개씩보기</option>
                                <option value="100" >100개씩보기</option>
                                <option value="200" >200개씩보기</option>
                                <option value="300" >300개씩보기</option>
                                <option value="500" >500개씩보기</option>
                            </select>
                        </div>
                        <div class="gSetting">
                            <div class="mOpen">
                                <a href="#listSubject" class="btnSetting eOpenClick"><span>설정</span></a>
                                <div id="listSubject" class="open">
                                    <strong>목록표시</strong>
                                    <div class="wrap">
                                        <ul class="default">
                                            <li><label><input type="checkbox" id="iDisplayNo" class="fChk" value="21" /> No</label></li>
                                                                                                                                            <li><label><input type="checkbox" class="fChk" value="2" /> 주문일(결제일)</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="3" disabled="disabled" /> 주문번호</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="4" /> 주문자</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="5" /> 상품명</label></li>
                                                                                            <li><label><input type="checkbox" id="ePrdTotalPrice" class="fChk" value="6" /> 총 상품구매금액</label></li>
                                                                                            <li><label><input type="checkbox" id="eOrdTotalPrice" class="fChk" value="20"/> 총 주문금액</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="7" /> 총 실결제금액</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="8" /> 결제수단</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="9" /> 결제상태</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="10" /> 미배송</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="11" /> 배송중</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="12" /> 배송완료</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="13" /> 취소</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="14" /> 교환</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="15" /> 반품</label></li>
                                            <li  style="display: none;" ><label><input type="checkbox" class="fChk" value="16" disabled="disabled" /> 목록삭제</label></li>
                                            <li><label><input type="checkbox" class="fChk" value="17" /> 메모</label></li>
                                        </ul>
                                    </div>
                                    <div class="footer">
                                        <a href="#none" id="eListControlLayer" class="btnCtrl"><span>적용</span></a>
                                        <a href="#none" class="btnNormal eClose"><span>닫기</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="searchResultList" class="mBoard typeOrder typeList gScroll gCellSingle">
                        <table border="1" summary="" class="thead">
                            <caption>전체주문 조회 목록</caption>
                            <tbody>
                            <tr>
                                <th scope="col" class="w24"><input type="checkbox" id="allChk" /></th>
                                <th scope="col" class="w50" style="display:none;">No</th>
                                                                                                        <th scope="col" class="w120" style="">주문일(결제일)</th>
                                <th scope="col" class="w150" style="">주문번호</th>
                                <th scope="col" class="w95" style="">주문자 <div class="cTip eSmartMode" code="OD.AO.170"></div></th>
                                <th scope="col" class="w120" style="">상품명</th>
                                                                    <th scope="col" class="w105" style="display:none;">총 상품구매금액</th>
                                                                    <th scope="col" class="w105" style="display:none;">총 주문금액</th>
                                <th scope="col" class="w105" style="">총 실결제금액</th>
                                <th scope="col" class="w60" style="">결제수단</th>
                                <th scope="col" class="w60" style="">결제상태</th>
                                                                    <th scope="col" class="w45" style="">미배송</th>
                                <th scope="col" class="w45" style="">배송중</th>
                                <th scope="col" class="w60" style="">배송완료</th>
                                <th scope="col" class="w45" style="">취소</th>
                                <th scope="col" class="w45" style="">교환</th>
                                                                    <th scope="col" class="w45" style="">반품</th>
                                                                    <th scope="col" class="w35" style="">메모</th>
                            </tr>
                            </tbody>
                        </table>
                                                        <table border="1" summary="">
                                <caption>전체주문 조회 목록</caption>
                                <tbody class="empty">
                                <tr>
                                    <td colspan="15">검색된 주문내역이 없습니다.</td>
                                </tr>
                                </tbody>
                            </table>
                        
                    </div>
                                            <div class="mCtrl typeFooter">
                        <div class="gRight">
                                                                <a title="새창 열림" target="_blank" id="eExcelDownloadBtn" class="btnNormal"><span><em class="icoXls"></em> 엑셀다운로드<em class="icoLink"></em></span></a>
                                                                                                <div class="mOpen">
                                    <a href="#ordOpen2" class="btnNormal eOpenClick"><span><em class="icoPrint"></em> 인쇄 <em class="icoLayer"></em></span></a>
                                                                                <div id="ordOpen2" class="open wOrdOpenPrint" style="top:22px;right:0;">
                                                                                <div class="wrap">
                                            <ul class="print">
                                                <li><a href="#none" id="ePrintOrders2" class="order">주문서(간단인쇄)</a></li>
                                                <li><a href="#none" id="ePrintOrdersDetail2" class="order">주문서(상세인쇄)</a></li>                                                    <li><a href="#none" id="ePrintSpec2" class="order">거래명세서</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                                            <a title="새창 열림" target="_blank" id="eMemoBatchBtn2" class="btnNormal"  style="display: none;" ><span> 메모 일괄등록<em class="icoLink"></em></span></a>
                        </div>
                    </div>
                    <div class="mPaginate">
                        
                    </div>
                                        </div>
            </div>

                                        </div><!-- //content -->

                </form>
  </body>
</html>
