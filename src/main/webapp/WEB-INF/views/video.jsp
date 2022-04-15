<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영상 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.4.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="path_to/jquery.js"></script>
<script type="text/javascript" src="path_to/jquery.simplePagination.js"></script>

<style>
 
.video_view{
position:relative;
display: inline;
}

.video_modal_popup.reveal {
    display: flex;
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    justify-content: center;
    align-items: center;
    z-index: 9999999
}

.video_modal_popup .video-wrapper {
    position: relative;
    width: 80%;
    padding-bottom: 45%;
    z-index: 500
}

.video_modal_popup .video-wrapper iframe {
    position: absolute;
    width: 100%;
    height: 100%;
}

.video_modal_popup.reveal .video_modal_popup-closer {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, .4);
    z-index: 300
}

.img-thumbnail {
    padding: 4px;
    line-height: 1.42857143;
    background-color: #fff;
    position: relative;
    border: 1px solid #ddd;
    border-radius: 4px;
    transition: all .2s ease-in-out;
    display: inline-block;
    max-width: 100%;
    z-index: 50;
    height: auto;
}

.paging{
	position: relative;
	z-index: 50;
}

.vdtitle{
	font-size : 18px;
}

</style>



</head>

<body>
	<jsp:include page = "side_topbar.jsp"></jsp:include>
<div style="margin-top: 50px; margin-left: 150px">
	<h3>인테리어 영상</h3>
</div>

	<div class="item">
			
<%-- 		<c:set var="p" value="${postStart}" />
		<c:set var="plus" value="1" /> --%>
			<c:forEach var="vd" items="${requestScope.list}">
					
			<div class="col-sm-4 popupModalVideo" style="position:relative; margin-left: 150px; margin-bottom: 15px; z-index: 50; ">
		    <a data-video="${vd.v_url}"><img src="${vd.v_img}" class="img-thumbnail" style="margin-bottom: 15px; width: 400px; height : 250px"/></a>
		    <p class="vdtitle">${vd.v_title}</p>
		    </div>
		    
			<div class="video_modal_popup" style="margin-left: 150px">
		  		<div class="video_modal_popup-closer"></div>
					
				<%-- <c:set var="plus" value="${plus +1}" /> --%>
			</div>
				</c:forEach>
					
	</div>
	
	<div class="paging" style="text-align: center; font-size: 30px">
			<c:choose>
				<c:when test="${paging.prev}">
					<a
						href="video.do?pageNum=${paging.beginPage-1}&pageCount=">◀</a>
				</c:when>
			</c:choose>
			<c:forEach begin="${paging.beginPage}" end="${paging.endPage}"
				step="1" varStatus="status">
				<a
					href="video.do?pageNum=${status.index}&pageCount="
					class="bottom_count${status.index}">${status.index}</a>
			</c:forEach>
			<c:choose>
				<c:when test="${paging.next}">
					<a
						href="video.do?pageNum=${paging.endPage+1}&pageCount=">▶</a>
				</c:when>
			</c:choose>

		</div>
	
	
	
	

<%-- <!-- 페이징 구간 -->
		<nav aria-label="Page navigation example">

			<ul style="justify-content: center" class="pagination">
				<c:set var="back" value="${postStart/10}" />
				<li class="page-item"><a class="page-link"
					href="video.do?pageNum=
					
					<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back }" />"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="1" end="${endPageNum}" var="i">
					<c:choose>
						<c:when test="${postEnd eq 10 }">
							<li class="page-item"><a class="page-link"
								href="video.do?pageNum=${i}">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="video.do?pageNum=${i}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<li class="page-item"><a class="page-link"
					href="video.do?pageNum=<fmt:formatNumber type="number" maxFractionDigits="0"  value="${back+2 }" />" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>



<div class="pagination-holder clearfix">
			<div id="light-pagination" class="pagination"></div>
</div> --%>




<script>

$(".bottom_count"+${page}).css('color','red');

