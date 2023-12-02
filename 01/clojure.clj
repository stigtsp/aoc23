#!/usr/bin/env clj

(let [lines (clojure.string/split-lines (slurp *in*))]
  (println (apply +
                  (map (fn [ln]
                           (+ (* 10 (Integer. (nth (re-find #"(\d)"   ln) 1)))
                              (Integer. (nth (re-find #".*(\d)" ln) 1)))
                           )
                       lines))))
