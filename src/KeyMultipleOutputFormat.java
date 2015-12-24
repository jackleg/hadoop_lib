package com.kakao.quality.web;

import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.lib.MultipleTextOutputFormat;

public class KeyMultipleOutputFormat extends MultipleTextOutputFormat<Text, Text> {
       /**
       * Use key as parent directory.
       */
      @Override
      protected String generateFileNameForKeyValue(Text key, Text value, String leaf) {
            return new Path(key.toString(), leaf).toString();
      }

      /**
       * don't use key.
       */
      @Override
      protected Text generateActualKey(Text key, Text value) {
            return null;
      }
}