$(".popupModalVideo a").click(function() {
    $(".video_modal_popup").addClass("reveal"),
    $(".video_modal_popup .video-wrapper").remove(),
    $(".video_modal_popup").append("<div class='video-wrapper'><iframe width='560' height='315' src='https://youtube.com/embed/" + $(this).data("video") + "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")
}),
$(".video_modal_popup-closer").click(function() {
    $(".video_modal_popup .video-wrapper").remove(),
    $(".video_modal_popup").removeClass("reveal")
});



describe('SimplePagination', function() {

    it('adds pagination elements to an empty container', function() {
        expect(pager).toBePaged();
    })

    describe('#destroy', function() {
        it('visually destroys the pager', function() {
            pager.pagination('destroy');

            expect(pager).not.toBePaged();
        })
    })

    describe('#redraw', function() {
        it('recreates a destroyed pager', function() {
            pager.pagination('destroy');
            pager.pagination('redraw');

            expect(pager).toBePaged();
        })
    })

    describe('#disable', function() {
        it('disables the pager', function() {
            pager.pagination('disable');

            expect(pager).toBeDisabled();
        })
    })

    describe('#enable', function() {
        it('enables a disabled pager', function() {
            pager.pagination('disable');
            pager.pagination('enable');

            expect(pager).not.toBeDisabled();
        })
    })

    describe('#getPagesCount', function() {
        it('return the number of pages', function() {
            expect(pager.pagination('getPagesCount')).toBe(pageCount);
        })
    })

    describe('#selectPage', function() {
        it('changes to the specified page', function() {
            var expectedPage = pageCount;
            pager.pagination('selectPage', expectedPage);

            expect(pager).toBeOnPage(expectedPage);
        })
    })

    describe('#getCurrentPage', function() {
        it('returns the current page number', function() {
            expect(pager.pagination('getCurrentPage')).toBe(1);

            var expectedPage = pageCount;
            pager.pagination('selectPage', expectedPage);

            expect(pager.pagination('getCurrentPage')).toBe(expectedPage);
        })
    })

    describe('#prevPage', function() {
        it('pages to the previous page', function() {
            pager.pagination('selectPage', pageCount);

            var expectedPage = pager.pagination('getCurrentPage') - 1;

            pager.pagination('prevPage');

            expect(pager).toBeOnPage(expectedPage);
        })

        it('does not go to page 0', function() {
            var expectedPage = pager.pagination('getCurrentPage');

            pager.pagination('prevPage');

            expect(pager).toBeOnPage(expectedPage);
        })
    })

    describe('#nextPage', function() {
        it('does not page past the last', function() {
            var expectedPage = pageCount;

            pager.pagination('selectPage', pageCount);
            pager.pagination('nextPage');

            expect(pager).toBeOnPage(expectedPage);
        })

        it('pages to the next page', function() {
            var expectedPage = pager.pagination('getCurrentPage') + 1;

            pager.pagination('nextPage');

            expect(pager).toBeOnPage(expectedPage);
        })
    })

    describe('#updateItems', function() {
        it('updates the number of pages', function() {
            var updatedItems = Math.round(items / 2);
            var expectedPageCount = (updatedItems/itemsOnPage);

            pager.pagination('updateItems', updatedItems);

            expect(pager.pagination('getPagesCount')).toBe(expectedPageCount);
        })
    })

    describe('#updateItemsOnPage', function() {
        it('updates the number of pages', function() {
            var updatedItemsOnPage = Math.round(itemsOnPage / 2);
            var expectedPageCount = (items/updatedItemsOnPage);

            pager.pagination('updateItemsOnPage', updatedItemsOnPage);

            expect(pager.pagination('getPagesCount')).toBe(expectedPageCount);
        })
    })

    describe('invertPageOrder Option', function() {
        var invertedPager;

        beforeEach(function() {
            $('<div id="inverted_pager" class="pager"></div>').appendTo('body').pagination({
                items: items,
                itemsOnPage: itemsOnPage,
                invertPageOrder: true
            });

            invertedPager = $('#inverted_pager');
        })

        it('moves the highest page number to the front of the list', function() {
            var expectedPage = pageCount;

            expect(invertedPager).toBeOnPage(expectedPage);
        })

        describe('#nextPage', function() {
            it('pages to the next page', function() {
                invertedPager.pagination('selectPage', pageCount );

                var expectedPage = invertedPager.pagination('getCurrentPage') - 1;

                invertedPager.pagination('nextPage');

                expect(invertedPager).toBeOnPage(expectedPage);
            })
        })

        describe('#prevPage', function() {
            it('pages to the previous page', function() {
                invertedPager.pagination('selectPage', 1);

                var expectedPage = invertedPager.pagination('getCurrentPage') + 1;

                invertedPager.pagination('prevPage');

                expect(invertedPager).toBeOnPage(expectedPage);
            })
        })
    })


	describe('use Edge Options', function() {
		var edgePager;

		it('use startEdge or endEdge by option useStartEdge, useEndEdge', function() {
		})

		describe('#default useStartEdge & useEndEdge', function() {
			beforeEach(function() {
				$('<div id="edge_pager" class="pager"></div>').appendTo('body').pagination({
					items: items,
					itemsOnPage: itemsOnPage
				})

				edgePager = $('#edge_pager');
			})

			it('pages should same text when select 1 page', function() {
				edgePager.pagination('selectPage', 1);
				expect(edgePager).toBeSameTextValues(['Prev', '1', '2', '3', '4', '5', '\u2026', '9', '10', 'Next']);
			})


			it('pages should same text when select last page', function() {
				edgePager.pagination('selectPage', pageCount);
				expect(edgePager).toBeSameTextValues(['Prev', '1', '2', '\u2026', '6', '7', '8', '9', '10', 'Next']);
			})
		})

		describe('#not useStartEdge & not useEndEdge', function() {
			beforeEach(function() {
				$('<div id="edge_pager" class="pager"></div>').appendTo('body').pagination({
					items: items,
					itemsOnPage: itemsOnPage,
					useStartEdge:false,
					useEndEdge:false
				})

				edgePager = $('#edge_pager');
			})

			it('pages should same text when select 1 page', function() {
				edgePager.pagination('selectPage', 1);
				expect(edgePager).toBeSameTextValues(['Prev', '1', '2', '3', '4', '5', '\u2026', 'Next']);
			})

			it('pages should same text when select last page', function() {
				edgePager.pagination('selectPage', pageCount);
				expect(edgePager).toBeSameTextValues(['Prev', '\u2026', '6', '7', '8', '9', '10', 'Next']);
			})
		})

		describe('#invertPageOrder with default useStartEdge & useEndEdge', function() {
			beforeEach(function() {
				$('<div id="edge_pager" class="pager"></div>').appendTo('body').pagination({
					items: items,
					itemsOnPage: itemsOnPage,
					invertPageOrder:true
				})

				edgePager = $('#edge_pager');
			})

			it('pages should same text when select 1 page', function() {
				edgePager.pagination('selectPage', 1);
				expect(edgePager).toBeSameTextValues(['Prev', '10', '9', '\u2026', '5', '4', '3', '2', '1', 'Next']);
			})


			it('pages should same text when select last page', function() {
				edgePager.pagination('selectPage', pageCount);
				expect(edgePager).toBeSameTextValues(['Prev', '10', '9', '8', '7', '6', '\u2026', '2', '1', 'Next']);
			})
		})

		describe('#invertPageOrder with not useStartEdge & not useEndEdge', function() {
			beforeEach(function() {
				$('<div id="edge_pager" class="pager"></div>').appendTo('body').pagination({
					items: items,
					itemsOnPage: itemsOnPage,
					useStartEdge:false,
					useEndEdge:false,
					invertPageOrder:true
				})

				edgePager = $('#edge_pager');
			})

			it('pages should same text when select 1 page', function() {
				edgePager.pagination('selectPage', 1);
				expect(edgePager).toBeSameTextValues(['Prev', '\u2026', '5', '4', '3', '2', '1', 'Next']);
			})

			it('pages should same text when select last page', function() {
				edgePager.pagination('selectPage', pageCount);
				expect(edgePager).toBeSameTextValues(['Prev', '10', '9', '8', '7', '6', '\u2026', 'Next']);
			})
		})
	})
});





</script> 


</body>
</html>

