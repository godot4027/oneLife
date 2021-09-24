<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리 선택</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<div id="wrap">
        <div class="view_wrap library_pop">
            <h2 class="sub_tit">자리 선택</h2>
            <div class="library_wrap">
                <div class="library_head">
                    <div class="status_item">
                        <p>빈좌석</p>
                        <p>사용중인 좌석</p>
                        <p>선택한 좌석</p>
                    </div>
                </div>
                <div class="library_body">
                    <div class="seat_item">
                        <ul>
                            <!-- 사용중 or 예약석 좌석일시 -->
                            <li class="use">
                                <a href="javascript:;">
                                    <p class="status">On</p>
                                    <h3 class="seatNum">1</h3>
                                    <p class="endDate">~08.26</p>
                                </a>
                            </li>
                            <!-- 좌석을 선택했을시 -->
                            <li class="on">
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">2</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">3</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">4</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">5</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">6</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">7</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">8</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">9</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">10</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">11</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">12</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">13</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">14</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">15</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">16</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">17</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">18</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">19</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">20</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">21</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">22</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">23</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">24</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">25</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">26</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">27</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">28</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">29</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">30</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">31</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">32</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">33</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">34</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">35</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">36</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">37</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">38</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">39</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">40</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">41</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">42</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">43</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">44</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">45</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">46</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">47</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">48</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">49</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">50</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">51</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">52</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">53</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">54</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">55</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">56</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">57</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">58</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">59</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">60</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">61</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">62</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">63</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">64</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">65</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">66</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">67</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">68</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">69</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">70</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">71</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">72</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">73</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">74</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">75</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">76</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">77</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">78</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">79</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">80</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">81</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">82</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">83</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">84</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">85</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">86</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">87</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">88</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">89</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">90</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">91</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">92</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">93</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">94</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">95</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">96</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">97</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">98</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">99</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">100</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">101</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">102</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">103</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">104</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">105</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">106</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">107</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">108</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">109</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">110</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">111</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">112</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">113</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">114</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">115</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">116</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">117</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">118</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">119</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">120</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">121</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">122</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">123</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">124</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">125</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">126</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">127</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">128</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">129</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">130</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">131</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">132</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">133</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">134</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">135</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">136</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">137</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">138</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">139</h3>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <p class="status">Off</p>
                                    <h3 class="seatNum">140</h3>
                                </a>
                            </li>

                        </ul>

                    </div>
                    <div class="plan_item">
                            <div class="exit_item">
                                출입구
                            </div>
                            <div class="lounge_item">
                                휴게실
                            </div>
                    </div>
                </div>

            </div>
        </div>
        
    </div>

    <div class="popup_wrap" style="display:none">
        <div class="dim"></div>
        <div class="item">
            <h3 class="tit">예약 내역 조회</h3>
            <ul>
               <li>
                    <span>시설명 : </span>
                    <p>멀티코트장</p>
               </li>
               <li>
                    <span>타입 : </span>
                    <p>A</p>
                </li>
                <li>
                    <span>이름 : </span>
                    <p>홍길동</p>
               </li>
               <li>
                    <span>휴대폰번호 : </span>
                    <p>010-1234-5678</p>
                </li>
                <li>
                    <span>예약 일시 : </span>
                    <p>2021년 08월 16일  11시00분</p>
                </li>
                <li>
                    <span>예약 마감 : </span>
                    <p>2021년 08월 16일  11시00분</p>
                </li>
            </ul>

            <div class="btn_box">
                <a href="javascript:;:;" class="ok">확인</a>
            </div>
        </div>
    </div>


</body>
</html>