{% if page.comments && theme.gitalk.enable %}
  <link rel="stylesheet" href="https://unpkg.com/gitalk/dist/gitalk.css">
  <script src="https://unpkg.com/gitalk/dist/gitalk.min.js"></script>
  <script type="text/javascript">
    var gitalk = new Gitalk({
      clientID: '{{ theme.gitalk.client_id }}',
      clientSecret: '{{ theme.gitalk.client_secret }}',
      repo: '{{ theme.gitalk.repo }}',
      owner: '{{ theme.gitalk.owner }}',
      admin: ['{{ theme.gitalk.admin_user }}'],
      id:'{{ date(page.date, "YYYYMMDDHHmmss") }}',
      labels: '{{ theme.gitalk.labels }}'.split(',').filter(l => l),
      perPage: {{ theme.gitalk.per_page }},
      createIssueManually: {{ theme.gitalk.create_issue_manually }}
    })
    gitalk.render('gitalk-container')           
  </script>
{% endif %}