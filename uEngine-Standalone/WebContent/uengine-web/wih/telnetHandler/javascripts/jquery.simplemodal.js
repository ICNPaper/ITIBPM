/*
 * SimpleModal 1.3 - jQuery Plugin
 * http://www.ericmmartin.com/projects/simplemodal/
 * Copyright (c) 2009 Eric Martin
 * Dual licensed under the MIT and GPL licenses
 * Revision: $Id: jquery.simplemodal.js,v 1.1 2009/08/27 04:51:46 allbegray Exp $
 */
;
(function($) {
	var ie6 = $.browser.msie && parseInt($.browser.version) == 6 && typeof window['XMLHttpRequest'] != "object", ieQuirks = null, w = [];
	$.modal = function(data, options) {
		return $.modal.impl.init(data, options);
	};
	$.modal.close = function() {
		$.modal.impl.close();
	};
	$.fn.modal = function(options) {
		return $.modal.impl.init(this, options);
	};
	$.modal.defaults = {
		appendTo : 'body',
		focus : true,
		opacity : 50,
		overlayId : 'simplemodal-overlay',
		overlayCss : {},
		containerId : 'simplemodal-container',
		containerCss : {},
		dataId : 'simplemodal-data',
		dataCss : {},
		minHeight : 200,
		minWidth : 300,
		maxHeight : null,
		maxWidth : null,
		autoResize : false,
		zIndex : 1000,
		close : true,
		closeHTML : '<a class="modalCloseImg" title="Close"></a>',
		closeClass : 'simplemodal-close',
		escClose : true,
		overlayClose : false,
		position : null,
		persist : false,
		onOpen : null,
		onShow : null,
		onClose : null
	};
	$.modal.impl = {
		opts : null,
		dialog : {},
		init : function(data, options) {
			if (this.dialog.data) {
				return false;
			}
			ieQuirks = $.browser.msie && !$.boxModel;
			this.opts = $.extend( {}, $.modal.defaults, options);
			this.zIndex = this.opts.zIndex;
			this.occb = false;
			if (typeof data == 'object') {
				data = data instanceof jQuery ? data : $(data);
				if (data.parent().parent().size() > 0) {
					this.dialog.parentNode = data.parent();
					if (!this.opts.persist) {
						this.dialog.orig = data.clone(true);
					}
				}
			} else if (typeof data == 'string' || typeof data == 'number') {
				data = $('<div/>').html(data);
			} else {
				alert('SimpleModal Error: Unsupported data type: ' + typeof data);
				return false;
			}
			this.create(data);
			data = null;
			this.open();
			if ($.isFunction(this.opts.onShow)) {
				this.opts.onShow.apply(this, [ this.dialog ]);
			}
			return this;
		},
		create : function(data) {
			w = this.getDimensions();
			if (ie6) {
				this.dialog.iframe = $('<iframe src="javascript:false;"/>').css($.extend(this.opts.iframeCss, {
					display : 'none',
					opacity : 0,
					position : 'fixed',
					height : w[0],
					width : w[1],
					zIndex : this.opts.zIndex,
					top : 0,
					left : 0
				})).appendTo(this.opts.appendTo);
			}
			this.dialog.overlay = $('<div/>').attr('id', this.opts.overlayId).addClass('simplemodal-overlay').css(
					$.extend(this.opts.overlayCss, {
						display : 'none',
						opacity : this.opts.opacity / 100,
						height : w[0],
						width : w[1],
						position : 'fixed',
						left : 0,
						top : 0,
						zIndex : this.opts.zIndex + 1
					})).appendTo(this.opts.appendTo);
			this.dialog.container = $('<div/>').attr('id', this.opts.containerId).addClass('simplemodal-container')
					.css($.extend(this.opts.containerCss, {
						display : 'none',
						position : 'fixed',
						zIndex : this.opts.zIndex + 2
					})).append(
							this.opts.close && this.opts.closeHTML ? $(this.opts.closeHTML).addClass(
									this.opts.closeClass) : '').appendTo(this.opts.appendTo);
			this.dialog.wrap = $('<div/>').attr('tabIndex', -1).addClass('simplemodal-wrap').css( {
				height : '100%',
				outline : 0,
				width : '100%'
			}).appendTo(this.dialog.container);
			this.dialog.data = data.attr('id', data.attr('id') || this.opts.dataId).addClass('simplemodal-data').css(
					$.extend(this.opts.dataCss, {
						display : 'none'
					}));
			data = null;
			this.setContainerDimensions();
			this.dialog.data.appendTo(this.dialog.wrap);
			if (ie6 || ieQuirks) {
				this.fixIE();
			}
		},
		bindEvents : function() {
			var self = this;
			$('.' + self.opts.closeClass).bind('click.simplemodal', function(e) {
				e.preventDefault();
				self.close();
			});
			if (self.opts.close && self.opts.overlayClose) {
				self.dialog.overlay.bind('click.simplemodal', function(e) {
					e.preventDefault();
					self.close();
				});
			}
			$(document).bind('keydown.simplemodal', function(e) {
				if (self.opts.focus && e.keyCode == 9) {
					self.watchTab(e);
				} else if ((self.opts.close && self.opts.escClose) && e.keyCode == 27) {
					e.preventDefault();
					self.close();
				}
			});
			$(window).bind('resize.simplemodal', function() {
				w = self.getDimensions();
				self.opts.autoResize ? self.setContainerDimensions() : self.setPosition();
				if (ie6 || ieQuirks) {
					self.fixIE();
				} else {
					self.dialog.iframe && self.dialog.iframe.css( {
						height : w[0],
						width : w[1]
					});
					self.dialog.overlay.css( {
						height : w[0],
						width : w[1]
					});
				}
			});
		},
		unbindEvents : function() {
			$('.' + this.opts.closeClass).unbind('click.simplemodal');
			$(document).unbind('keydown.simplemodal');
			$(window).unbind('resize.simplemodal');
			this.dialog.overlay.unbind('click.simplemodal');
		},
		fixIE : function() {
			var p = this.opts.position;
			$
					.each(
							[ this.dialog.iframe || null, this.dialog.overlay, this.dialog.container ],
							function(i, el) {
								if (el) {
									var bch = 'document.body.clientHeight', bcw = 'document.body.clientWidth', bsh = 'document.body.scrollHeight', bsl = 'document.body.scrollLeft', bst = 'document.body.scrollTop', bsw = 'document.body.scrollWidth', ch = 'document.documentElement.clientHeight', cw = 'document.documentElement.clientWidth', sl = 'document.documentElement.scrollLeft', st = 'document.documentElement.scrollTop', s = el[0].style;
									s.position = 'absolute';
									if (i < 2) {
										s.removeExpression('height');
										s.removeExpression('width');
										s.setExpression('height', '' + bsh + ' > ' + bch + ' ? ' + bsh + ' : ' + bch
												+ ' + "px"');
										s.setExpression('width', '' + bsw + ' > ' + bcw + ' ? ' + bsw + ' : ' + bcw
												+ ' + "px"');
									} else {
										var te, le;
										if (p && p.constructor == Array) {
											var top = p[0] ? typeof p[0] == 'number' ? p[0].toString() : p[0].replace(
													/px/, '') : el.css('top').replace(/px/, '');
											te = top.indexOf('%') == -1 ? top + ' + (t = ' + st + ' ? ' + st + ' : '
													+ bst + ') + "px"' : parseInt(top.replace(/%/, '')) + ' * ((' + ch
													+ ' || ' + bch + ') / 100) + (t = ' + st + ' ? ' + st + ' : ' + bst
													+ ') + "px"';
											if (p[1]) {
												var left = typeof p[1] == 'number' ? p[1].toString() : p[1].replace(
														/px/, '');
												le = left.indexOf('%') == -1 ? left + ' + (t = ' + sl + ' ? ' + sl
														+ ' : ' + bsl + ') + "px"' : parseInt(left.replace(/%/, ''))
														+ ' * ((' + cw + ' || ' + bcw + ') / 100) + (t = ' + sl + ' ? '
														+ sl + ' : ' + bsl + ') + "px"';
											}
										} else {
											te = '(' + ch + ' || ' + bch + ') / 2 - (this.offsetHeight / 2) + (t = '
													+ st + ' ? ' + st + ' : ' + bst + ') + "px"';
											le = '(' + cw + ' || ' + bcw + ') / 2 - (this.offsetWidth / 2) + (t = '
													+ sl + ' ? ' + sl + ' : ' + bsl + ') + "px"';
										}
										s.removeExpression('top');
										s.removeExpression('left');
										s.setExpression('top', te);
										s.setExpression('left', le);
									}
								}
							});
		},
		focus : function(pos) {
			var self = this, p = pos || 'first';
			var input = $(':input:enabled:visible:' + p, self.dialog.wrap);
			input.length > 0 ? input.focus() : self.dialog.wrap.focus();
		},
		getDimensions : function() {
			var el = $(window);
			var h = $.browser.opera && $.browser.version > '9.5' && $.fn.jquery <= '1.2.6' ? document.documentElement['clientHeight']
					: $.browser.opera && $.browser.version < '9.5' && $.fn.jquery > '1.2.6' ? window.innerHeight : el
							.height();
			return [ h, el.width() ];
		},
		getVal : function(v) {
			return v == 'auto' ? 0 : parseInt(v.replace(/px/, ''));
		},
		setContainerDimensions : function() {
			var ch = this.getVal(this.dialog.container.css('height')), cw = this.dialog.container.width(), dh = this.dialog.data
					.height(), dw = this.dialog.data.width();
			var mh = this.opts.maxHeight && this.opts.maxHeight < w[0] ? this.opts.maxHeight : w[0], mw = this.opts.maxWidth
					&& this.opts.maxWidth < w[1] ? this.opts.maxWidth : w[1];
			if (!ch) {
				if (!dh) {
					ch = this.opts.minHeight;
				} else {
					if (dh > mh) {
						ch = mh;
					} else if (dh < this.opts.minHeight) {
						ch = this.opts.minHeight;
					} else {
						ch = dh;
					}
				}
			} else {
				ch = ch > mh ? mh : ch;
			}
			if (!cw) {
				if (!dw) {
					cw = this.opts.minWidth;
				} else {
					if (dw > mw) {
						cw = mw;
					} else if (dw < this.opts.minWidth) {
						cw = this.opts.minWidth;
					} else {
						cw = dw;
					}
				}
			} else {
				cw = cw > mw ? mw : cw;
			}
			this.dialog.container.css( {
				height : ch,
				width : cw
			});
			if (dh > ch || dw > cw) {
				this.dialog.wrap.css( {
					overflow : 'auto'
				});
			}
			this.setPosition();
		},
		setPosition : function() {
			var top, left, hc = (w[0] / 2) - ((this.dialog.container.height() || this.dialog.data.height()) / 2), vc = (w[1] / 2)
					- ((this.dialog.container.width() || this.dialog.data.width()) / 2);
			if (this.opts.position && this.opts.position.constructor == Array) {
				top = this.opts.position[0] || hc;
				left = this.opts.position[1] || vc;
			} else {
				top = hc;
				left = vc;
			}
			this.dialog.container.css( {
				left : left,
				top : top
			});
		},
		watchTab : function(e) {
			var self = this;
			if ($(e.target).parents('.simplemodal-container').length > 0) {
				self.inputs = $(':input:enabled:visible:first, :input:enabled:visible:last', self.dialog.data);
				if (!e.shiftKey && e.target == self.inputs[self.inputs.length - 1] || e.shiftKey
						&& e.target == self.inputs[0] || self.inputs.length == 0) {
					e.preventDefault();
					var pos = e.shiftKey ? 'last' : 'first';
					setTimeout(function() {
						self.focus(pos);
					}, 10);
				}
			} else {
				e.preventDefault();
				setTimeout(function() {
					self.focus();
				}, 10);
			}
		},
		open : function() {
			this.dialog.iframe && this.dialog.iframe.show();
			if ($.isFunction(this.opts.onOpen)) {
				this.opts.onOpen.apply(this, [ this.dialog ]);
			} else {
				this.dialog.overlay.show();
				this.dialog.container.show();
				this.dialog.data.show();
			}
			this.focus();
			this.bindEvents();
		},
		close : function() {
			if (!this.dialog.data) {
				return false;
			}
			this.unbindEvents();
			if ($.isFunction(this.opts.onClose) && !this.occb) {
				this.occb = true;
				this.opts.onClose.apply(this, [ this.dialog ]);
			} else {
				if (this.dialog.parentNode) {
					if (this.opts.persist) {
						this.dialog.data.hide().appendTo(this.dialog.parentNode);
					} else {
						this.dialog.data.hide().remove();
						this.dialog.orig.appendTo(this.dialog.parentNode);
					}
				} else {
					this.dialog.data.hide().remove();
				}
				this.dialog.container.hide().remove();
				this.dialog.overlay.hide().remove();
				this.dialog.iframe && this.dialog.iframe.hide().remove();
				this.dialog = {};
			}
		}
	};
})(jQuery);