#!/bin/bash
PORT=3000
# for submissionId in 30744305 30744625 30746365 30744688 30748502 30747562 30748711 30747010 30744760 30747985 30748562 30745007 30746779 30748725 30745501 30746474 30746003 30748504 30746262 30745503 30744634 30744243 30748322 30746886 30747428 30744840 30747133 30748646 30749101 30749759 30744345 30747891 30745874 30747158 30748392 30747340 30746307 30745786 30748721 30746809 30745038 30745114 30745266 30747356 30749644 30748056 30747477 30747036 30749177 30748560 30744985 30746726 30746773 30747288 30745976 30748104 30749678 30748912 30748112 30749441 30747516 30746685 30745196 30745709 30748611 30745545 30748760 30747812 30747346 30746806 30745851 30745159 30748481 30748968 30749622 30748971 30748166 30746236 30749336 30746613 30748843 30745445 30746969 30744232 30749510 30745613 30746526 30748825 30749358 30749218 30746261 30749786 30747416 30745845 30746062 30748668 30744055 30748583 30748419 30746839 30748378 30744945 30745455 30745898 30745932 30747044 30745049 30747524 30748505 30746588 30745155 30745719 30744649 30744607 30744207 30748837 30749796 30746591 30748027 30749642 30749482 30748603 30745739 30745362 30745193 30744263 30744572 30745423 30744500 30749708 30748468 30748773 30747623 30745996 30746725 30745325 30748178 30747569 30746971 30747945 30744428 30748080 30749007 30748625 30748807 30748446 30744741 30746684 30744795 30748492 30745687 30744567 30744961 30745930 30746720 30745487 30748098 30749524 30748291 30748587 30744584 30745539 30746355 30745925 30744904 30744198 30747514 30746480 30746018 30747819 30745115 30746743 30745124 30744255 30744991 30746344 30744894 30745934 30749217 30746215 30748789 30745258 30744633 30744408 30746568 30748274 30748377 30748812 30744689 30745797 30748393 30744677 30747947 30747414 30745974 30744980 30745426 30748474 30749103 30748698 30747667 30746802 30747798 30747212 30748895 30749122 30747394 30744302 30744674 30746676 30744988 30747810 30745528 30748410 30745229 30745733 30744074 30748436 30746543 30744706 30749161 30747319 30744279 30745881 30746575 30744209 30744652 30748709 30746061 30744091 30744329 30744782 30748095 30744832 30744341 30745233 30746645 30748244 30748936 30747648 30744825 30745335 30749641 30749777 30744353 30745909 30744751 30748836 30748262 30744891 30749658 30746960 30749728 30749598 30748848 30748595 30749249 30747500 30744918 30745713 30748903 30749089 30747656 30746942
for submissionId in 30748446 30744741 30746684 30744795 30748492 30745687 30744567 30744961 30745930 30746720 30745487 30748098 30749524 30748291 30748587 30744584 30745539 30746355 30745925 30744904 30744198 30747514 30746480 30746018 30747819 30745115 30746743 30745124 30744255 30744991 30746344 30744894 30745934 30749217 30746215 30748789 30745258 30744633 30744408 30746568 30748274 30748377 30748812 30744689 30745797 30748393 30744677 30747947 30747414 30745974 30744980 30745426 30748474 30749103 30748698 30747667 30746802 30747798 30747212 30748895 30749122 30747394 30744302 30744674 30746676 30744988 30747810 30745528 30748410 30745229 30745733 30744074 30748436 30746543 30744706 30749161 30747319 30744279 30745881 30746575 30744209 30744652 30748709 30746061 30744091 30744329 30744782 30748095 30744832 30744341 30745233 30746645 30748244 30748936 30747648 30744825 30745335 30749641 30749777 30744353 30745909 30744751 30748836 30748262 30744891 30749658 30746960 30749728 30749598 30748848 30748595 30749249 30747500 30744918 30745713 30748903 30749089 30747656 30746942
do
    SubmissionId="${submissionId}"
    CurrentPort="${PORT}"
    CurrentFolder="${submissionId}"
    echo "$submissionId"
    echo "$CurrentPort"
    echo "$CurrentFolder"
    JudgeTestsFolder=judge_tests
    curl "https://judge.softuni.org/Contests/Submissions/Download/${SubmissionId}" \
      -H 'authority: judge.softuni.org' \
      -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
      -H 'accept-language: en,bg-BG;q=0.9,bg;q=0.8' \
      -H 'cache-control: no-cache' \
      # Cookie - use admin cookies
      -H 'cookie:' \
      -H 'pragma: no-cache' \
      -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
      -H 'sec-ch-ua-mobile: ?0' \
      -H 'sec-ch-ua-platform: "Windows"' \
      -H 'sec-fetch-dest: document' \
      -H 'sec-fetch-mode: navigate' \
      -H 'sec-fetch-site: none' \
      -H 'sec-fetch-user: ?1' \
      -H 'upgrade-insecure-requests: 1' \
      -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
      --compressed > "Submission_${SubmissionId}.zip"
    mkdir "./${SubmissionId}-${JudgeTestsFolder}"
    cp -R "./${JudgeTestsFolder}" "./${SubmissionId}-${JudgeTestsFolder}"
    sed -i -e "s/3000/${CurrentPort}/g" "./${SubmissionId}-${JudgeTestsFolder}/${JudgeTestsFolder}/package.json"
    sed -i -e "s/3000/${CurrentPort}/g" "./${SubmissionId}-${JudgeTestsFolder}/${JudgeTestsFolder}/tests.js"
    unzip "./Submission_${SubmissionId}.zip" -d "./${CurrentFolder}"
    sed -i -e "s/3000/${CurrentPort}/g" "./${CurrentFolder}/package.json"
    cd "./${CurrentFolder}"
    npm install
    npm start &
    cd "../${SubmissionId}-${JudgeTestsFolder}/${JudgeTestsFolder}"
    npm test > "../${SubmissionId}-result.txt"
    PORT=$((PORT+1))
    echo "$PORT"
    cd "../../"
done &