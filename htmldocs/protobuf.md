
<body onload="main()">
<div class="document" id="documentId">
<p class="module-desc">This act as an Asyncnet extension for Protocol Buffer (Big Endian)</p>
<div class="section" id="12">
<h1><a class="toc-backref" href="#12">Procs</a></h1>
<dl class="item">
<a id="readInt,AsyncSocket"></a>
<dt><pre><span class="Keyword">proc</span> <a href="#readInt%2CAsyncSocket"><span class="Identifier">readInt</span></a><span class="Other">(</span><span class="Identifier">client</span><span class="Other">:</span> <span class="Identifier">AsyncSocket</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Future</span><span class="Other">[</span><span class="Identifier">int</span><span class="Other">]</span> <span><span class="Other">{</span><span class="Other pragmadots">...</span><span class="Other">}</span></span><span class="pragmawrap"><span class="Other">{.</span><span class="pragma">
    <span class="Identifier">raises</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">Exception</span><span class="Other">,</span> <span class="Identifier">ValueError</span><span class="Other">]</span><span class="Other">,</span> <span class="Identifier">tags</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">RootEffect</span><span class="Other">]</span></span><span class="Other">.}</span></span></pre></dt>
<dd>

Read an int stored in both VarInt and VarLong format using decoding <em>[Google Protocol Buffers](http://code.google.com/apis/protocolbuffers/docs/encoding.html)</em> Args:<ul class="simple"><li><strong>client</strong>: AsyncSocket from asyncnet</li>
</ul>


</dd>
<a id="readString,AsyncSocket"></a>
<dt><pre><span class="Keyword">proc</span> <a href="#readString%2CAsyncSocket"><span class="Identifier">readString</span></a><span class="Other">(</span><span class="Identifier">client</span><span class="Other">:</span> <span class="Identifier">AsyncSocket</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Future</span><span class="Other">[</span><span class="Identifier">string</span><span class="Other">]</span> <span><span class="Other">{</span><span class="Other pragmadots">...</span><span class="Other">}</span></span><span class="pragmawrap"><span class="Other">{.</span><span class="pragma">
    <span class="Identifier">raises</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">Exception</span><span class="Other">,</span> <span class="Identifier">ValueError</span><span class="Other">]</span><span class="Other">,</span> <span class="Identifier">tags</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">RootEffect</span><span class="Other">]</span></span><span class="Other">.}</span></span></pre></dt>
<dd>

Read a string with its VarInt length Args:<ul class="simple"><li><strong>client</strong>: AsyncSocket from asyncnet</li>
</ul>


</dd>
<a id="readUShort,AsyncSocket"></a>
<dt><pre><span class="Keyword">proc</span> <a href="#readUShort%2CAsyncSocket"><span class="Identifier">readUShort</span></a><span class="Other">(</span><span class="Identifier">client</span><span class="Other">:</span> <span class="Identifier">AsyncSocket</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Future</span><span class="Other">[</span><span class="Identifier">int</span><span class="Other">]</span> <span><span class="Other">{</span><span class="Other pragmadots">...</span><span class="Other">}</span></span><span class="pragmawrap"><span class="Other">{.</span><span class="pragma">
    <span class="Identifier">raises</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">Exception</span><span class="Other">,</span> <span class="Identifier">ValueError</span><span class="Other">]</span><span class="Other">,</span> <span class="Identifier">tags</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">RootEffect</span><span class="Other">]</span></span><span class="Other">.}</span></span></pre></dt>
<dd>

Read an unsigned short Args:<ul class="simple"><li><strong>client</strong>: AsyncSocket from asyncnet</li>
</ul>


</dd>
<a id="readLong,AsyncSocket"></a>
<dt><pre><span class="Keyword">proc</span> <a href="#readLong%2CAsyncSocket"><span class="Identifier">readLong</span></a><span class="Other">(</span><span class="Identifier">client</span><span class="Other">:</span> <span class="Identifier">AsyncSocket</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">Future</span><span class="Other">[</span><span class="Identifier">int</span><span class="Other">]</span> <span><span class="Other">{</span><span class="Other pragmadots">...</span><span class="Other">}</span></span><span class="pragmawrap"><span class="Other">{.</span><span class="pragma">
    <span class="Identifier">raises</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">Exception</span><span class="Other">,</span> <span class="Identifier">ValueError</span><span class="Other">]</span><span class="Other">,</span> <span class="Identifier">tags</span><span class="Other">:</span> <span class="Other">[</span><span class="Identifier">RootEffect</span><span class="Other">]</span></span><span class="Other">.}</span></span></pre></dt>
<dd>

Read a Long (int64) Args:<ul class="simple"><li><strong>client</strong>: AsyncSocket from asyncnet</li>
</ul>


</dd>

</dl></div>
<div class="section" id="13">
<h1><a class="toc-backref" href="#13">Funcs</a></h1>
<dl class="item">
<a id="writeInt,int"></a>
<dt><pre><span class="Keyword">func</span> <a href="#writeInt%2Cint"><span class="Identifier">writeInt</span></a><span class="Other">(</span><span class="Identifier">value</span><span class="Other">:</span> <span class="Identifier">int</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">string</span> <span><span class="Other">{</span><span class="Other pragmadots">...</span><span class="Other">}</span></span><span class="pragmawrap"><span class="Other">{.</span><span class="pragma"><span class="Identifier">raises</span><span class="Other">:</span> <span class="Other">[</span><span class="Other">]</span><span class="Other">,</span> <span class="Identifier">tags</span><span class="Other">:</span> <span class="Other">[</span><span class="Other">]</span></span><span class="Other">.}</span></span></pre></dt>
<dd>

Write an int stored in VarInt/VarLong format using encoding <em>[Google Protocol Buffers](http://code.google.com/apis/protocolbuffers/docs/encoding.html)</em> Args:<ul class="simple"><li><strong>value</strong>: Decoded Number</li>
</ul>


</dd>

</dl></div>
<div class="section" id="18">
<h1><a class="toc-backref" href="#18">Templates</a></h1>
<dl class="item">
<a id="writeString.t,string"></a>
<dt><pre><span class="Keyword">template</span> <a href="#writeString.t%2Cstring"><span class="Identifier">writeString</span></a><span class="Other">(</span><span class="Identifier">text</span><span class="Other">:</span> <span class="Identifier">string</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">string</span></pre></dt>
<dd>

Write a string with its VarInt length Args:<ul class="simple"><li><strong>text</strong>: Decoded text</li>
</ul>


</dd>
<a id="writeUShort.t,int"></a>
<dt><pre><span class="Keyword">template</span> <a href="#writeUShort.t%2Cint"><span class="Identifier">writeUShort</span></a><span class="Other">(</span><span class="Identifier">short</span><span class="Other">:</span> <span class="Identifier">int</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">string</span></pre></dt>
<dd>

Convert an unsigned short to bytes Args:<ul class="simple"><li><strong>short</strong>: Decoded Unsigned Short</li>
</ul>


</dd>
<a id="writeLong.t,int"></a>
<dt><pre><span class="Keyword">template</span> <a href="#writeLong.t%2Cint"><span class="Identifier">writeLong</span></a><span class="Other">(</span><span class="Identifier">long</span><span class="Other">:</span> <span class="Identifier">int</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">string</span></pre></dt>
<dd>

Convert a Long to bytes Args:<ul class="simple"><li><strong>long</strong>: Decoded Long</li>
</ul>


</dd>
<a id="writeJson.t,JsonNode"></a>
<dt><pre><span class="Keyword">template</span> <a href="#writeJson.t%2CJsonNode"><span class="Identifier">writeJson</span></a><span class="Other">(</span><span class="Identifier">json</span><span class="Other">:</span> <span class="Identifier">JsonNode</span><span class="Other">)</span><span class="Other">:</span> <span class="Identifier">string</span></pre></dt>
<dd>

Convert a <tt class="docutils literal"><span class="pre">JsonNode</span></tt> to bytes Args:<ul class="simple"><li><strong>json</strong>: JsonNode object</li>
</ul>


</dd>

</dl></div>

  </div>
</div>

    <div class="row">
      <div class="twelve-columns footer">
        <span class="nim-sprite"></span>
        <br/>
        <small style="color: var(--hint);">Made with Nim. Generated: 2021-07-11 14:40:19 UTC</small>
      </div>
    </div>
  </div>
</div>

</body>
</html>
