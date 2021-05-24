<@controls name="comment">
<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-comment-o"></i> 作者推荐</h3>
    </div>
    <div class="panel-body">
		<@sidebar method="hotusers">
			<ul class="list">
				<#list results as row>
					<li>${row_index + 1}. <a href="${base}/users/${row.id}">${row.name}</a></li>
				</#list>
			</ul>
		</@sidebar>
    </div>
</div>
</@controls>

<div class="panel panel-default widget">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-area-chart"></i> 热门文章</h3>
	</div>
	<div class="panel-body">
		<@sidebar method="hottest_posts">
		<ul class="list">
			<#list results as row>
            <li>${row_index + 1}. <a href="${base}/post/${row.id}">${row.title}</a></li>
			</#list>
		</ul>
		</@sidebar>
	</div>
</div>

<div class="panel panel-default widget">
	<div class="panel-heading">
		<h3 class="panel-title"><i class="fa fa-bars"></i> 最新发布</h3>
	</div>
	<div class="panel-body">
		<@sidebar method="latest_posts">
			<ul class="list">
				<#list results as row>
					<li>${row_index + 1}. <a href="${base}/post/${row.id}">${row.title}</a></li>
				</#list>
			</ul>
		</@sidebar>
	</div>
</div>