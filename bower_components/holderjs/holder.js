﻿/*!

Holder - client side image placeholders
Version 2.4.1+f2l1h
© 2014 Ivan Malopinsky - http://imsky.co

Site:     http://imsky.github.io/holder
Issues:   https://github.com/imsky/holder/issues
License:  http://opensource.org/licenses/MIT

*/
!function(e, t, r) { t[e] = r }("onDomReady",
    this,
    function(e) {
        "use strict";

        function t(e) {
            if (!b) {
                if (!a.body) return i(t);
                for (b = !0; e = S.shift();) i(e);
            }
        }

        function r(e) { (y || e.type === s || a[c] === u) && (n(), t()) }

        function n() { y ? (a[x](m, r, d), e[x](s, r, d)) : (a[g](v, r), e[g](h, r)) }

        function i(e, t) { setTimeout(e, +t >= 0 ? t : 1) }

        function o(e) { b ? i(e) : S.push(e) }

        null == document.readyState &&
            document.addEventListener &&
            (document.addEventListener("DOMContentLoaded",
                function E() {
                    document.removeEventListener("DOMContentLoaded", E, !1), document.readyState = "complete";
                },
                !1), document.readyState = "loading");
        var a = e.document,
            l = a.documentElement,
            s = "load",
            d = !1,
            h = "on" + s,
            u = "complete",
            c = "readyState",
            f = "attachEvent",
            g = "detachEvent",
            p = "addEventListener",
            m = "DOMContentLoaded",
            v = "onreadystatechange",
            x = "removeEventListener",
            y = p in a,
            w = d,
            b = d,
            S = [];
        if (a[c] === u) i(t);
        else if (y) a[p](m, r, d), e[p](s, r, d);
        else {
            a[f](v, r), e[f](h, r);
            try {
                w = null == e.frameElement && l;
            } catch (C) {
            }
            w &&
                w.doScroll &&
                !function k() {
                    if (!b) {
                        try {
                            w.doScroll("left");
                        } catch (e) {
                            return i(k, 50);
                        }
                        n(), t();
                    }
                }();
        }
        return o.version = "1.4.0", o.isReady = function() { return b }, o;
    }(this)), document.querySelectorAll ||
