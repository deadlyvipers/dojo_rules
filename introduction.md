<html ng-app="campus" ng-controller="pageTitleController" class="js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths ng-scope" id="sv"><head>
    <title ng-bind="pageTitle" class="ng-binding">Collaboration Using Pull Requests - Mastering GitHub</title>

<link href="http://dhg7upb7j7jqa.cloudfront.net/mastering_github/assets/images/favicon-68efc72f-af5c-44fe-9ad0-0a3298d87993.ico" rel="icon" type="image/ico">
<link href="http://dhg7upb7j7jqa.cloudfront.net/course-assets/mastering-github/level/1/course-68efc72f-af5c-44fe-9ad0-0a3298d87993.css" rel="stylesheet" type="text/css">
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
