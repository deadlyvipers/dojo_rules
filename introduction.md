<html ng-app="campus" ng-controller="pageTitleController" class="js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths ng-scope" id="sv"><head><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide{display:none !important;}ng\:form{display:block;}.ng-animate-block-transitions{transition:0s all!important;-webkit-transition:0s all!important;}</style>
    <title ng-bind="pageTitle" class="ng-binding">Collaboration Using Pull Requests - Mastering GitHub</title>
<!-- Open Graph protocol: -->
  <meta property="og:title" content="Mastering GitHub">
  <meta property="og:description" content="">
  <meta property="og:type" content="website">
  <meta property="og:locale" content="en_US">
  <meta property="og:url" content="https://www.codeschool.com/courses/mastering-github">
  <meta property="og:image" content="http://campus.codeschool.com/mastering-github/achievements/badges/badge-course.png">
  <meta property="og:site_name" content="Code School">
  <meta property="fb:admins" content="5200953"><meta property="fb:admins" content="40012883">
  <meta content="summary" name="twitter:card">
  <meta content="@codeschool" name="twitter:site">
  <meta content="Mastering GitHub" name="twitter:title">
  <meta content="Learn the how to Master GitHub when working with teams." name="twitter:description">
  <meta content="" name="twitter:creator">
  <meta content="http://campus.codeschool.com/mastering-github/achievements/badges/badge-course.png" name="twitter:image:src">
  <meta content="" name="twitter:domain">

