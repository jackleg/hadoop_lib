## com.kakao.quality.web.KeyMultipleOutputFormat
* streaming에서 key를 기준으로 output의 경로를 분리하는 Output Formatter.
* output이 아래와 같은 식일 때,
```
key1 [tab] data1
key1 [tab] data2
key1 [tab] data3
key2 [tab] data4
key2 [tab] data5
key2 [tab] data6
```
* output은 아래와 같이 디렉토리 두 개로 분리된다.
  * ${OUTPUT_DIR}/key1/part-0000
  * ${OUTPUT_DIR}/key2/part-0001

* 사용법: 아래와 같이 streaming 실행 시, 옵션을 준다.
  * -libjars path/to/jar/quality.jar # generic option. jar 파일 지정
  * -outputformat com.kakao.quality.web.KeyMultipleOutputFormat