(document.querySelectorAll = function(e) {
    var t, r = document.createElement("style"), n = [];
    for (document.documentElement.firstChild
            .appendChild(r), document._qsa = [], r.styleSheet
            .cssText = e + "{x-qsa:expression(document._qsa && document._qsa.push(this))}", window.scrollBy(0, 0), r
            .parentNode.removeChild(r);
        document._qsa.length;
    ) t = document._qsa.shift(), t.style.removeAttribute("x-qsa"), n.push(t);
    return document._qsa = null, n;
}), document.querySelector ||
(document.querySelector = function(e) {
    var t = document.querySelectorAll(e);
    return t.length ? t[0] : null;
}), document.getElementsByClassName ||
(document.getElementsByClassName = function(e) {
    return e = String(e).replace(/^|\s+/g, "."), document.querySelectorAll(e);
}), Object.keys ||
(Object.keys = function(e) {
    if (e !== Object(e)) throw TypeError("Object.keys called on non-object");
    var t, r = [];
    for (t in e) Object.prototype.hasOwnProperty.call(e, t) && r.push(t);
    return r;
}), function(e) {
    var t = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    e.atob = e.atob ||
        function(e) {
            e = String(e);
            var r, n = 0, i = [], o = 0, a = 0;
            if (e = e.replace(/\s/g, ""), e
                .length %
                4 ===
                0 &&
                (e = e.replace(/=+$/, "")), e.length % 4 === 1) throw Error("InvalidCharacterError");
            if (/[^+/0-9A-Za-z]/.test(e)) throw Error("InvalidCharacterError");
            for (; n < e.length;)
                r = t.indexOf(e
                    .charAt(n)), o = o << 6 | r, a += 6, 24 === a &&
                (i.push(String.fromCharCode(o >> 16 & 255)), i.push(String.fromCharCode(o >> 8 & 255)), i
                    .push(String.fromCharCode(255 & o)), a = 0, o = 0), n += 1;
            return 12 === a
                    ? (o >>= 4, i.push(String.fromCharCode(255 & o)))
                    : 18 === a &&
                    (o >>= 2, i.push(String.fromCharCode(o >> 8 & 255)), i.push(String.fromCharCode(255 & o))),
                i.join("");
        }, e.btoa = e.btoa ||
        function(e) {
            e = String(e);
            var r, n, i, o, a, l, s, d = 0, h = [];
            if (/[^\x00-\xFF]/.test(e)) throw Error("InvalidCharacterError");
            for (; d < e.length;)
                r = e.charCodeAt(d++), n = e.charCodeAt(d++), i = e
                        .charCodeAt(d++), o = r >> 2, a = (3 & r) << 4 | n >> 4, l = (15 & n) << 2 | i >> 6, s = 63 & i,
                    d === e.length + 2 ? (l = 64, s = 64) : d === e.length + 1 && (s = 64), h
                        .push(t.charAt(o), t.charAt(a), t.charAt(l), t.charAt(s));
            return h.join("");
        };
}(this), function() {
    function e(t, r, n) {
        t.document;
        var i, o = t.currentStyle[r].match(/([\d\.]+)(%|cm|em|in|mm|pc|pt|)/) || [0, 0, ""], a = o[1], l = o[2];
        return n = n ? /%|em/.test(l) && t.parentElement ? e(t.parentElement, "fontSize", null) : 16 : n, i =
                "fontSize" == r ? n : /width/i.test(r) ? t.clientWidth : t.clientHeight,
            "%" == l
                ? a / 100 * i
                : "cm" == l
                ? .3937 * a * 96
                : "em" == l
                ? a * n
                : "in" == l
                ? 96 * a
                : "mm" == l ? .3937 * a * 96 / 10 : "pc" == l ? 12 * a * 96 / 72 : "pt" == l ? 96 * a / 72 : a;
    }

    function t(e, t) {
        var r = "border" == t ? "Width" : "",
            n = t + "Top" + r,
            i = t + "Right" + r,
            o = t + "Bottom" + r,
            a = t + "Left" + r;
        e[t] = (e[n] == e[i] && e[n] == e[o] && e[n] == e[a]
                ? [e[n]]
                : e[n] == e[o] && e[a] == e[i]
                ? [e[n], e[i]]
                : e[a] == e[i] ? [e[n], e[i], e[o]] : [e[n], e[i], e[o], e[a]])
            .join(" ");
    }

    function r(r) {
        var n, i = this, o = r.currentStyle, a = e(r, "fontSize"), l = function(e) { return"-" + e.toLowerCase() };
        for (n in o)
            if (Array.prototype.push
                    .call(i, "styleFloat" == n ? "float" : n.replace(/[A-Z]/, l)), "width" == n
            ) i[n] = r.offsetWidth + "px";
            else if ("height" == n) i[n] = r.offsetHeight + "px";
            else if ("styleFloat" == n) i.float = o[n];
            else if (/margin.|padding.|border.+W/.test(n) && "auto" != i[n]) i[n] = Math.round(e(r, n, a)) + "px";
            else if (/^outline/.test(n))
                try {
                    i[n] = o[n];
                } catch (s) {
                    i.outlineColor = o.color, i
                        .outlineStyle = i
                        .outlineStyle ||
                        "none", i.outlineWidth = i
                        .outlineWidth ||
                        "0px", i.outline = [i.outlineColor, i.outlineWidth, i.outlineStyle].join(" ");
                }
            else i[n] = o[n];
        t(i, "margin"), t(i, "padding"), t(i, "border"), i.fontSize = Math.round(a) + "px";
    }

    window.getComputedStyle ||
    (r.prototype = {
        constructor: r,
        getPropertyPriority: function() { throw new Error("NotSupportedError: DOM Exception 9") },
        getPropertyValue: function(e) {
            var t = e.replace(/-([a-z])/g, function(e) { return e = e.charAt ? e.split("") : e, e[1].toUpperCase() }),
                r = this[t];
            return r;
        },
        item: function(e) { return this[e] },
        removeProperty: function() { throw new Error("NoModificationAllowedError: DOM Exception 7") },
        setProperty: function() { throw new Error("NoModificationAllowedError: DOM Exception 7") },
        getPropertyCSSValue: function() { throw new Error("NotSupportedError: DOM Exception 9") }
    }, window.getComputedStyle = function(e) { return new r(e) });
}(), Object.prototype.hasOwnProperty ||
(Object.prototype.hasOwnProperty = function(e) {
    var t = this.__proto__ || this.constructor.prototype;
    return e in this && (!(e in t) || t[e] !== this[e]);
}), function(e, t) { e.augment = t() }(this,
    function() {
        "use strict";
        var e = function() {},
            t = Array.prototype.slice,
            r = function(r, n) {
                var i = e.prototype = "function" == typeof r ? r.prototype : r,
                    o = new e,
                    a = n.apply(o, t.call(arguments, 2).concat(i));
                if ("object" == typeof a) for (var l in a) o[l] = a[l];
                if (!o.hasOwnProperty("constructor")) return o;
                var s = o.constructor;
                return s.prototype = o, s;
            };
        return r.defclass = function(e) {
            var t = e.constructor;
            return t.prototype = e, t;
        }, r.extend = function(e, t) { return r(e, function(e) { return this.uber = e, t }) }, r;
    }), function(e, t) {
    function r(e, t, r, o) {
        var a = n(r.substr(r.lastIndexOf(e.domain)), e);
        a && i(null, o, a, t);
    }

    function n(e, t) {
        for (var r = { theme: p(A.settings.themes.gray, null), stylesheets: t.stylesheets, holderURL: [] },
            n = !1,
            i = String.fromCharCode(11),
            o = e.replace(/([^\\])\//g, "$1" + i).split(i),
            a = /%[0-9a-f]{2}/gi,
            l = o.length,
            s = 0;
            l > s;
            s++) {
            var d = o[s];
            if (d.match(a))
                try {
                    d = decodeURIComponent(d);
                } catch (h) {
                    d = o[s];
                }
            var u = !1;
            if (A.flags.dimensions.match(d)) n = !0, r.dimensions = A.flags.dimensions.output(d), u = !0;
            else if (A.flags.fluid.match(d)) n = !0, r.dimensions = A.flags.fluid.output(d), r.fluid = !0, u = !0;
            else if (A.flags.textmode.match(d)) r.textmode = A.flags.textmode.output(d), u = !0;
            else if (A.flags.colors.match(d)) {
                var c = A.flags.colors.output(d);
                r.theme = p(r.theme, c), u = !0;
            } else if (t.themes[d]) t.themes.hasOwnProperty(d) && (r.theme = p(t.themes[d], null)), u = !0;
            else if (A.flags.font.match(d)) r.font = A.flags.font.output(d), u = !0;
            else if (A.flags.auto.match(d)) r.auto = !0, u = !0;
            else if (A.flags.text.match(d)) r.text = A.flags.text.output(d), u = !0;
            else if (A.flags.random.match(d)) {
                null == A.vars.cache.themeKeys && (A.vars.cache.themeKeys = Object.keys(t.themes));
                var f = A.vars.cache.themeKeys[0 | Math.random() * A.vars.cache.themeKeys.length];
                r.theme = p(t.themes[f], null), u = !0;
            }
            u && r.holderURL.push(d);
        }
        return r.holderURL.unshift(t.domain), r.holderURL = r.holderURL.join("/"), n ? r : !1;
    }

    function i(e, t, r, n) {
        var i = r.dimensions, a = r.theme, l = i.width + "x" + i.height;
        if (e = null == e ? r.fluid ? "fluid" : "image" : e,
            null != r.text && (a.text = r.text, "object" === t.nodeName.toLowerCase())) {
            for (var d = a.text.split("\\n"), u = 0; u < d.length; u++) d[u] = b(d[u]);
            a.text = d.join("\\n");
        }
        var f = r.holderURL, g = p(n, null);
        r.font &&
            (a.font = r.font, !g.noFontFallback &&
                "img" === t.nodeName.toLowerCase() &&
                A.setup.supportsCanvas &&
                "svg" === g.renderer &&
                (g = p(g, { renderer: "canvas" }))), r
                .font &&
                "canvas" == g.renderer &&
                (g.reRender = !0), "background" == e
                ? null == t.getAttribute("data-background-src") && c(t, { "data-background-src": f })
                : c(t, { "data-src": f }), r.theme = a, t
                .holderData = { flags: r, renderSettings: g }, ("image" == e || "fluid" == e) &&
                c(t,
                { alt: a.text ? (a.text.length > 16 ? a.text.substring(0, 16) + "…" : a.text) + " [" + l + "]" : l }),
            "image" == e
                ? ("html" != g.renderer && r.auto || (t.style.width = i.width + "px", t.style.height = i.height + "px"),
                    "html" == g.renderer
                        ? t.style.backgroundColor = a.background
                        : (o(e, { dimensions: i, theme: a, flags: r }, t, g),
                            r.textmode && "exact" == r.textmode && (A.vars.resizableImages.push(t), s(t))))
                : "background" == e && "html" != g.renderer
                ? o(e, { dimensions: i, theme: a, flags: r }, t, g)
                : "fluid" == e &&
                ("%" == i.height.slice(-1)
                        ? t.style.height = i.height
                        : null != r.auto && r.auto || (t.style.height = i.height + "px"),
                    "%" == i.width.slice(-1)
                        ? t.style.width = i.width
                        : null != r.auto && r.auto || (t.style.width = i.width + "px"),
                    ("inline" == t.style.display || "" === t.style.display || "none" == t.style.display) &&
                    (t.style.display = "block"), h(t), "html" == g.renderer
                        ? t.style.backgroundColor = a.background
                        : (A.vars.resizableImages.push(t), s(t)));
    }

    function o(e, t, r, n) {
        function i() {
            var e = null;
            switch (n.renderer) {
            case"canvas":
                e = L(s);
                break;
            case"svg":
                e = O(s, n);
                break;
            default:
                throw"Holder: invalid renderer: " + n.renderer;
            }
            return e;
        }

        var o = null;
        switch (n.renderer) {
        case"svg":
            if (!A.setup.supportsSVG) return;
            break;
        case"canvas":
            if (!A.setup.supportsCanvas) return;
            break;
        default:
            return;
        }
        {
            var l = {
                    width: t.dimensions.width,
                    height: t.dimensions.height,
                    theme: t.theme,
                    flags: t
                        .flags
                },
                s = a(l);
            ({
                text: l.text,
                width: l.width,
                height: l.height,
                textHeight: l.font.size,
                font: l.font.family,
                fontWeight: l.font.weight,
                template: l.theme
            });
        }
        if (o = i(), null == o) throw"Holder: couldn't render placeholder";
        "background" == e
            ? (r.style.backgroundImage = "url(" + o + ")", r.style.backgroundSize = l.width + "px " + l.height + "px")
            : ("img" === r.nodeName.toLowerCase()
                    ? c(r, { src: o })
                    : "object" === r.nodeName.toLowerCase() && (c(r, { data: o }), c(r, { type: "image/svg+xml" })),
                n.reRender &&
                    setTimeout(function() {
                            var e = i();
                            if (null == e) throw"Holder: couldn't render placeholder";
                            "img" === r.nodeName.toLowerCase()
                                ? c(r, { src: e })
                                : "object" === r.nodeName.toLowerCase() &&
                                (c(r, { data: e }), c(r, { type: "image/svg+xml" }));
                        },
                        100)), c(r, { "data-holder-rendered": !0 });
    }

    function a(e) {
        function t(e, t, r, n) {
            t.width = r, t.height = n, e.width = Math.max(e.width, t.width), e.height += t.height, e.add(t);
        }

        switch (e.font = {
            family: e.theme.font ? e.theme.font : "Arial, Helvetica, Open Sans, sans-serif",
            size: l(e.width, e.height, e.theme.size ? e.theme.size : A.defaults.size),
            units: e.theme.units ? e.theme.units : A.defaults.units,
            weight: e.theme.fontweight ? e.theme.fontweight : "bold"
        }, e.text = e.theme.text ? e.theme.text : Math.floor(e.width) + "x" + Math.floor(e.height), e.flags.textmode) {
        case"literal":
            e.text = e.flags.dimensions.width + "x" + e.flags.dimensions.height;
            break;
        case"exact":
            if (!e.flags.exactDimensions) break;
            e.text = Math.floor(e.flags.exactDimensions.width) + "x" + Math.floor(e.flags.exactDimensions.height);
        }
        var r = new z({ width: e.width, height: e.height }),
            n = r.Shape,
            i = new n.Rect("holderBg", { fill: e.theme.background });
        i.resize(e.width, e.height), r.root.add(i);
        var o = new n.Group("holderTextGroup",
        { text: e.text, align: "center", font: e.font, fill: e.theme.foreground });
        o.moveTo(null, null, 1), r.root.add(o);
        var a = o.textPositionData = T(r);
        if (!a) throw"Holder: staging fallback not supported yet.";
        o.properties.leading = a.boundingBox.height;
        var s = null, d = null;
        if (a.lineCount > 1) {
            var h = 0, u = 0, c = e.width * A.setup.lineWrapRatio, f = 0;
            d = new n.Group("line" + f);
            for (var g = 0; g < a.words.length; g++) {
                var p = a.words[g];
                s = new n.Text(p.text);
                var m = "\\n" == p.text;
                (h + p.width >= c || m === !0) &&
                (t(o, d, h, o.properties.leading), h = 0, u += o.properties.leading, f += 1, d = new n
                    .Group("line" + f), d.y = u), m !== !0 && (s.moveTo(h, 0), h += a.spaceWidth + p.width, d.add(s));
            }
            t(o, d, h, o.properties.leading);
            for (var v in o.children) d = o.children[v], d.moveTo((o.width - d.width) / 2, null, null);
            o.moveTo((e
                    .width -
                    o.width) /
                2,
                (e.height - o.height) / 2,
                null), (e.height - o.height) / 2 < 0 && o.moveTo(null, 0, null);
        } else
            s = new n.Text(e.text), d = new n.Group("line0"), d.add(s), o.add(d), o
                .moveTo((e.width - a.boundingBox.width) / 2, (e.height - a.boundingBox.height) / 2, null);
        return r;
    }

    function l(e, t, r) {
        t = parseInt(t, 10), e = parseInt(e, 10);
        var n = Math.max(t, e), i = Math.min(t, e), o = A.defaults.scale, a = Math.min(.75 * i, .75 * n * o);
        return Math.round(Math.max(r, a));
    }

    function s(e) {
        var t;
        t = null == e || null == e.nodeType ? A.vars.resizableImages : [e];
        for (var r in t)
            if (t.hasOwnProperty(r)) {
                var n = t[r];
                if (n.holderData) {
                    var i = n.holderData.flags, a = d(n, k.invisibleErrorFn(s));
                    if (a) {
                        if (i.fluid && i.auto) {
                            var l = n.holderData.fluidConfig;
                            switch (l.mode) {
                            case"width":
                                a.height = a.width / l.ratio;
                                break;
                            case"height":
                                a.width = a.height * l.ratio;
                            }
                        }
                        var h = { dimensions: a, theme: i.theme, flags: i };
                        i
                            .textmode &&
                            "exact" == i.textmode &&
                            (i.exactDimensions = a, h
                                .dimensions = i.dimensions), o("image", h, n, n.holderData.renderSettings);
                    }
                }
            }
    }

    function d(e, t) {
        var r = { height: e.clientHeight, width: e.clientWidth };
        return r.height || r.width
            ? (e.removeAttribute("data-holder-invisible"), r)
            : (c(e, { "data-holder-invisible": !0 }), t.call(this, e), void 0);
    }

    function h(e) {
        if (e.holderData) {
            var t = d(e, k.invisibleErrorFn(h));
            if (t) {
                var r = e.holderData.flags,
                    n = {
                        fluidHeight: "%" == r.dimensions.height.slice(-1),
                        fluidWidth: "%" == r.dimensions.width.slice(-1),
                        mode: null,
                        initialDimensions: t
                    };
                n.fluidWidth && !n.fluidHeight
                    ? (n.mode = "width", n.ratio = n.initialDimensions.width / parseFloat(r.dimensions.height))
                    : !n.fluidWidth &&
                    n.fluidHeight &&
                    (n.mode = "height", n
                        .ratio = parseFloat(r.dimensions
                            .width) /
                        n.initialDimensions.height), e.holderData.fluidConfig = n;
            }
        }
    }

    function u(e, t) { return null == t ? E.createElement(e) : E.createElementNS(t, e) }

    function c(e, t) { for (var r in t) e.setAttribute(r, t[r]) }

    function f(e, t, r) {
        if (null == e) {
            e = u("svg", C);
            var n = u("defs", C);
            e.appendChild(n);
        }
        return e
            .webkitMatchesSelector &&
            e.setAttribute("xmlns", C), c(e,
        { width: t, height: r, viewBox: "0 0 " + t + " " + r, preserveAspectRatio: "none" }), e;
    }

    function g(e, r) {
        if (t.XMLSerializer) {
            {
                var n = new XMLSerializer, i = "", o = r.stylesheets;
                e.querySelector("defs");
            }
            if (r.svgXMLStylesheet) {
                for (var a = (new DOMParser).parseFromString("<xml />", "application/xml"), l = o.length - 1;
                    l >= 0;
                    l--) {
                    var s = a.createProcessingInstruction("xml-stylesheet", 'href="' + o[l] + '" rel="stylesheet"');
                    a.insertBefore(s, a.firstChild);
                }
                var d = a.createProcessingInstruction("xml", 'version="1.0" encoding="UTF-8" standalone="yes"');
                a.insertBefore(d, a.firstChild), a.removeChild(a.documentElement), i = n.serializeToString(a);
            }
            var h = n.serializeToString(e);
            return h = h.replace(/\&amp;(\#[0-9]{2,}\;)/g, "&$1"), i + h;
        }
    }

    function p(e, t) {
        var r = {};
        for (var n in e) e.hasOwnProperty(n) && (r[n] = e[n]);
        if (null != t) for (var i in t) t.hasOwnProperty(i) && (r[i] = t[i]);
        return r;
    }

    function m(e) {
        var t = [];
        for (var r in e) e.hasOwnProperty(r) && t.push(r + ":" + e[r]);
        return t.join(";");
    }

    function v(e) {
        A.vars.debounceTimer || e.call(this), A.vars
            .debounceTimer &&
            clearTimeout(A.vars.debounceTimer), A.vars
            .debounceTimer = setTimeout(function() { A.vars.debounceTimer = null, e.call(this) },
                A.setup.debounce);
    }

    function x() { v(function() { s(null) }) }

    function y(e) {
        var r = null;
        return"string" == typeof e
            ? r = E.querySelectorAll(e)
            : t.NodeList && e instanceof t.NodeList
            ? r = e
            : t.Node && e instanceof t.Node
            ? r = [e]
            : t.HTMLCollection && e instanceof t.HTMLCollection ? r = e : null === e && (r = []), r;
    }

    function w(e, t) {
        var r = new Image;
        r.onerror = function() { t.call(this, !1) }, r.onload = function() { t.call(this, !0) }, r.src = e;
    }

    function b(e) {
        for (var t = [], r = 0, n = e.length - 1;
            n >= 0;
            n--
        ) r = e.charCodeAt(n), r > 128 ? t.unshift(["&#", r, ";"].join("")) : t.unshift(e[n]);
        return t.join("");
    }

    function S(e) { return e.replace(/&#(\d+);/g, function(e, t) { return String.fromCharCode(t) }) }

    var C = "http://www.w3.org/2000/svg",
        E = t.document,
        k = {
            addTheme: function(e, t) {
                return null != e && null != t && (A.settings.themes[e] = t), delete A.vars.cache.themeKeys, this;
            },
            addImage: function(e, t) {
                var r = E.querySelectorAll(t);
                if (r.length)
                    for (var n = 0, i = r.length; i > n; n++) {
                        var o = u("img");
                        c(o, { "data-src": e }), r[n].appendChild(o);
                    }
                return this;
            },
            run: function(e) {
                e = e || {};
                var o = {};
                A.vars.preempted = !0;
                var a = p(A.settings, e);
                o.renderer = a
                    .renderer
                    ? a.renderer
                    : A.setup.renderer, -1 === A.setup.renderers.join(",").indexOf(o.renderer) &&
                (o.renderer = A.setup
                    .supportsSVG
                    ? "svg"
                    : A.setup
                    .supportsCanvas
                    ? "canvas"
                    : "html"), a.use_canvas ? o.renderer = "canvas" : a.use_svg && (o.renderer = "svg");
                var l = y(a.images), s = y(a.bgnodes), d = y(a.stylenodes), h = y(a.objects);
                o.stylesheets = [], o
                    .svgXMLStylesheet = !0, o.noFontFallback = a.noFontFallback ? a.noFontFallback : !1;
                for (var c = 0; c < d.length; c++) {
                    var f = d[c];
                    if (f.attributes.rel && f.attributes.href && "stylesheet" == f.attributes.rel.value) {
                        var g = f.attributes.href.value, m = u("a");
                        m.href = g;
                        var v = m.protocol + "//" + m.host + m.pathname + m.search;
                        o.stylesheets.push(v);
                    }
                }
                for (c = 0; c < s.length; c++) {
                    var x = t.getComputedStyle(s[c], null).getPropertyValue("background-image"),
                        b = s[c].getAttribute("data-background-src"),
                        S = null;
                    S = null == b ? x : b;
                    var C = null, E = "?" + a.domain + "/";
                    if (0 === S.indexOf(E)) C = S.slice(1);
                    else if (-1 != S.indexOf(E)) {
                        var k = S.substr(S.indexOf(E)).slice(1), T = k.match(/([^\"]*)"?\)/);
                        null != T && (C = T[1]);
                    }
                    if (null != C) {
                        var L = n(C, a);
                        L && i("background", s[c], L, o);
                    }
                }
                for (c = 0; c < h.length; c++) {
                    var O = h[c], z = {};
                    try {
                        z.data = O.getAttribute("data"), z.dataSrc = O.getAttribute("data-src");
                    } catch (F) {
                    }
                    var M = null != z.data && 0 === z.data.indexOf(a.domain),
                        D = null != z.dataSrc && 0 === z.dataSrc.indexOf(a.domain);
                    M ? r(a, o, z.data, O) : D && r(a, o, z.dataSrc, O);
                }
                for (c = 0; c < l.length; c++) {
                    var R = l[c], j = {};
                    try {
                        j.src = R.getAttribute("src"), j.dataSrc = R.getAttribute("data-src"), j.rendered = R
                            .getAttribute("data-holder-rendered");
                    } catch (F) {
                    }
                    var B = null != j.src,
                        P = null != j.dataSrc && 0 === j.dataSrc.indexOf(a.domain),
                        N = null != j.rendered && "true" == j.rendered;
                    B
                        ? 0 === j.src.indexOf(a.domain)
                        ? r(a, o, j.src, R)
                        : P &&
                        (N
                                ? r(a, o, j.dataSrc, R)
                                : !
                                function(e, t, n, i, o) {
                                    w(e, function(e) { e || r(t, n, i, o) });
                                }(j.src, a, o, j.dataSrc, R)
                        )
                        : P && r(a, o, j.dataSrc, R);
                }
                return this;
            },
            invisibleErrorFn: function() {
                return function(e) {
                    if (e.hasAttribute("data-holder-invisible")
                    ) throw"Holder: invisible placeholder"
                };
            }
        };
    k.add_theme = k.addTheme, k.add_image = k.addImage, k.invisible_error_fn = k.invisibleErrorFn;
    var A = {
            settings: {
                domain: "holder.js",
                images: "img",
                objects: "object",
                bgnodes: "body .holderjs",
                stylenodes: "head link.holderjs",
                stylesheets: [],
                themes: {
                    gray: { background: "#EEEEEE", foreground: "#AAAAAA" },
                    social: { background: "#3a5a97", foreground: "#FFFFFF" },
                    industrial: { background: "#434A52", foreground: "#C2F200" },
                    sky: { background: "#0D8FDB", foreground: "#FFFFFF" },
                    vine: { background: "#39DBAC", foreground: "#1E292C" },
                    lava: { background: "#F8591A", foreground: "#1C2846" }
                }
            },
            defaults: { size: 10, units: "pt", scale: 1 / 16 },
            flags: {
                dimensions: {
                    regex: /^(\d+)x(\d+)$/,
                    output: function(e) {
                        var t = this.regex.exec(e);
                        return{ width: +t[1], height: +t[2] };
                    }
                },
                fluid: {
                    regex: /^([0-9]+%?)x([0-9]+%?)$/,
                    output: function(e) {
                        var t = this.regex.exec(e);
                        return{ width: t[1], height: t[2] };
                    }
                },
                colors: {
                    regex: /(?:#|\^)([0-9a-f]{3,})\:(?:#|\^)([0-9a-f]{3,})/i,
                    output: function(e) {
                        var t = this.regex.exec(e);
                        return{ foreground: "#" + t[2], background: "#" + t[1] };
                    }
                },
                text: { regex: /text\:(.*)/, output: function(e) { return this.regex.exec(e)[1].replace("\\/", "/") } },
                font: { regex: /font\:(.*)/, output: function(e) { return this.regex.exec(e)[1] } },
                auto: { regex: /^auto$/ },
                textmode: { regex: /textmode\:(.*)/, output: function(e) { return this.regex.exec(e)[1] } },
                random: { regex: /^random$/ }
            }
        },
        T = function() {
            var e = null, t = null, r = null;
            return function(n) {
                var i = n.root;
                if (A.setup.supportsSVG) {
                    var o = !1, a = function(e) { return E.createTextNode(e) };
                    null == e && (o = !0), e = f(e, i.properties.width, i.properties.height),
                        o &&
                        (t = u("text", C), r = a(null), c(t, { x: 0 }), t.appendChild(r), e.appendChild(t), E.body
                            .appendChild(e), e.style
                            .visibility = "hidden", e.style
                            .position = "absolute", e.style.top = "-100%", e.style.left = "-100%");
                    var l = i.children.holderTextGroup, s = l.properties;
                    c(t,
                    {
                        y: s.font.size,
                        style: m({
                            "font-weight": s.font.weight,
                            "font-size": s.font.size + s.font.units,
                            "font-family": s.font.family,
                            "dominant-baseline": "middle"
                        })
                    }), r.nodeValue = s.text;
                    var d = t.getBBox(),
                        h = Math.ceil(d.width / (i.properties.width * A.setup.lineWrapRatio)),
                        g = s.text.split(" "),
                        p = s.text.match(/\\n/g);
                    h += null == p ? 0 : p.length, r.nodeValue = s.text.replace(/[ ]+/g, "");
                    var v = t.getComputedTextLength(),
                        x = d.width - v,
                        y = Math.round(x / Math.max(1, g.length - 1)),
                        w = [];
                    if (h > 1) {
                        r.nodeValue = "";
                        for (var b = 0; b < g.length; b++)
                            if (0 !== g[b].length) {
                                r.nodeValue = S(g[b]);
                                var k = t.getBBox();
                                w.push({ text: g[b], width: k.width });
                            }
                    }
                    return{ spaceWidth: y, lineCount: h, boundingBox: d, words: w };
                }
                return!1;
            };
        }(),
        L = function() {
            var e = u("canvas"), t = null;
            return function(r) {
                null == t && (t = e.getContext("2d"));
                var n = r.root;
                e.width = A.dpr(n.properties.width), e.height = A
                    .dpr(n.properties.height), t
                    .textBaseline = "middle", t.fillStyle = n.children.holderBg.properties.fill, t
                    .fillRect(0, 0, A.dpr(n.children.holderBg.width), A.dpr(n.children.holderBg.height));
                {
                    var i = n.children.holderTextGroup;
                    i.properties;
                }
                t.font = i.properties.font.weight +
                    " " +
                    A.dpr(i.properties.font.size) +
                    i.properties.font.units +
                    " " +
                    i.properties.font.family +
                    ", monospace", t.fillStyle = i.properties.fill;
                for (var o in i.children) {
                    var a = i.children[o];
                    for (var l in a.children) {
                        var s = a.children[l],
                            d = A.dpr(i.x + a.x + s.x),
                            h = A.dpr(i.y + a.y + s.y + i.properties.leading / 2);
                        t.fillText(s.properties.text, d, h);
                    }
                }
                return e.toDataURL("image/png");
            };
        }(),
        O = function() {
            if (t.XMLSerializer) {
                var e = f(null, 0, 0), r = u("rect", C);
                return e.appendChild(r), function(t, n) {
                    var i = t.root;
                    f(e, i.properties.width, i.properties.height);
                    for (var o = e.querySelectorAll("g"), a = 0; a < o.length; a++) o[a].parentNode.removeChild(o[a]);
                    c(r,
                    {
                        width: i.children.holderBg.width,
                        height: i.children.holderBg.height,
                        fill: i.children.holderBg.properties.fill
                    });
                    var l = i.children.holderTextGroup, s = l.properties, d = u("g", C);
                    e.appendChild(d);
                    for (var h in l.children) {
                        var p = l.children[h];
                        for (var v in p.children) {
                            var x = p.children[v],
                                y = l.x + p.x + x.x,
                                w = l.y + p.y + x.y + l.properties.leading / 2,
                                b = u("text", C),
                                S = E.createTextNode(null);
                            c(b,
                            {
                                x: y,
                                y: w,
                                style: m({
                                    fill: s.fill,
                                    "font-weight": s.font.weight,
                                    "font-family": s.font.family + ", monospace",
                                    "font-size": s.font.size + s.font.units,
                                    "dominant-baseline": "central"
                                })
                            }), S.nodeValue = x.properties.text, b.appendChild(S), d.appendChild(b);
                        }
                    }
                    var k = "data:image/svg+xml;base64," + btoa(unescape(encodeURIComponent(g(e, n))));
                    return k;
                };
            }
        }(),
        z = function(e) {
            function t(e, t) {
                for (var r in t) e[r] = t[r];
                return e;
            }

            var r = 1,
                n = augment.defclass({
                    constructor: function(e) {
                        r++, this.parent = null, this
                                .children = {}, this.id = r, this
                                .name = "n" + r, null != e && (this.name = e), this.x = 0, this.y = 0, this.z = 0,
                            this.width = 0, this.height = 0;
                    },
                    resize: function(e, t) { null != e && (this.width = e), null != t && (this.height = t) },
                    moveTo: function(e, t, r) {
                        this.x = null != e ? e : this.x, this
                            .y = null != t ? t : this.y, this.z = null != r ? r : this.z;
                    },
                    add: function(e) {
                        var t = e.name;
                        if (null != this.children[t]) throw"SceneGraph: child with that name already exists: " + t;
                        this.children[t] = e, e.parent = this;
                    }
                }),
                i = augment(n,
                    function(t) {
                        this.constructor = function() { t.constructor.call(this, "root"), this.properties = e };
                    }),
                o = augment(n,
                    function(e) {
                        function r(r, n) {
                            if (e.constructor
                                .call(this, r), this.properties = { fill: "#000" }, null != n) t(this.properties, n);
                            else if (null != r && "string" != typeof r) throw"SceneGraph: invalid node name";
                        }

                        this.Group = augment.extend(this, { constructor: r, type: "group" }), this.Rect = augment
                            .extend(this, { constructor: r, type: "rect" }), this.Text = augment
                            .extend(this,
                            { constructor: function(e) { r.call(this), this.properties.text = e }, type: "text" });
                    }),
                a = new i;
            return this.Shape = o, this.root = a, this;
        };
    for (var F in A.flags) A.flags.hasOwnProperty(F) && (A.flags[F].match = function(e) { return e.match(this.regex) });
    A.setup = {
        renderer: "html",
        debounce: 100,
        ratio: 1,
        supportsCanvas: !1,
        supportsSVG: !1,
        lineWrapRatio: .9,
        renderers: ["html", "canvas", "svg"]
    }, A.dpr = function(e) { return e * A.setup.ratio }, A
        .vars = { preempted: !1, resizableImages: [], debounceTimer: null, cache: {} }, function() {
        var e = 1, r = 1, n = u("canvas"), i = null;
        n.getContext &&
            -1 != n.toDataURL("image/png").indexOf("data:image/png") &&
            (A.setup.renderer = "canvas", i = n
                .getContext("2d"), A.setup.supportsCanvas = !0), A.setup.supportsCanvas &&
        (e = t.devicePixelRatio || 1, r = i.webkitBackingStorePixelRatio ||
            i.mozBackingStorePixelRatio ||
            i.msBackingStorePixelRatio ||
            i.oBackingStorePixelRatio ||
            i.backingStorePixelRatio ||
            1), A.setup.ratio = e / r, E.createElementNS &&
            E.createElementNS(C, "svg").createSVGRect &&
            (A.setup.renderer = "svg", A.setup.supportsSVG = !0);
    }(), e(k, "Holder", t), t.onDomReady &&
        t.onDomReady(function() {
            A.vars.preempted || k.run(), t.addEventListener
                ? (t.addEventListener("resize", x, !1), t.addEventListener("orientationchange", x, !1))
                : t.attachEvent("onresize", x), "object" == typeof t.Turbolinks &&
                t.document.addEventListener("page:change", function() { k.run() });
        });
}(function(e, t, r) {
        var n = "function" == typeof define && define.amd;
        n ? define(e) : r[t] = e;
    },
    this);