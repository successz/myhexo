<!-- 页脚 -->
<footer class="page__footer">
    <section class="footer__top">
        <div class="page__container footer__container">
            {% set about = get_setting('about') %}
            <div class="footer-top__item footer-top__item--2">
                <h3 class="item__title">{{ __('footer.about') }}</h3>
                <div class="item__content">
                    <p class="item__text">{{ about.info }}</p>
                    <ul class="footer__contact-info">
                        <li class="contact-info__item">
                            <i class="iconfont icon-address"></i>
                            <span>{{ about.address }}</span>
                        </li>
                        <li class="contact-info__item">
                            <i class="iconfont icon-email2"></i>
                            <span>{{ about.email }}</span>
                        </li>
                    </ul>
                </div>
            </div>

            {% set img = get_setting('qrcode', 'avatar') %}
            {% if img %}
                <div class="footer-top__item footer__image">
                    <img src="{{ img }}" alt="logo" title="{{ get_setting('title') }}">
                </div>
            {% endif %}
            
            {% set links = site.data.footer_link %}
            {% if links %}
                {% for item in links %}
                    <div class="footer-top__item">
                        <h3 class="item__title">{{ __('footer.' + loop.key) }}</h3>
                        <div class="item__content">
                            <ul class="footer-top__list">
                                {% for link in item %}
                                    <li class="list-item">
                                        <a href="{{ link.link }}" title="{{ link.desc }}" target="_blank">{{ link.name }}</a>
                                    </li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                {% endfor %}
            {% endif %}
        </div>
    </section>
    <section class="footer__bottom">
        <div class="page__container footer__container">
            <p class="footer__copyright">©
                <a href="https://github.com/Mrminfive/hexo-theme-skapp" target="_blank">Skapp</a> 2017 powered by
                <a>Hexo</a>, made by 
                <a href="https://github.com/Mrminfive" target="_blank">minfive</a>.&nbsp;&nbsp;
                <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1262835406'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1262835406%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
            </p>
            <ul class="footer__social-network clearfix">
                {% if site.data.contact %}
                {% for item in site.data.contact %}
                    <li class="social-network__item">
                        <a href="{{ item.link }}" target="_blank" title="{{ item.title }}">
                            <i class="iconfont {{ item.icon }}"></i>
                        </a>
                    </li>
                {% endfor %}
                {% endif %}
            </ul>
        </div>
    </section>
</footer>