<link href="http://dhg7upb7j7jqa.cloudfront.net/mastering_github/assets/images/favicon-68efc72f-af5c-44fe-9ad0-0a3298d87993.ico" rel="icon" type="image/ico">
<link href="http://dhg7upb7j7jqa.cloudfront.net/course-assets/mastering-github/level/1/course-68efc72f-af5c-44fe-9ad0-0a3298d87993.css" rel="stylesheet" type="text/css">
<script type="text/javascript" async="" src="http://www.google-analytics.com/plugins/ga/inpage_linkid.js" id="undefined"></script><script type="text/javascript" async="" src="http://stats.g.doubleclick.net/dc.js"></script><script type="text/javascript">
/* <![CDATA[ */
var _gaq = _gaq || [];
_gaq.push(['ua452961884._require', 'inpage_linkid', '//www.google-analytics.com/plugins/ga/inpage_linkid.js']);_gaq.push(['ua974074923._require', 'inpage_linkid', '//www.google-analytics.com/plugins/ga/inpage_linkid.js']);
_gaq.push(['ua452961884._setAccount', 'UA-45296188-4']);_gaq.push(['ua974074923._setAccount', 'UA-9740749-23']);
_gaq.push(['ua974074923._setDomainName', 'none']);_gaq.push(['ua974074923._setAllowLinker', true]);_gaq.push(['ua974074923._addIgnoredRef', 'codeschool.com']);
_gaq.push(['ua974074923._addIgnoredRef', 'campus.codeschool.com']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
var _gaq = _gaq || [];
_gaq.push(['ua452961884._trackPageview', '/courses/mastering-github']);
_gaq.push(['ua974074923._trackPageview', '/campus.codeschool.com/courses/mastering-github']);/* ]]> */
</script>


    <meta content="authenticity_token" name="csrf-param">
<meta content="ICHkLwihFoPgbCf5NX3r/xMwmkuc95rQAv6hjvwE3Zc=" name="csrf-token">
  <script type="text/javascript" src="//cdn.sublimevideo.net/c/sa/2.6.5/sa.js?t=33r2xa49" async=""></script><script type="text/javascript" src="//cdn.sublimevideo.net/s2/33r2xa49.js" async=""></script><style type="text/css">#sv .sublimevideo-Label{overflow:hidden!important;text-align:left!important;} #sv .sublimevideo-Button{background:none!important;border:none!important;margin:0!important;outline:none!important;padding:0!important;font-size:0!important;line-height:0!important;overflow:visible!important;cursor:pointer!important;} #sv .sublimevideo-View{-webkit-tap-highlight-color:rgba(0,0,0,0)!important;display:block!important;position:absolute!important;text-shadow:none!important;border:none!important;z-index:auto!important;} #sv .sublimevideo-VideoView{line-height:0!important;background:rgba(0, 0, 0, 0.99)!important;direction:ltr!important;padding:0!important;text-align:center!important;-webkit-user-select:none!important;-moz-user-select:none!important;} #sv .sublimevideo-VideoView * {padding:0!important;margin:0!important;border:none!important;overflow:visible!important;background:none!important;float:none!important;z-index:auto!important;-moz-border-radius:0!important;-webkit-border-radius:0!important;border-radius:0!important;-moz-box-shadow:none!important;-webkit-box-shadow:none!important;box-shadow:none!important;text-transform:none!important;text-decoration:none!important;max-width:none!important;top:auto!important;bottom:auto!important;left:auto!important;right:auto!important;} </style><style type="text/css">#sv .sublimevideo-subtitles0 * {font-size:12px!important;font-family:HelveticaNeue,Helvetica,Arial,sans-serif!important;padding:0!important;margin:0!important;border:none!important;overflow:visible!important;float:none!important;-moz-border-radius:0!important;-webkit-border-radius:0!important;border-radius:0!important;-moz-box-shadow:none!important;-webkit-box-shadow:none!important;box-shadow:none!important;text-transform:none!important;text-decoration:none!important;max-width:none!important;} </style><style type="text/css">#sv .sublimevideo-subtitles1 * {font-size:12px!important;font-family:HelveticaNeue,Helvetica,Arial,sans-serif!important;padding:0!important;margin:0!important;border:none!important;overflow:visible!important;float:none!important;-moz-border-radius:0!important;-webkit-border-radius:0!important;border-radius:0!important;-moz-box-shadow:none!important;-webkit-box-shadow:none!important;box-shadow:none!important;text-transform:none!important;text-decoration:none!important;max-width:none!important;} </style><style type="text/css">#sv .sublimevideo-subtitles2 * {font-size:12px!important;font-family:HelveticaNeue,Helvetica,Arial,sans-serif!important;padding:0!important;margin:0!important;border:none!important;overflow:visible!important;float:none!important;-moz-border-radius:0!important;-webkit-border-radius:0!important;border-radius:0!important;-moz-box-shadow:none!important;-webkit-box-shadow:none!important;box-shadow:none!important;text-transform:none!important;text-decoration:none!important;max-width:none!important;} </style><link type="text/css" rel="stylesheet" charset="UTF-8" href="https://translate.googleapis.com/translate_static/css/translateelement.css"></head>
  <body cz-shortcut-listen="true" style="">


  <base href="/courses/mastering-github/">
<div class="campus-course ng-isolate-scope" cache-key="68efc72f-af5c-44fe-9ad0-0a3298d87993" course-identifier="mastering-github" user-has-access="false">
  <!-- ui-view-anchor --><div class="campus-course-view" ui-view=""><div class="campus-course-window ng-scope is-omnibar-enabled is-course-bar-enabled" ng-class="enabledUiClasses()">
  <!-- ngIf: optionalUi.courseBar --><header class="bar courseBar has-dropdown ng-scope" ng-if="optionalUi.courseBar">
  <div class="bar-item bar-item--west">
    <div class="brand" itemscope="" itemtype="http://schema.org/Organization">
      <a itemprop="url" class="brand-link" ui-sref="root.courseContent({queryString: &quot;&quot;})" href="/">
        <img itemprop="logo" class="brand-img" ng-src="http://dhg7upb7j7jqa.cloudfront.net/mastering_github/assets/images/logo-course-68efc72f-af5c-44fe-9ad0-0a3298d87993.svg" src="http://dhg7upb7j7jqa.cloudfront.net/mastering_github/assets/images/logo-course-68efc72f-af5c-44fe-9ad0-0a3298d87993.svg">
      </a>
    </div>
  </div>

  <div class="bar-item bar-item--east">
    <div class="has-menu session ng-scope" ng-mouseleave="clearActive()">
  <a href="http://www.codeschool.com" class="session-logo ng-scope">
    <svg xmlns="http://www.w3.org/2000/svg" width="166.6" height="30" viewBox="-22.2 -3.9 166.6 30" enable-background="new -22.2 -3.9 166.6 30"><path fill="#4D4F50" d="M24.5 16c-2.5 0-4.1-1.5-4.1-4.7s1.6-4.7 4.1-4.7c.9 0 1.9.3 2.7.8l1.6-3c-1.4-.7-3-1.1-4.6-1.1-4.8 0-8.3 3-8.3 8.1s3.5 8.1 8.3 8.1c1.4 0 2.7-.3 4-.8l-1.6-3c-.7.1-1.4.3-2.1.3zM94.1 10.7c.7 0 1.3.2 1.7.7l.9-2.6c-1-.6-2.1-.9-3.4-.9-3.3 0-6 2.1-6 5.7s2.7 5.7 6 5.7c1.3 0 2.4-.3 3.4-.9l-.9-2.6c-.4.5-1.1.7-1.7.7-1.4 0-2.5-.8-2.5-2.8 0-2.2 1.1-3 2.5-3zM34.7 7.9c-3.3 0-6 2.1-6 5.7s2.7 5.7 6 5.7 6-2.1 6-5.7-2.7-5.7-6-5.7zm0 8.8c-1 0-1.7-1.2-1.7-3.2s.8-3.2 1.7-3.2c1 0 1.7 1.2 1.7 3.2 0 2.1-.7 3.2-1.7 3.2zM117.8 7.9c-3.3 0-6 2.1-6 5.7s2.7 5.7 6 5.7 6-2.1 6-5.7-2.7-5.7-6-5.7zm0 8.8c-1 0-1.7-1.2-1.7-3.2s.8-3.2 1.7-3.2 1.7 1.2 1.7 3.2c.1 2.1-.7 3.2-1.7 3.2zM131.1 7.9c-3.3 0-6 2.1-6 5.7s2.7 5.7 6 5.7 6-2.1 6-5.7c.1-3.6-2.6-5.7-6-5.7zm0 8.8c-1 0-1.7-1.2-1.7-3.2s.8-3.2 1.7-3.2c1 0 1.7 1.2 1.7 3.2.1 2.1-.7 3.2-1.7 3.2zM62.9 16.6c-1 0-1.7-.6-2-1.8 3.6.1 5.8-1.4 5.8-3.5s-1.9-3.4-4.2-3.4c-3.3 0-6 2.1-6 5.7s2.4 5.7 5.7 5.7c3.2 0 5-2.4 5-2.4l-1.1-1.9s-1.6 1.6-3.2 1.6zm-.4-6.2c.6 0 .9.5.9 1.1 0 1-.6 1.5-2.6 1.6.1-1.8.8-2.7 1.7-2.7zM53.9 15v-12.3h-4.1v6.9c-.8-1.1-2-1.8-3.3-1.8-2.4 0-4.4 2.1-4.4 5.7s2 5.7 4.4 5.7c1.5 0 2.8-.8 3.6-2.1.5 1.5 1.8 2.1 3.2 2.1 1.4 0 2.1-.4 2.1-.4l.3-2.9c-.1 0-1.8 1-1.8-.9zm-5.8 1.6c-1 0-1.7-1.1-1.7-3s.8-3 1.7-3c1 0 1.7 1.1 1.7 3s-.8 3-1.7 3zM109.1 15v-4.1c0-1.8-.6-3-2.6-3-1.6 0-3 .8-3.7 2.1v-7.3h-4.1v16.1h4.1v-3.8c0-3.5 1.1-4.5 1.7-4.5.4 0 .7.3.7 1.1v3.8c0 2.8 1.6 3.8 3.4 3.8 1.4 0 2.1-.4 2.1-.4l.3-2.9c-.1 0-1.9.8-1.9-.9zM142.7 15v-12.3h-4.1v12.7c0 2.8 1.6 3.8 3.4 3.8 1.4 0 2.1-.4 2.1-.4l.3-2.9s-1.7 1-1.7-.9zM81.7 9.4c-2.5-.9-3.1-1.2-3.1-2s.5-1.2 1.4-1.2c2 0 4.5 1.4 4.5 1.4l1.1-2.7s-1.9-1.7-5.4-1.7c-3.8 0-5.8 2-5.8 4.7 0 2 1 3.8 4.1 4.8 2.5.8 2.9 1.4 2.9 2.2 0 1-.7 1.4-1.8 1.4-2.3 0-5-1.8-5-1.8l-1.4 2.7s2.7 2.2 6.4 2.2c4 0 6.2-2 6.2-5 .1-2.3-.5-3.7-4.1-5z"></path><g fill="#4CADC1"><path d="M-5.6 3.1v3.8l4.4 4.2-4.4 4.1v3.8l8.5-7.9zM-8.9 15.2l-4.3-4.1 4.3-4.2v-3.8l-8.4 8 8.4 7.9z"></path></g><path fill="#4CADC1" d="M-7.2-3.9c-8.3 0-15 6.7-15 15s6.7 15 15 15 15-6.7 15-15-6.7-15-15-15zm0 27.3c-6.8 0-12.3-5.5-12.3-12.3s5.5-12.4 12.3-12.4 12.3 5.6 12.3 12.4-5.5 12.3-12.3 12.3z"></path></svg>
  </a>

  <a href="" class="session-toggle ng-scope" ng-mouseover="setActive()">
    <div class="user-media--session bucket-media user-media ng-scope" width="40" height="40">
  <img class="thumb" ng-src="http://www.gravatar.com/avatar/95af758829b1338c9099b2009f1840a0" width="40" height="40" src="http://www.gravatar.com/avatar/95af758829b1338c9099b2009f1840a0">
</div>
  </a>

  <nav class="ng-scope">
    <ul class="dropdown-menu session-menu"><li class="dropdown-item session-item">
  <a href="" ng-click="openUserStatsModal()" ng-transclude="" class="dropdown-link session-link ng-scope"><span class="ng-scope">
    My Stats
  </span></a>
</li><li class="dropdown-item session-item session-item--user">
  <a class="dropdown-link session-link" href="http://www.codeschool.com/account">My Account</a>
</li><li class="dropdown-item session-item">
  <a class="dropdown-link session-link" href="https://www.codeschool.com/support">
    Support
  </a>
</li><li class="dropdown-item session-item">
  <a class="dropdown-link session-link" href="http://discuss.codeschool.com/">
    Discuss
  </a>
</li></ul>
  </nav>
</div>
  </div>
</header><!-- end ngIf: optionalUi.courseBar -->
  <!-- ngIf: !isHidden -->
  <!-- ui-view-anchor --><main class="content" ui-view=""><div class="content-data ng-scope ng-isolate-scope" ng-class="{&quot;is-complete&quot;: isComplete, &quot;is-editing&quot;: isEditing}" page-data="{courseIdentifier: &quot;mastering-github&quot;, queryString: &quot;level/1/section/3/pull-request&quot;}">
  <div class="course-content singleform-server_challenge">
<div class="cell cell--instructions content-instructions ng-scope">
  <div class="content-header">
    <header class="header--instructions header ng-scope" number-divider=".">
  <h1 class="header-title ng-binding">
    <!-- ngIf: !disableNumbers --><b class="header-num ng-scope ng-binding" ng-if="!disableNumbers">1.6</b><!-- end ngIf: !disableNumbers -->
    Collaboration Using Pull Requests <!-- ngIf: isPending -->

    <!-- ngIf: isRequiredPage --><span possible-points="true" class="header-label label ng-scope ng-binding" ng-if="isRequiredPage">250 pts</span><!-- end ngIf: isRequiredPage -->
  </h1>
</header>
  </div>
  <div class="objective-body ng-scope"><p class="ng-scope">Now that we've introduced ourselves to the Dojo in our local repo, it's time to share this change with the rest of the world by incorporating our change into the "deadlyvipers/dojo_rules" repo.</p>
</div>
  <div class="fill-in-blank ng-scope">
  <p><p class="ng-scope">GitHub Username: <span class="fill-in-blank-content has-stateInput--username has-stateInput ng-scope is-incorrect" ng-class="{'is-correct': isCorrect, 'is-incorrect': isIncorrect}" data="data[&quot;username&quot;]"><input class="form-input form-input--inline stateInput ng-scope ng-isolate-scope ng-valid ng-dirty is-incorrect" type="text" ng-class="{'is-incorrect': isIncorrect, 'is-correct': isCorrect }" ng-model="content" binding="username" ng-keydown="handleKeyDown($event)" style="width: 48px;">
  <span class="stateInput-icn" popover="" ng-show="errorMessage" popover-message="errorMessage" popover-placement="bottom" data-original-title="" title="">
    <a class="stateInput-icn-link" href="">
      <b class="srt">X</b>
    </a>
  </span>
  <span class="stateInput-icn ng-hide" ng-show="isCorrect">
    <a class="stateInput-icn-link" href="">
      <b class="srt">Correct</b>
    </a>
  </span>
</span></p></p>
</div>
  <div class="is-longform">
    <a class="btnList-btn btnList-btn--secondary btn btn--hint btn--thin btn--offset btn--offset--thin course-hint-button ng-scope is-2-left is--left" ng-class="{&quot;is-disabled&quot;: buttonDisabled, &quot;is-submitting&quot;: buttonDisabled}" href="" ng-click="getNextHint()">
  <span class="loader-el"></span>
  <span class="loader-text ng-binding">1 Hint Remaining</span>
</a>
    <div class="task-list ng-scope">
  <div class="group mbs">
    <h3 class="fl">Objectives</h3>
    <ol class="list list--object dotList fr">
      <!-- ngRepeat: task in tasks --><li class="list-item dotList-item ng-scope is-submitting is-complete" ng-class="{'is-active': isActive, 'is-complete': isComplete, 'is-submitting': isSubmitting}" ng-repeat="task in tasks" task-data="task" index="1">
  <a href="" class="dotList-item-link" ng-click="activateResource()">
    <b class="srt ng-binding">1</b>
  </a>
</li><!-- end ngRepeat: task in tasks --><li class="list-item dotList-item ng-scope is-active" ng-class="{'is-active': isActive, 'is-complete': isComplete, 'is-submitting': isSubmitting}" ng-repeat="task in tasks" task-data="task" index="2">
  <a href="" class="dotList-item-link" ng-click="activateResource()">
    <b class="srt ng-binding">2</b>
  </a>
</li><!-- end ngRepeat: task in tasks -->
    </ol>
  </div>

  <!-- ngIf: tasksComplete -->

  <ol class="has-widget mbm">
    <!-- ngRepeat: task in tasks --><li class="card card--a widget widget--task ng-scope is-complete" ng-class="{'is-complete': isComplete, 'is-active': !isHidden}" ng-repeat="task in tasks" task-data="task" index="1">
  <div class="widget-content widget-row">
    <div class="widget-content-md">
      <div compile-html="<p>Create a pull request for your &quot;dojo_rules&quot; repository back to where you forked it from. Once you've created it on GitHub, click &quot;Submit Answer&quot;.</p>
"><p class="ng-scope">Create a pull request for your "dojo_rules" repository back to where you forked it from. Once you've created it on GitHub, click "Submit Answer".</p>
</div>
      <!-- ngIf: taskAnswer -->
    </div>
  </div>

  <footer class="widget-footer widget-section">
    <div class="widget-row widget-btnList btnList">
      <!-- ngIf: task.video --><a href="" class="btnList-btn btn btn--b btn--video btn--thin btn--offset btn--offset--thin ng-scope" ng-click="showVideo()" video-data="task.video" video-directive="sublime-video-player" directive-options="player-url='//cdn.sublimevideo.net/js/33r2xa49.js' download-file-type='mp4' download-sizes='HD:1280x720,SD:854x480' autoplay='true'" ng-if="task.video">Watch Video</a><!-- end ngIf: task.video -->
      <!-- ngIf: !taskAnswer && answerAvailable --><a class="btn btn--hint btn--thin btn--offset btn--offset--thin btnList-btn ng-scope" href="" ng-click="getTaskAnswer(task.name)" ng-if="!taskAnswer &amp;&amp; answerAvailable" style="">
        <span class="loader-el"></span>
        <span class="loader-text ng-binding">Solution (-50 pts)</span>
      </a><!-- end ngIf: !taskAnswer && answerAvailable -->
    </div>
  </footer>
</li><!-- end ngRepeat: task in tasks --><li class="card card--a widget widget--task ng-scope is-active" ng-class="{'is-complete': isComplete, 'is-active': !isHidden}" ng-repeat="task in tasks" task-data="task" index="2">
  <div class="widget-content widget-row">
    <div class="widget-content-md">
      <div compile-html="<p>Nice work! An adventure into the world of pull requests isn't complete without some collaboration. We went ahead and commented on your pull request with one additional requirement.</p>

<p>Check out our comment on your pull request on GitHub and follow the instructions to finish off the Pull Request process. Make the appropriate change locally then add and commit the changes.</p>

<p>With your introduction updated, push it back up to your fork of the &quot;dojo_rules&quot; repository. You won't need to create a new pull request for this new change, and you should see your new commit in the pull request you created earlier. Once that's pushed up, click &quot;Submit Answer&quot;.</p>
"><p class="ng-scope">Nice work! An adventure into the world of pull requests isn't complete without some collaboration. We went ahead and commented on your pull request with one additional requirement.</p>

<p class="ng-scope">Check out our comment on your pull request on GitHub and follow the instructions to finish off the Pull Request process. Make the appropriate change locally then add and commit the changes.</p>

<p class="ng-scope">With your introduction updated, push it back up to your fork of the "dojo_rules" repository. You won't need to create a new pull request for this new change, and you should see your new commit in the pull request you created earlier. Once that's pushed up, click "Submit Answer".</p>
</div>
      <!-- ngIf: taskAnswer -->
    </div>
  </div>

  <footer class="widget-footer widget-section">
    <div class="widget-row widget-btnList btnList">
      <!-- ngIf: task.video --><a href="" class="btnList-btn btn btn--b btn--video btn--thin btn--offset btn--offset--thin ng-scope" ng-click="showVideo()" video-data="task.video" video-directive="sublime-video-player" directive-options="player-url='//cdn.sublimevideo.net/js/33r2xa49.js' download-file-type='mp4' download-sizes='HD:1280x720,SD:854x480' autoplay='true'" ng-if="task.video">Watch Video</a><!-- end ngIf: task.video -->
      <!-- ngIf: !taskAnswer && answerAvailable --><a class="btn btn--hint btn--thin btn--offset btn--offset--thin btnList-btn ng-scope" href="" ng-click="getTaskAnswer(task.name)" ng-if="!taskAnswer &amp;&amp; answerAvailable" style="">
        <span class="loader-el"></span>
        <span class="loader-text ng-binding">Solution (-50 pts)</span>
      </a><!-- end ngIf: !taskAnswer && answerAvailable -->
    </div>
  </footer>
</li><!-- end ngRepeat: task in tasks -->
  </ol>
</div>
  </div>
  <div class="content-btn">
    <div class="submit-button ng-scope" hide-next-challenge-button="true">
  <a ng-click="submit($event)" href="" class="btn btn--a btn--next" ng-class="{'is-complete': pageIsComplete, 'is-submitting': isSubmitting}">
    <b class="loader-text" ng-transclude=""><span class="ng-scope">Submit Answer</span></b>
    <span class="loader-el"></span>
  </a>
  <a href="" class="btn btn--a btn--next ng-scope ng-hide" ng-class="{&quot;is-inactive&quot;: isInactive}" ng-click="gotoNextChallenge()" ng-transclude="" ng-show="pageIsComplete"><span class="ng-scope">Continue</span></a>
</div>
  </div>
  <div class="feed ng-scope"><div class="widget--error incorrect-submission is-existing card card--a widget widget--feed incorrect-submission card card--a widget widget--feed incorrect-submission" item-title="Incorrect Submission">
  <header class="widget-header widget-section has-widget-control--east">
    <div class="widget-row">
      <a href="" class="toggle widget-control widget-control--east widget-toggle" ng-click="toggle()">
        <b class="srt">Toggle</b>
      </a>
      <h3 class="widget-title">
        <a href="" class="widget-title-link ng-binding" ng-click="toggle()">Incorrect Submission</a>
      </h3>
    </div>
  </header>
  <div class="widget-content widget-row">
    <div class="widget-content-md" ng-transclude=""><p class="ng-scope">Check out the message we left on your Pull Request. We asked you to update your introduction with your favorite Code School path (Ruby, JavaScript, HTML &amp; CSS, iOS or Electives). Make sure you update the file, add, commit and push it up to GitHub.</p>
  <!---->
  <div class="adaptive-hint ng-scope" ng-show="hint">
  <a href="" class="btn btn--hint btn--thin btn--offset btn--offset--thin" ng-click="showHint()" ng-hide="shownHint">
    <span class="loader-text">Use A Hint</span>
  </a>
  <div class="hint-content ng-hide" ng-show="shownHint"><p class="ng-scope">Update the file.</p>
</div>
</div>
</div>
  </div>
</div><div class="widget--error incorrect-submission is-existing card card--a widget widget--feed incorrect-submission card card--a widget widget--feed incorrect-submission is-closed" item-title="Incorrect Submission">
  <header class="widget-header widget-section has-widget-control--east">
    <div class="widget-row">
      <a href="" class="toggle widget-control widget-control--east widget-toggle" ng-click="toggle()">
        <b class="srt">Toggle</b>
      </a>
      <h3 class="widget-title">
        <a href="" class="widget-title-link ng-binding" ng-click="toggle()">Incorrect Submission</a>
      </h3>
    </div>
  </header>
  <div class="widget-content widget-row">
    <div class="widget-content-md" ng-transclude=""><p class="ng-scope">Check out the message we left on your Pull Request. We asked you to update your introduction with your favorite Code School path (Ruby, JavaScript, HTML &amp; CSS, iOS or Electives). Make sure you update the file, add, commit and push it up to GitHub.</p>
  <!---->
  <div class="adaptive-hint ng-scope" ng-show="hint">
  <a href="" class="btn btn--hint btn--thin btn--offset btn--offset--thin" ng-click="showHint()" ng-hide="shownHint">
    <span class="loader-text">Use A Hint</span>
  </a>
  <div class="hint-content ng-hide" ng-show="shownHint"><p class="ng-scope">Update the file.</p>
</div>
</div>
</div>
  </div>
</div><div class="widget--error incorrect-submission is-existing card card--a widget widget--feed incorrect-submission card card--a widget widget--feed incorrect-submission is-closed" item-title="Incorrect Submission">
  <header class="widget-header widget-section has-widget-control--east">
    <div class="widget-row">
      <a href="" class="toggle widget-control widget-control--east widget-toggle" ng-click="toggle()">
        <b class="srt">Toggle</b>
      </a>
      <h3 class="widget-title">
        <a href="" class="widget-title-link ng-binding" ng-click="toggle()">Incorrect Submission</a>
      </h3>
    </div>
  </header>
  <div class="widget-content widget-row">
    <div class="widget-content-md" ng-transclude=""><p class="ng-scope">Check out the message we left on your Pull Request. We asked you to update your introduction with your favorite Code School path (Ruby, JavaScript, HTML &amp; CSS, iOS or Electives). Make sure you update the file, add, commit and push it up to GitHub.</p>
  <!---->
  <div class="adaptive-hint ng-scope" ng-show="hint">
  <a href="" class="btn btn--hint btn--thin btn--offset btn--offset--thin" ng-click="showHint()" ng-hide="shownHint">
    <span class="loader-text">Use A Hint</span>
  </a>
  <div class="hint-content ng-hide" ng-show="shownHint"><p class="ng-scope">Update the file.</p>
</div>
</div>
</div>
  </div>
</div><div class="widget--error incorrect-submission is-existing card card--a widget widget--feed incorrect-submission card card--a widget widget--feed incorrect-submission is-closed" item-title="Incorrect Submission">
  <header class="widget-header widget-section has-widget-control--east">
    <div class="widget-row">
      <a href="" class="toggle widget-control widget-control--east widget-toggle" ng-click="toggle()">
        <b class="srt">Toggle</b>
      </a>
      <h3 class="widget-title">
        <a href="" class="widget-title-link ng-binding" ng-click="toggle()">Incorrect Submission</a>
      </h3>
    </div>
  </header>
  <div class="widget-content widget-row">
    <div class="widget-content-md" ng-transclude=""><p class="ng-scope">Check out the message we left on your Pull Request. We asked you to update your introduction with your favorite Code School path (Ruby, JavaScript, HTML &amp; CSS, iOS or Electives). Make sure you update the file, add, commit and push it up to GitHub.</p>
  <!---->
  <div class="adaptive-hint ng-scope" ng-show="hint">
  <a href="" class="btn btn--hint btn--thin btn--offset btn--offset--thin" ng-click="showHint()" ng-hide="shownHint">
    <span class="loader-text">Use A Hint</span>
  </a>
  <div class="hint-content ng-hide" ng-show="shownHint"><p class="ng-scope">Update the file.</p>
</div>
</div>
</div>
  </div>
</div><div class="widget--error incorrect-submission is-existing card card--a widget widget--feed incorrect-submission card card--a widget widget--feed incorrect-submission is-closed" item-title="Incorrect Submission">
  <header class="widget-header widget-section has-widget-control--east">
    <div class="widget-row">
      <a href="" class="toggle widget-control widget-control--east widget-toggle" ng-click="toggle()">
        <b class="srt">Toggle</b>
      </a>
      <h3 class="widget-title">
        <a href="" class="widget-title-link ng-binding" ng-click="toggle()">Incorrect Submission</a>
      </h3>
    </div>
  </header>
  <div class="widget-content widget-row">
    <div class="widget-content-md" ng-transclude=""><p class="ng-scope">Check out the message we left on your Pull Request. We asked you to update your introduction with your favorite Code School path (Ruby, JavaScript, HTML &amp; CSS, iOS or Electives). Make sure you update the file, add, commit and push it up to GitHub.</p>
  <!---->
  <div class="adaptive-hint ng-scope" ng-show="hint">
  <a href="" class="btn btn--hint btn--thin btn--offset btn--offset--thin" ng-click="showHint()" ng-hide="shownHint">
    <span class="loader-text">Use A Hint</span>
  </a>
  <div class="hint-content ng-hide" ng-show="shownHint"><p class="ng-scope">Update the file.</p>
</div>
</div>
</div>
  </div>
</div><div class="widget--error incorrect-submission is-failure is-first is-task-index-2 card card--a widget widget--feed incorrect-submission card card--a widget widget--feed incorrect-submission is-closed" item-title="Incorrect Submission">
  <header class="widget-header widget-section has-widget-control--east">
    <div class="widget-row">
      <a href="" class="toggle widget-control widget-control--east widget-toggle" ng-click="toggle()">
        <b class="srt">Toggle</b>
      </a>
      <h3 class="widget-title">
        <a href="" class="widget-title-link ng-binding" ng-click="toggle()">Incorrect Submission</a>
      </h3>
    </div>
  </header>
  <div class="widget-content widget-row">
    <div class="widget-content-md" ng-transclude=""><p class="ng-scope">Check out the message we left on your Pull Request. We asked you to update your introduction with your favorite Code School path (Ruby, JavaScript, HTML &amp; CSS, iOS or Electives). Make sure you update the file, add, commit and push it up to GitHub.</p>
  <!---->
  <div class="adaptive-hint ng-scope" ng-show="hint">
  <a href="" class="btn btn--hint btn--thin btn--offset btn--offset--thin" ng-click="showHint()" ng-hide="shownHint">
    <span class="loader-text">Use A Hint</span>
  </a>
  <div class="hint-content ng-hide" ng-show="shownHint"><p class="ng-scope">Update the file.</p>
</div>
</div>
</div>
  </div>
</div>

</div>
</div>
<div class="omnibar-btn ng-scope">
  <a href="" class="btn btn--a btn--next ng-scope is-inactive" ng-class="{&quot;is-inactive&quot;: isInactive}" ng-click="gotoNextChallenge()" ng-transclude="" wait-for-page-complete="true"><span class="ng-scope">Continue</span></a>
</div>

</div>
</div></main>
  <!-- ngIf: optionalUi.omnibar --><div class="omnibar ng-scope" ng-if="optionalUi.omnibar">
  <div class="omnibar-toggle">
    <a class="toggle toggle--menu ng-scope" href="" ng-click="openMapModal()">
  <b class="srt">Menu</b>
</a></div>
  <ol ng-class="progressClass" class="progressList ng-scope progressList--7"><li class="progressList-item progress ng-scope">
  <a href="/level%2F1" ui-sref="root.courseContent({queryString: &quot;level/1&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="40% of Level 1">
    <div class="progress-bar" style="width: 40%;"></div>
  </a>
</li><li class="progressList-item progress ng-scope">
  <a href="/level%2F2" ui-sref="root.courseContent({queryString: &quot;level/2&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="0% of Level 2">
    <div class="progress-bar" style="width: 0%;"></div>
  </a>
</li><li class="progressList-item progress ng-scope">
  <a href="/level%2F3" ui-sref="root.courseContent({queryString: &quot;level/3&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="0% of Level 3">
    <div class="progress-bar" style="width: 0%;"></div>
  </a>
</li><li class="progressList-item progress ng-scope">
  <a href="/level%2F4" ui-sref="root.courseContent({queryString: &quot;level/4&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="0% of Level 4">
    <div class="progress-bar" style="width: 0%;"></div>
  </a>
</li><li class="progressList-item progress ng-scope">
  <a href="/level%2F5" ui-sref="root.courseContent({queryString: &quot;level/5&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="0% of Level 5">
    <div class="progress-bar" style="width: 0%;"></div>
  </a>
</li><li class="progressList-item progress ng-scope">
  <a href="/level%2F6" ui-sref="root.courseContent({queryString: &quot;level/6&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="0% of Level 6">
    <div class="progress-bar" style="width: 0%;"></div>
  </a>
</li><li class="progressList-item progress ng-scope">
  <a href="/level%2F7" ui-sref="root.courseContent({queryString: &quot;level/7&quot;})" class="progressList-link ng-isolate-scope" tooltip="" title="" data-original-title="0% of Level 7">
    <div class="progress-bar" style="width: 0%;"></div>
  </a>
</li></ol>
</div><!-- end ngIf: optionalUi.omnibar -->
  <!-- ngIf: optionalUi.builderOmnibar -->
</div></div>
  <div class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" modal-class="modalClass" modal-content="modalContent" modal-open="openModal" modal-title="modalTitle">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close modal-close" data-dismiss="modal" aria-hidden="true">×</button>
        <!-- ngIf: !!modalTitle -->
      </div>

      <div class="modal-body" ng-click="bodyCloseModal($event)" compile-html="" scope="compileScope"></div>

      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
    </div>
  </div>
</div>
</div>



  

  <script src="http://dhg7upb7j7jqa.cloudfront.net/assets/application-d3c27ba0076da05fea8073511d66ab4f.js"></script><div id="goog-gt-tt" class="goog-tooltip skiptranslate" dir="ltr" style="visibility: hidden; left: 724px; top: 503px; display: none;"><div style="padding: 8px;"><div><div class="logo"><img src="https://www.google.com/images/icons/product/translate-32.png" width="20" height="20"></div></div></div><div class="top" style="padding: 8px; float: left; width: 100%;"><h1 class="title gray">Исходный текст</h1></div><div class="middle" style="padding: 8px;"><div class="original-text">You won't need to create a new pull request for this new change, and you should see your new commit in the pull request you created earlier.</div></div><div class="bottom" style="padding: 8px;"><div class="activity-links"><span class="activity-link">Предложить лучший вариант перевода</span><span class="activity-link"></span></div><div class="started-activity-container"><hr style="color: #CCC; background-color: #CCC; height: 1px; border: none;"><div class="activity-root"></div></div></div><div class="status-message" style="display: none; opacity: 0;"></div></div>
  


</body></html>
