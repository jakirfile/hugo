---
title: JS-Education
description: JavaScript শেখার জন্য সহজ বাংলা গাইড—শুরু করুন বেসিক থেকে, তৈরি করুন নিজের প্রথম ইন্টার‌্যাকটিভ ওয়েব পেজ।
keywords: [JavaScript, শিক্ষা, বাংলা, web development]
hide_in_this_section: true
---

ওয়েবে ইন্টার‌্যাকটিভ অভিজ্ঞতা তৈরি করতে JavaScript শিখুন। একদম শুরু থেকে ছোট ছোট উদাহরণ ও অনুশীলনের মাধ্যমে এগিয়ে যান।

## শেখার রোডম্যাপ

1. **ভিত্তি:** `let`, `const`, ডেটা টাইপ ও অপারেটর
2. **যুক্তি:** শর্ত, লুপ ও ফাংশন
3. **ডেটা:** array, object ও তাদের প্রচলিত মেথড
4. **ওয়েব পেজ:** DOM নির্বাচন, event ও HTML পরিবর্তন
5. **পরের ধাপ:** module, asynchronous JavaScript ও `fetch`

## প্রথম উদাহরণ

নিচের কোডটি ব্রাউজারের developer console-এ চালিয়ে দেখুন:

```js
const name = "বন্ধু";
console.log(`স্বাগতম, ${name}!`);
```

`const` দিয়ে একটি মান রাখা হয়েছে, আর `console.log` সেটি console-এ দেখায়। মান পরিবর্তন করতে হলে `let` ব্যবহার করুন।

## নিজে চেষ্টা করুন

একটি `temperature` variable-এ তাপমাত্রা রাখুন। তাপমাত্রা ৩০ বা তার বেশি হলে `"গরম"` এবং অন্যথায় `"আরামদায়ক"` console-এ দেখান।

```js
const temperature = 32;

if (temperature >= 30) {
  console.log("গরম");
} else {
  console.log("আরামদায়ক");
}
```

## এরপর কী শিখবেন

প্রথমে JavaScript-এর [ভাষার বেসিক](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting) শিখুন। তারপর [DOM scripting](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting/DOM_scripting) দিয়ে ওয়েব পেজে click, form ও অন্যান্য user interaction যোগ করুন।
