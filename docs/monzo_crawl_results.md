# Monzo Crawl Results

I crawled https://monzo.com as this seemed like a fairly relevant benchmark!

```bash
$ docker-compose up
$ docker-compose run worker ./bin/crawl https://monzo.com
```

After a while the response times crept up to about 3 seconds so I stopped. Thanks for not rate limiting, and I hope the on-call engineer did not get paged!

I managed to crawl 1322 unique pages before giving up, with the following output:

```
$ irb
=> require_relative './src/lib/link_collector'
=> LinkCollector.new.all.to_json
```

```json
{
  "https://monzo.com/blog/2016/09/19/building-a-modern-bank-backend": [
    "https://monzo.com/blog/authors/oliver-beattie",
    "https://monzo.com/blog/2016/08/11/we-are-now-a-bank/",
    "https://monzo.com/blog/2016/03/17/beta/"
  ],
  "http://monzo.com/help/account-and-profile": [
    "http://monzo.com/help/account-and-profile/update-phone-number/",
    "http://monzo.com/help/account-and-profile/update-preferred-name/",
    "http://monzo.com/help/account-and-profile/labs-what-is/",
    "http://monzo.com/help/account-and-profile/tax-residency-eu/",
    "http://monzo.com/help/account-and-profile/update-legal-name/",
    "http://monzo.com/help/account-and-profile/accountlimits/",
    "http://monzo.com/help/account-and-profile/brexit-currency-impact/",
    "http://monzo.com/help/account-and-profile/account-number2/",
    "http://monzo.com/help/account-and-profile/bank-statement-how-to/",
    "http://monzo.com/help/account-and-profile/brexit-general-query/",
    "http://monzo.com/help/account-and-profile/what-is-ifttt/",
    "http://monzo.com/help/account-and-profile/bank-statement-changes-web/",
    "http://monzo.com/help/account-and-profile/account-selector/",
    "http://monzo.com/help/account-and-profile/gambling-spending-block-how-to/",
    "http://monzo.com/help/account-and-profile/IFTTT-login-button-not-working/",
    "http://monzo.com/help/account-and-profile/update-home-address/",
    "http://monzo.com/help/account-and-profile/IFTTT-login/",
    "http://monzo.com/help/account-and-profile/closed-account-refund/",
    "http://monzo.com/help/account-and-profile/IFTTT-set-up/",
    "http://monzo.com/help/account-and-profile/statement-of-fees-web/",
    "http://monzo.com/help/account-and-profile/understanding-fees/",
    "http://monzo.com/help/account-and-profile/branches/",
    "http://monzo.com/help/account-and-profile/asked-to-update-details/",
    "http://monzo.com/help/account-and-profile/share-with-us/",
    "http://monzo.com/help/account-and-profile/what-tax-status/",
    "http://monzo.com/help/account-and-profile/tax-residency-us/",
    "http://monzo.com/help/account-and-profile/reopening-your-account/",
    "http://monzo.com/help/account-and-profile/brexit-monzo-business-impact/",
    "http://monzo.com/help/account-and-profile/update-email/",
    "http://monzo.com/help/account-and-profile/close-account/",
    "http://monzo.com/help/account-and-profile/update-tax-residency/"
  ],
  "https://monzo.com/blog/2022/07/06/researching-operations-at-monzo-building-a-product-our-customers-never-see": [
    "https://monzo.com/blog/authors/luke-kelly",
    "https://monzo.com/blog/research"
  ],
  "http://monzo.com/blog/team/": [
    "http://monzo.com/blog/2021/11/02/net-zero-carbon-emissions",
    "http://monzo.com/blog/team/2",
    "http://monzo.com/blog/women-in-finance-charter-update",
    "http://monzo.com/blog/gender-pay-gap-update-april-2020-and-april-2021",
    "http://monzo.com/blog/2017/06/22/meet-gary",
    "http://monzo.com/blog/monzo-parents",
    "http://monzo.com/blog/2017/12/12/meet-jordan",
    "http://monzo.com/blog/2019/05/15/gender-pay-gap",
    "http://monzo.com/blog/tech-ops-hiring-monzo",
    "http://monzo.com/blog/2020/06/27/pride-remembering-our-history-and-looking-towards-the-fight-ahead",
    "http://monzo.com/blog/thank-you-jonas-templestein",
    "http://monzo.com/blog/2017/09/04/meet-phil-hewinson-head-of-partnerships",
    "http://monzo.com/blog/2018/07/06/celebrating-pride",
    "http://monzo.com/blog/2017/07/25/meet-will"
  ],
  "https://monzo.com/legal/business-account-terms-and-conditions/": [
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-8/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-11/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-6/",
    "https://monzo.com/i/ecb-rates",
    "https://monzo.com/i/business/eligibility",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-2/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-9/",
    "https://monzo.com/legal/business-account-fee-information/",
    "https://monzo.com/legal/files/business-account-terms-and-conditions/version-1-11.pdf",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-5/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-4/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-10/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-7/",
    "https://monzo.com/help/business-accounts/business-bank-statement",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-3/",
    "https://monzo.com/legal/business-account-terms-and-conditions/version-1-1/"
  ],
  "https://monzo.com/blog/product-updates/9": [
    "https://monzo.com/blog/2017/09/27/android-help-search",
    "https://monzo.com/blog/2018/02/15/android-crowdsourcing-merchant-data",
    "https://monzo.com/blog/2018/03/07/coin-jar",
    "https://monzo.com/blog/2018/03/19/500k-customers",
    "https://monzo.com/blog/2017/12/01/top-ups-are-back",
    "https://monzo.com/blog/2018/02/14/android-pulse",
    "https://monzo.com/blog/2018/04/12/transaction-tags",
    "https://monzo.com/blog/2018/04/03/switch-to-monzo-current-account-switch-service",
    "https://monzo.com/blog/2018/02/12/monzo-me",
    "https://monzo.com/blog/2018/01/25/bank-statements",
    "https://monzo.com/blog/2018/04/09/making-overdrafts-available"
  ],
  "https://monzo.com/blog/2019/10/11/4-ways-monzo-makes-payday-even-better": [
    "https://monzo.com/blog/2019/06/28/pay-yourself-first-how-to-save-money"
  ],
  "https://monzo.com/investor-information/": [
    "https://monzo.com/docs/annual-report-2019.pdf",
    "https://monzo.com/docs/monzo-annual-report-2022.pdf",
    "https://monzo.com/annual-report/2020/",
    "https://monzo.com/annual-report/2018/",
    "https://monzo.com/docs/pillar_3_2019.pdf",
    "https://monzo.com/docs/monzo-pillar-3-2022.pdf",
    "https://monzo.com/annual-report/2023/",
    "https://monzo.com/docs/FY23-Monzo-Website-Disclosures-CRD-V-Article-96-and-CRR-Article-450.pdf",
    "https://monzo.com/docs/pillar_3_2018.pdf",
    "https://monzo.com/annual-report/2019/",
    "https://monzo.com/annual-report/2017/",
    "https://monzo.com/docs/annual-report-2018.pdf",
    "https://monzo.com/docs/monzo-crd-statement-2022.pdf",
    "https://monzo.com/docs/monzo-annual-report-2021.pdf",
    "https://monzo.com/investor-information/internal-audit-charter/",
    "https://monzo.com/docs/monzo-annual-report-2023.pdf",
    "https://monzo.com/annual-report/2022/",
    "https://monzo.com/docs/pillar_3_2020.pdf",
    "https://monzo.com/docs/monzo-annual-report-2020.pdf",
    "https://monzo.com/docs/monzo-pillar-3-2023.pdf",
    "https://monzo.com/docs/annual-report-2017.pdf",
    "https://monzo.com/annual-report/2021/",
    "https://monzo.com/docs/monzo-pillar-3-2021.pdf"
  ],
  "https://monzo.com/help/us-pots": [
    "https://monzo.com/help/us-pots/us-transferring-money-between-pots/",
    "https://monzo.com/help/us-pots/us-what-is-a-credit-card-pot/",
    "https://monzo.com/help/us-pots/us-what-are-round-up-payments/",
    "https://monzo.com/help/us-pots/us-where-can-i-find-my-expense-pots-account-number-or-card-number/",
    "https://monzo.com/help/us-pots/us-what-happens-if-i-lock-a-pot/",
    "https://monzo.com/help/us-pots/us-what-is-a-expense-pot/",
    "https://monzo.com/help/us-pots/us-do-pots-earn-interest/",
    "https://monzo.com/help/us-pots/us-setting-a-goal-on-a-pot/",
    "https://monzo.com/help/us-pots/us-creating-and-editing-an-expense-pot/",
    "https://monzo.com/help/us-pots/us-what-are-pots/",
    "https://monzo.com/help/us-pots/us-how-do-credit-card-pots-handle-refunds/",
    "https://monzo.com/help/us-pots/us-what-is-an-emergency-fund-pot/",
    "https://monzo.com/help/us-pots/us-where-can-i-find-my-credit-card-pots-account-number/",
    "https://monzo.com/help/us-pots/us-what-is-salary-sorter/"
  ],
  "https://monzo.com/blog/technology/7": [
    "https://monzo.com/blog/2019/01/16/crowdfunding-technology-systems",
    "https://monzo.com/blog/2018/04/05/how-monzo-to-monzo-payments-work",
    "https://monzo.com/blog/2018/03/02/app-development",
    "https://monzo.com/blog/2018/11/29/refactoring-old-code",
    "https://monzo.com/blog/2018/07/27/how-we-monitor-monzo",
    "https://monzo.com/blog/2019/02/11/building-monzo-chat-on-android/",
    "https://monzo.com/blog/2017/07/07/working-with-backend-services-on-ios",
    "https://monzo.com/blog/2017/11/29/very-robust-etcd"
  ],
  "https://monzo.com/blog/2021/09/16/monzo-flex": [
    "https://monzo.com/blog/borrowing"
  ],
  "https://monzo.com/blog/authors/roxy-alexander/4": [
    "https://monzo.com/blog/2019/10/01/bills-pots-images",
    "https://monzo.com/blog/2019/10/03/joint-account-death",
    "https://monzo.com/blog/2019/09/30/what-is-locktober",
    "https://monzo.com/blog/2019/10/10/joint-account-tax",
    "https://monzo.com/blog/2019/10/22/how-to-save-money-in-london",
    "https://monzo.com/blog/2019/10/24/how-to-save-money-on-your-wedding",
    "https://monzo.com/blog/2019/10/02/joint-bank-account"
  ],
  "https://monzo.com/help/monzo-card-pin/monzo-card-lost-damaged-stolen/": [
    "https://monzo.com/help/monzo-card-pin/",
    "https://monzo.com/help/monzo-card-pin/activating-your-card/",
    "https://monzo.com/help/monzo-card-pin/card-not-arrived/",
    "https://monzo.com/help/monzo-card-pin/update-delivery-address/",
    "https://monzo.com/help/monzo-card-pin/international-card-delivery/",
    "https://monzo.com/help/monzo-card-pin/i-want-to-update-my-delivery-address/"
  ],
  "https://monzo.com/blog/monzo-among-the-uks-most-recommended-brands-february-2020": [
    "https://monzo.com/blog/2019/01/30/tell-your-friends-to-sign-up",
    "https://monzo.com/blog/2018/06/25/monzo-international-transfers"
  ],
  "https://monzo.com/blog/2019/23/07/monzo-quarterly-update-q3-2019": [
    "https://monzo.com/plus/"
  ],
  "https://monzo.com/business/accept-contactless": [
    "https://monzo.com/help/business-getpaid/business-getpaid-pricing"
  ],
  "https://monzo.com/blog/customer-support/2": [
    "https://monzo.com/blog/2018/07/30/scaling-our-customer-support"
  ],
  "http://monzo.com/help/monzo-flex": [
    "http://monzo.com/help/monzo-flex/How-to-add-to-Apple-Pay-Google-Pay/",
    "http://monzo.com/help/monzo-flex/Two-ways-to-flex/",
    "http://monzo.com/help/monzo-flex/How-do-refunds-work-in-Flex/",
    "http://monzo.com/help/monzo-flex/monzo-flex-and-section-75-claims/",
    "http://monzo.com/help/monzo-flex/eligible-transactions-for-monzo-flex/",
    "http://monzo.com/help/monzo-flex/applying-for-monzo-flex-and-credit-scores/",
    "http://monzo.com/help/monzo-flex/monzo-flex-and-section-75/",
    "http://monzo.com/help/monzo-flex/what-does-a-default-mean-for-my-flex/",
    "http://monzo.com/help/monzo-flex/Managing-your-money/",
    "http://monzo.com/help/monzo-flex/Choosing-an-instalment-plan/",
    "http://monzo.com/help/monzo-flex/where-you-can-use-the-Flex-card/",
    "http://monzo.com/help/monzo-flex/missing-a-monzo-flex-payment/"
  ],
  "https://monzo.com/legal/january-2022-campaign/terms-and-conditions/version-1-0": [
    "https://monzo.com/legal/january-2022-campaign/terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/us/": [
    "https://monzo.com/blog/monzo-us-blog/",
    "https://monzo.com/us/careers/",
    "https://monzo.com/us/personal-account/",
    "https://monzo.com/us/money/save-more/",
    "https://monzo.com/us/money/see-it-all/",
    "https://monzo.com/help/us",
    "https://monzo.com/us/joint-account/",
    "https://monzo.com/us/money/spend-confidently/"
  ],
  "https://monzo.com/blog/2018/12/13/shared-tabs": [
    "https://monzo.com/blog/authors/ole-mahrt",
    "https://monzo.com/blog/2018/12/11/christmas-gift/"
  ],
  "https://monzo.com/blog/authors/natalie-ledward": [
    "https://monzo.com/blog/2020/12/17/how-to-cope-with-being-made-redundant",
    "https://monzo.com/blog/2020/11/25/how-to-cope-with-reduced-work-hours-according-to-the-experts",
    "https://monzo.com/blog/2018/05/16/gambling-self-exclusion"
  ],
  "https://monzo.com/blog/authors/harry-ashbridge": [
    "https://monzo.com/blog/2018/05/22/big-news-about-small-print",
    "https://monzo.com/blog/2018/11/06/how-to-name-something"
  ],
  "https://monzo.com/blog/2023/10/12/protecting-our-platform-from-spikes-in-usage-by-reducing-load-from-the-monzo": [
    "https://monzo.com/blog/authors/jacob",
    "https://monzo.com/blog/2023/01/26/preparing-for-spikes-in-traffic-as-millions-get-paid-early"
  ],
  "http://monzo.com/blog/lets-talk-business": [
    "http://monzo.com/blog/the-human-impact-of-late-payments-on-small-businesses",
    "http://monzo.com/blog/lets-talk-business/5",
    "http://monzo.com/blog/2021/10/12/getting-paid-with-monzo-business",
    "http://monzo.com/blog/lets-talk-business/3",
    "http://monzo.com/blog/2021/11/29/get-paid-with-apple-pay-and-google-pay",
    "http://monzo.com/blog/2021/08/12/monzo-business-invoicing",
    "http://monzo.com/blog/2021/10/18/how-one-26-year-old-is-balancing-her-lockdown-candle-business-with-full-time",
    "http://monzo.com/blog/2022/03/2/everything-you-need-to-know-about-making-tax-digital",
    "http://monzo.com/blog/i-started-my-dream-business-and-became-my-own-boss-during-the-pandemic",
    "http://monzo.com/blog/lets-talk-business/2"
  ],
  "https://monzo.com/legal/premium/fee-information": [
    "https://monzo.com/legal/premium/fee-information/version-1-2/",
    "https://monzo.com/legal/premium/fee-information/version-1-0/",
    "https://monzo.com/legal/premium/fee-information/version-1-1/",
    "https://monzo.com/legal/files/premium/monzo-premium-fee-information-1.3.pdf",
    "https://monzo.com/legal/premium/fee-information/version-1-3/"
  ],
  "https://monzo.com/blog/financial-inclusion/": [
    "https://monzo.com/blog/mental-health-coronavirus",
    "https://monzo.com/blog/2018/05/29/getting-bank-account-immigrant",
    "https://monzo.com/blog/2019/05/03/writing-clear-terms-and-conditions",
    "https://monzo.com/blog/how-to-recognise-financial-abuse-and-get-support",
    "https://monzo.com/blog/managing-my-universal-credit-payments",
    "https://monzo.com/blog/2018/05/29/financial-inclusion",
    "https://monzo.com/blog/access-universal-credit"
  ],
  "https://monzo.com/blog/how-we-built-a-queue-on-top-of-kafka": [
    "https://monzo.com/blog/authors/constantijn-schepens",
    "https://monzo.com/blog/2016/09/19/building-a-modern-bank-backend"
  ],
  "https://monzo.com/blog/10": ["https://monzo.com/blog/12"],
  "http://monzo.com/help/travelling": [
    "http://monzo.com/help/travelling/monzo-card-accepted-everywhere/",
    "http://monzo.com/help/travelling/understanding-fees/",
    "http://monzo.com/help/travelling/Tipping-in-the-USA/",
    "http://monzo.com/help/travelling/fees-abroad/",
    "http://monzo.com/help/travelling/converting-balance-to-another-currency/",
    "http://monzo.com/help/travelling/web-my-limits/",
    "http://monzo.com/help/travelling/reasons-travel-is-better-with-monzo/"
  ],
  "https://monzo.com/help/monzo-premium": [
    "https://monzo.com/help/monzo-premium/virtual-cards-limits/",
    "https://monzo.com/help/monzo-premium/virtual-cards-what/",
    "https://monzo.com/help/monzo-premium/virtual-card-on-pot-dispute/",
    "https://monzo.com/help/monzo-premium/connected-accounts-supported-banks/",
    "https://monzo.com/help/monzo-premium/advanced-budgeting-roundups/",
    "https://monzo.com/help/monzo-premium/virtual-cards-how/",
    "https://monzo.com/help/monzo-premium/connected-account-not-working/",
    "https://monzo.com/help/monzo-premium/connected-accounts-remove/",
    "https://monzo.com/help/monzo-premium/plus-connected-accounts/",
    "https://monzo.com/help/monzo-premium/virtual-card-on-pot-how/",
    "https://monzo.com/help/monzo-premium/paid-downgrade-premium/",
    "https://monzo.com/help/monzo-premium/metal-card-cleaning/",
    "https://monzo.com/help/monzo-premium/remove-credit-tracker/",
    "https://monzo.com/help/monzo-premium/premium-phone-repair/",
    "https://monzo.com/help/monzo-premium/paid-upgrade-premium/",
    "https://monzo.com/help/monzo-premium/paid-interest/",
    "https://monzo.com/help/monzo-premium/connected-accounts-privacy/",
    "https://monzo.com/help/monzo-premium/premium-cancel/",
    "https://monzo.com/help/monzo-premium/virtual-cards-not-working/",
    "https://monzo.com/help/monzo-premium/virtul-cards-apple-google-pay/",
    "https://monzo.com/help/monzo-premium/how-to-metal-card/",
    "https://monzo.com/help/monzo-premium/afford-plus-premium/",
    "https://monzo.com/help/monzo-premium/web-bill-pots/",
    "https://monzo.com/help/monzo-premium/premium-phone-replace/",
    "https://monzo.com/help/monzo-premium/advanced-budgeting-multiple-categories/",
    "https://monzo.com/help/monzo-premium/plus-credit-tracker/",
    "https://monzo.com/help/monzo-premium/advanced-budgeting-auto-exports/",
    "https://monzo.com/help/monzo-premium/what-is-premium/",
    "https://monzo.com/help/monzo-premium/premium-phone-what/",
    "https://monzo.com/help/monzo-premium/advanced-budgeting-custom-categories/",
    "https://monzo.com/help/monzo-premium/how-to-airport-lounge/",
    "https://monzo.com/help/monzo-premium/premium-fees/",
    "https://monzo.com/help/monzo-premium/web-credit-tracker-problem/"
  ],
  "https://monzo.com/help/business-accounts/": [
    "https://monzo.com/help/business-accounts/pots-in-accounting-tools/",
    "https://monzo.com/help/business-accounts/wise-cashback-business-banking/",
    "https://monzo.com/help/business-accounts/accounting-tool-not-synced/",
    "https://monzo.com/help/business-accounts/business-getpaid-stripe-online-card-payments/",
    "https://monzo.com/help/business-accounts/expensify/",
    "https://monzo.com/help/business-accounts/virtual-cards-not-working-business-banking/",
    "https://monzo.com/help/business-accounts/connected-accounts-business-privacy/",
    "https://monzo.com/help/business-accounts/square/",
    "https://monzo.com/help/business-accounts/virtual-card-on-pot-how-business-account/",
    "https://monzo.com/help/business-accounts/wise-currency-business-banking-web/",
    "https://monzo.com/help/business-accounts/transaction-missing-from-accounting-tools/",
    "https://monzo.com/help/business-accounts/change-business-account-tier-web/",
    "https://monzo.com/help/business-accounts/historical-transactions-accounting-tools/",
    "https://monzo.com/help/business-accounts/disconnecting-accounting-tool-quickbooks/",
    "https://monzo.com/help/business-accounts/cheque-how-to-pay-business/",
    "https://monzo.com/help/business-accounts/business-bank-statement/",
    "https://monzo.com/help/business-accounts/connected-accounts-business-remove/",
    "https://monzo.com/help/business-accounts/wise-limits-business-banking/",
    "https://monzo.com/help/business-accounts/business-getpaid-location-settings/",
    "https://monzo.com/help/business-accounts/business-web-features/",
    "https://monzo.com/help/business-accounts/auto-export-business-transactions-web/",
    "https://monzo.com/help/business-accounts/virtual-cards-multiple-team-members-business-account/",
    "https://monzo.com/help/business-accounts/close-business-account-web/",
    "https://monzo.com/help/business-accounts/stripe-pay-out-web/",
    "https://monzo.com/help/business-accounts/cheque-how-to-pay-business-by-app/",
    "https://monzo.com/help/business-accounts/virtual-card-on-pot-dispute/",
    "https://monzo.com/help/business-accounts/business-getpaid-fees-web/",
    "https://monzo.com/help/business-accounts/manual-export-transactions-accounting-tools/",
    "https://monzo.com/help/business-accounts/virtual-cards-what-business-banking/",
    "https://monzo.com/help/business-accounts/payments-from-pots-business-account/",
    "https://monzo.com/help/business-accounts/wise-payment-status-business-banking/",
    "https://monzo.com/help/business-accounts/connected-accounts-business-what/",
    "https://monzo.com/help/business-accounts/business-banking-update-registered-name-address-industry/",
    "https://monzo.com/help/business-accounts/auto-export-business-documents-web/",
    "https://monzo.com/help/business-accounts/balance-in-accounting-tools/",
    "https://monzo.com/help/business-accounts/virtul-cards-apple-google-pay-business-account/",
    "https://monzo.com/help/business-accounts/disconnecting-accounting-tool-freeagent-xero/",
    "https://monzo.com/help/business-accounts/business-getpaid-stripe-signup-web/",
    "https://monzo.com/help/business-accounts/what-is-a-tax-pot/",
    "https://monzo.com/help/business-accounts/stripe-accept-contactless-web/",
    "https://monzo.com/help/business-accounts/business-getpaid-stripe-statement-descriptor-web/",
    "https://monzo.com/help/business-accounts/business-web-security/",
    "https://monzo.com/help/business-accounts/how-to-create-a-tax-pot/",
    "https://monzo.com/help/business-accounts/business-getpaid-easybanktransfers/",
    "https://monzo.com/help/business-accounts/wise-send-business-banking-web/",
    "https://monzo.com/help/business-accounts/accounting-tools-duplicated-accounts/",
    "https://monzo.com/help/business-accounts/business-account-access-rights/",
    "https://monzo.com/help/business-accounts/business-verifying-persons-of-significant-control/",
    "https://monzo.com/help/business-accounts/connect-to-freeagent/",
    "https://monzo.com/help/business-accounts/reusable-payment-links-web/",
    "https://monzo.com/help/business-accounts/wise-cost-business-banking/",
    "https://monzo.com/help/business-accounts/wise-receive-international-payments-business-banking/",
    "https://monzo.com/help/business-accounts/virtual-cards-how-business-banking/",
    "https://monzo.com/help/business-accounts/connect-to-quickbooks/",
    "https://monzo.com/help/business-accounts/business-banking-limited-company-borrowing-web/",
    "https://monzo.com/help/business-accounts/connect-to-xero/",
    "https://monzo.com/help/business-accounts/Monzo-address/",
    "https://monzo.com/help/business-accounts/wise-timescale-business-banking/",
    "https://monzo.com/help/business-accounts/business-getpaid-paymentlinks-invoices/",
    "https://monzo.com/help/business-accounts/historic-transactions-in-accounting-tools/",
    "https://monzo.com/help/business-accounts/business-getpaid-paymentlinks-managing/",
    "https://monzo.com/help/business-accounts/virtual-cards-limits-business-account/",
    "https://monzo.com/help/business-accounts/add-and-manage-members/",
    "https://monzo.com/help/business-accounts/business-web-payments/",
    "https://monzo.com/help/business-accounts/business-getpaid-NFC-web/"
  ],
  "https://monzo.com/blog/lets-talk-business": [
    "https://monzo.com/blog/i-started-my-dream-business-and-became-my-own-boss-during-the-pandemic",
    "https://monzo.com/blog/2021/11/29/get-paid-with-apple-pay-and-google-pay",
    "https://monzo.com/blog/2021/10/18/how-one-26-year-old-is-balancing-her-lockdown-candle-business-with-full-time",
    "https://monzo.com/blog/2021/10/12/getting-paid-with-monzo-business",
    "https://monzo.com/blog/the-human-impact-of-late-payments-on-small-businesses",
    "https://monzo.com/blog/2022/03/2/everything-you-need-to-know-about-making-tax-digital",
    "https://monzo.com/blog/lets-talk-business/2",
    "https://monzo.com/blog/lets-talk-business/3",
    "https://monzo.com/blog/2021/08/12/monzo-business-invoicing",
    "https://monzo.com/blog/lets-talk-business/5"
  ],
  "https://monzo.com/blog/2019/03/06/march-monthly-update": [
    "https://monzo.com/blog/2019/01/29/2019-features/"
  ],
  "https://monzo.com/help/monzo-card-pin": [
    "https://monzo.com/help/monzo-card-pin/i-want-second-card/",
    "https://monzo.com/help/monzo-card-pin/why-are-my-contactless-card-payments-being-declined/",
    "https://monzo.com/help/monzo-card-pin/freezing-defrosting/",
    "https://monzo.com/help/monzo-card-pin/monzo-card-blocked/",
    "https://monzo.com/help/monzo-card-pin/my-card-is-expiring-what-can-I-do-with-it/",
    "https://monzo.com/help/monzo-card-pin/can-I-get-my-expired-card-replacement-delivered-abroad/",
    "https://monzo.com/help/monzo-card-pin/my-card-will-expire-soon/",
    "https://monzo.com/help/monzo-card-pin/card-payment-declined-still-been-charged/",
    "https://monzo.com/help/monzo-card-pin/account-blocked/",
    "https://monzo.com/help/monzo-card-pin/take-out-cash-atm-locator/",
    "https://monzo.com/help/monzo-card-pin/contactless-not-working/",
    "https://monzo.com/help/monzo-card-pin/when-will-my-new-card-arrive-following-old-card-expiry/",
    "https://monzo.com/help/monzo-card-pin/expecting-refund-but-getting-a-new-card/",
    "https://monzo.com/help/monzo-card-pin/dont-know-forgot-pin/",
    "https://monzo.com/help/monzo-card-pin/monzo-card-accepted-everywhere/",
    "https://monzo.com/help/monzo-card-pin/why-does-my-card-expire/",
    "https://monzo.com/help/monzo-card-pin/want-to-change-pin/",
    "https://monzo.com/help/monzo-card-pin/a-new-card-is-coming-but-I-didn't-order-it/",
    "https://monzo.com/help/monzo-card-pin/card-is-expiring-where-can-I-get-new-card-delivered/",
    "https://monzo.com/help/monzo-card-pin/frozen-card-payment/",
    "https://monzo.com/help/monzo-card-pin/my-card-payment-declined/",
    "https://monzo.com/help/monzo-card-pin/does-support-3dsecure/",
    "https://monzo.com/help/monzo-card-pin/how-to-find-your-monzo-card-details/",
    "https://monzo.com/help/monzo-card-pin/is-it-credit-card/"
  ],
  "https://monzo.com/blog/lets-talk-business/4": [
    "https://monzo.com/blog/government-support-start-ups-coronavirus",
    "https://monzo.com/blog/manage-your-business-finances-during-coronavirus",
    "https://monzo.com/blog/corona-virus-business-help",
    "https://monzo.com/blog/2020/04/03/tips-for-being-extra-safe-on-monzo-business-for-web",
    "https://monzo.com/blog/2020/04/01/monzo-business-for-web-is-here"
  ],
  "https://monzo.com/help/us-adding-money": [
    "https://monzo.com/help/us-adding-money/us-how-can-i-add-money-to-my-account/",
    "https://monzo.com/help/us-adding-money/us-can-i-receive-my-paycheck-in-my-account/",
    "https://monzo.com/help/us-adding-money/us-can-i-deposit-cash-into-monzo/",
    "https://monzo.com/help/us-adding-money/us-getting-paid-2-days-early/",
    "https://monzo.com/help/us-adding-money/us-can-deposit-a-check-into-monzo/",
    "https://monzo.com/help/us-adding-money/us-how-long-do-bank-transfers-take/"
  ],
  "https://monzo.com/help/payments-getting-started/": [
    "https://monzo.com/help/payments-getting-started/monzo-me-how-to/",
    "https://monzo.com/help/payments-getting-started/monzo-default-apple-pay-card/",
    "https://monzo.com/help/payments-getting-started/binance-block-why/",
    "https://monzo.com/help/payments-getting-started/google-pay-activation-issues/",
    "https://monzo.com/help/payments-getting-started/moving-salary-to-monzo/",
    "https://monzo.com/help/payments-getting-started/easy-bank-transfers-not-supported/",
    "https://monzo.com/help/payments-getting-started/add-money-from-outside-uk/",
    "https://monzo.com/help/payments-getting-started/standing-order-set-up/",
    "https://monzo.com/help/payments-getting-started/standing-order-cancel/",
    "https://monzo.com/help/payments-getting-started/cheque-how-to-pay-web-by-app/",
    "https://monzo.com/help/payments-getting-started/InboundpaymentsviaQR/",
    "https://monzo.com/help/payments-getting-started/nearby-friends-help/",
    "https://monzo.com/help/payments-getting-started/add-card-to-apple-google-pay/",
    "https://monzo.com/help/payments-getting-started/split-bill/",
    "https://monzo.com/help/payments-getting-started/sending-money-monzo-to-monzo/",
    "https://monzo.com/help/payments-getting-started/block-someone-on-monzo/",
    "https://monzo.com/help/payments-getting-started/how-to-pay-someone/",
    "https://monzo.com/help/payments-getting-started/cash-deposit-how-to/",
    "https://monzo.com/help/payments-getting-started/direct-debit-set-up/",
    "https://monzo.com/help/payments-getting-started/using-google-pay-card-frozen/",
    "https://monzo.com/help/payments-getting-started/monzo-crypto-friendly/",
    "https://monzo.com/help/payments-getting-started/bank-transfer-how-to/",
    "https://monzo.com/help/payments-getting-started/unsupported-currencies/",
    "https://monzo.com/help/payments-getting-started/cop-cant-check-account/",
    "https://monzo.com/help/payments-getting-started/web-low-balance/",
    "https://monzo.com/help/payments-getting-started/I_cant_withdraw_my_funds_from_FTX/",
    "https://monzo.com/help/payments-getting-started/cheque-foreign-currency/",
    "https://monzo.com/help/payments-getting-started/cash-deposit-limit/",
    "https://monzo.com/help/payments-getting-started/cancel-direct-debit/",
    "https://monzo.com/help/payments-getting-started/paypoint-fee-why/",
    "https://monzo.com/help/payments-getting-started/pay-with-monzo-cheque/",
    "https://monzo.com/help/payments-getting-started/google-pay-payment-limit/",
    "https://monzo.com/help/payments-getting-started/duplicate-notifications-apple-pay/",
    "https://monzo.com/help/payments-getting-started/cop-details-dont-match/",
    "https://monzo.com/help/payments-getting-started/samsung-pay/",
    "https://monzo.com/help/payments-getting-started/cash-deposit-limit-why/",
    "https://monzo.com/help/payments-getting-started/how-direct-debits-work/",
    "https://monzo.com/help/payments-getting-started/is-crypto-allowed/",
    "https://monzo.com/help/payments-getting-started/monzo-cheque-missing/",
    "https://monzo.com/help/payments-getting-started/card-not-accepted-paypoint/",
    "https://monzo.com/help/payments-getting-started/what-nearby-friends/",
    "https://monzo.com/help/payments-getting-started/apple-pay-devices/",
    "https://monzo.com/help/payments-getting-started/making-monzo-default-card-google-pay/",
    "https://monzo.com/help/payments-getting-started/cop-account-doesnt-match/",
    "https://monzo.com/help/payments-getting-started/remove-monzo-card-from-apple-pay/",
    "https://monzo.com/help/payments-getting-started/cheque-how-to-pay/",
    "https://monzo.com/help/payments-getting-started/is-monzo-anti-crypto/",
    "https://monzo.com/help/payments-getting-started/easy-bank-transfers/",
    "https://monzo.com/help/payments-getting-started/adding-card-to-google-pay/",
    "https://monzo.com/help/payments-getting-started/easy-bank-transfer-problem/",
    "https://monzo.com/help/payments-getting-started/split-costs-with-pals-web/",
    "https://monzo.com/help/payments-getting-started/apple-pay-payment-limit/",
    "https://monzo.com/help/payments-getting-started/cop-no-check/",
    "https://monzo.com/help/payments-getting-started/1-percent-euro-fee-breakdown/",
    "https://monzo.com/help/payments-getting-started/payments-to-trade-excel-not-available/",
    "https://monzo.com/help/payments-getting-started/payments-to-express-remit-not-available/",
    "https://monzo.com/help/payments-getting-started/coinbase-supported/",
    "https://monzo.com/help/payments-getting-started/apple-pay-activation-issues/",
    "https://monzo.com/help/payments-getting-started/bank-holiday-delays-web/",
    "https://monzo.com/help/payments-getting-started/how-long-cheque-web/"
  ],
  "https://monzo.com/blog/2018/02/19/third-birthday": [
    "https://monzo.com/blog/2018/02/02/user-research/",
    "https://monzo.com/blog/2018/01/31/end-of-prepaid/",
    "https://monzo.com/blog/2018/01/23/overdraft-update/",
    "https://monzo.com/blog/2017/11/20/pots/",
    "https://monzo.com/blog/2017/11/16/monzo-marketplace/",
    "https://monzo.com/blog/2017/12/18/why-upgrade/"
  ],
  "https://monzo.com/blog/2017/07/25/meet-will": [
    "https://monzo.com/blog/2017/05/15/intro-to-cops/"
  ],
  "http://monzo.com/blog/lets-talk-business/3": [
    "http://monzo.com/blog/2021/03/11/how-to-prepare-your-business-for-the-new-tax-year",
    "http://monzo.com/blog/2020/12/15/how-accounting-can-help-your-business-grow",
    "http://monzo.com/blog/monzo-business-deborah",
    "http://monzo.com/blog/business-banking/do-i-need-a-business-bank-account/",
    "http://monzo.com/blog/2020/10/22/accounting-for-startups",
    "http://monzo.com/blog/2020/09/30/mental-health-self-employed",
    "http://monzo.com/blog/lets-talk-business/4",
    "http://monzo.com/blog/2020/09/17/fifty-thousand-monzo-business-customers",
    "http://monzo.com/blog/2021/01/13/self-employed-tips-for-self-assessment",
    "http://monzo.com/blog/business-basics-social-media",
    "http://monzo.com/blog/2021/03/05/march-2021-budget-small-businesses",
    "http://monzo.com/blog/2020/12/04/accounting-basics-for-every-small-business",
    "http://monzo.com/blog/2021/01/05/self-employed-tax-basics",
    "http://monzo.com/blog/2020/11/25/new-to-monzo-business-weve-made-invoices-better"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/5": [
    "https://monzo.com/blog/2019/06/27/trending-spending-south-east-london",
    "https://monzo.com/blog/2019/06/03/ramadan-swear-pot",
    "https://monzo.com/blog/2019/06/11/should-i-start-investing",
    "https://monzo.com/blog/2019/06/27/trending-spending-north-london",
    "https://monzo.com/blog/2019/06/27/trending-spending-south-west-london",
    "https://monzo.com/blog/2019/06/05/can-i-get-monzo-if-i-already-have-a-bank-account",
    "https://monzo.com/blog/2019/06/07/what-is-interest-explained-in-simple-words",
    "https://monzo.com/blog/2019/06/17/monzo-manchester",
    "https://monzo.com/blog/2019/06/11/1p-savings-challenge-monthly-on-payday",
    "https://monzo.com/blog/2019/06/04/wedding-guests-debt",
    "https://monzo.com/blog/2019/06/27/trending-spending-central-london"
  ],
  "http://monzo.com/legal/plus/terms-and-conditions": [
    "http://monzo.com/legal/plus/fee-information",
    "http://monzo.com/legal/plus/terms-and-conditions/version-1-2/",
    "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions",
    "http://monzo.com/legal/plus/terms-and-conditions/version-1-5/",
    "http://monzo.com/legal/plus/credit-tracker-terms-and-conditions",
    "http://monzo.com/legal/plus/savings-summary",
    "http://monzo.com/legal/plus/terms-and-conditions/version-1-1/",
    "http://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.5.pdf",
    "http://monzo.com/legal/plus/terms-and-conditions/version-1-3/",
    "http://monzo.com/legal/plus/terms-and-conditions/version-1-4/",
    "http://monzo.com/legal/privacy-notice",
    "http://monzo.com/legal/plus/terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/blog/how-to-get-out-of-your-overdraft": [
    "https://monzo.com/blog/authors/chris-maclean",
    "https://monzo.com/blog/2018/08/21/budget-with-monzo"
  ],
  "https://monzo.com/blog/2022/03/31/how-we-secure-monzos-banking-platform": [
    "https://monzo.com/blog/2021/11/18/protecting-our-most-sensitive-secrets",
    "https://monzo.com/blog/2022/02/15/securely-delegating-trust-with-digital-signatures-and-secret-storage-systems",
    "https://monzo.com/blog/2019/07/08/how-we-respond-to-incidents",
    "https://monzo.com/blog/2020/10/19/autoscaling-monzo",
    "https://monzo.com/blog/2022-02-24/scaling-our-on-call-process",
    "https://monzo.com/blog/2019/03/19/improving-our-staff-VPN",
    "https://monzo.com/blog/we-built-network-isolation-for-1-500-services",
    "https://monzo.com/blog/authors/dovydas-bartkevicius",
    "https://monzo.com/blog/authors/chongyang-shi",
    "https://monzo.com/blog/2019/10/11/how-our-security-team-handle-secrets"
  ],
  "https://monzo.com/blog/2018/07/10/making-quarterly-goals-public": [
    "https://monzo.com/blog/2018/07/04/making-recurring-payments-better/",
    "https://monzo.com/blog/2018/05/23/monzo-2.0-summary-for-all/",
    "https://monzo.com/blog/2018/07/02/the-monzo-mission/",
    "https://monzo.com/blog/2018/07/03/the-big-list-update/"
  ],
  "https://monzo.com/blog/2019/05/15/national-numeracy-challenge": [
    "https://monzo.com/campaign/banking-for-all/"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions": [
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.9.pdf",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-8/",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-7/",
    "http://monzo.com/legal/premium/savings-summary",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-4/",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-9/",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-3/",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-2/",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-1/",
    "http://monzo.com/legal/premium/fee-information",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-6/",
    "http://monzo.com/legal/premium/terms-and-conditions/version-1-5/"
  ],
  "https://monzo.com/legal/plus/credit-tracker-terms-and-conditions": [
    "https://monzo.com/legal/files/plus/monzo-plus-credit-tracker-terms-and-conditions.pdf",
    "https://monzo.com/legal/plus/credit-tracker-terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/supporting-all-our-customers/": [
    "https://monzo.com/blog/3-practical-tips-to-reduce-daily-anxiety",
    "https://monzo.com/supporting-customers-signposting/",
    "https://monzo.com/blog/the-extra-costs-of-living-with-adhd",
    "https://monzo.com/blog/mental-health",
    "https://monzo.com/blog/5-practical-tips-for-feeling-less-lonely-in-lockdown",
    "https://monzo.com/i/gambling-block",
    "https://monzo.com/i/share-with-us/",
    "https://monzo.com/i/our-social-programme/",
    "https://monzo.com/help/your-needs",
    "https://monzo.com/i/supporting-customers",
    "https://monzo.com/blog/weve-improved-our-gambling-block",
    "https://monzo.com/blog/how-monzos-gambling-block-and-self-exclusion-helped-me-beat-gambling-addiction-and-pay-off-debt",
    "https://monzo.com/blog/2021/05/13/supporting-our-customers-through-mental-health-problems"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/9": [
    "https://monzo.com/blog/2018/05/11/coin-jar-update",
    "https://monzo.com/blog/2018/05/04/may-update",
    "https://monzo.com/blog/authors/beatrice-borbon/8",
    "https://monzo.com/blog/2018/06/04/june-update",
    "https://monzo.com/blog/2018/06/13/how-to-get-online-in-an-emergency",
    "https://monzo.com/blog/authors/beatrice-borbon/7"
  ],
  "https://monzo.com/blog/2018/05/16/coral-crew/": [
    "https://monzo.com/c/monzo/5",
    "https://monzo.com/c/making-monzo/39",
    "https://monzo.com/c/community/19",
    "https://monzo.com/c/customersupport/10",
    "https://monzo.com/c/foyer/24",
    "https://monzo.com/c/developers/43",
    "https://monzo.com/c/financial-chat/36",
    "https://monzo.com/c/usa/46"
  ],
  "https://monzo.com/blog/2023/05/04/how-we-manage-technology-risk-at-monzo": [
    "https://monzo.com/blog/authors/ken-steenlandt",
    "https://monzo.com/blog/authors/rebecca-mackenzie",
    "https://monzo.com/blog/authors/hollie-mansfield"
  ],
  "http://monzo.com/investments": [
    "http://monzo.com/business-banking/",
    "http://monzo.com/blog/your-fund-and-etfs",
    "http://monzo.com/blog/monzo-investments-is-here-leave-the-hard-work-to-us",
    "http://monzo.com/careers/",
    "http://monzo.com/money-worries/",
    "http://monzo.com/blog/investments",
    "http://monzo.com/investments/",
    "http://monzo.com/our-social-programme/",
    "http://monzo.com/blog/2023/09/12/how-do-i-know-if-investing-is-for-me",
    "http://monzo.com/accessibility/"
  ],
  "https://monzo.com/blog/2017/11/16/monzo-marketplace/": [
    "https://monzo.com/blog/partnerships"
  ],
  "https://monzo.com/help/us-general-info": [
    "https://monzo.com/help/us-general-info/us-is-my-information-safe-with-monzo/",
    "https://monzo.com/help/us-general-info/us-reporting-and-issue-raising-a-dispute/",
    "https://monzo.com/help/us-general-info/us-calling-monzo-support/",
    "https://monzo.com/help/us-general-info/us-reaching-support-if-you-dont-have-access-to-your-account/",
    "https://monzo.com/help/us-general-info/us-contacting-customer-support/",
    "https://monzo.com/help/us-general-info/us-fraud-raising-a-dispute/",
    "https://monzo.com/help/us-general-info/us-are-there-any-penalties-for-having-an-inactive-account/",
    "https://monzo.com/help/us-general-info/us-is-monzo-a-bank/",
    "https://monzo.com/help/us-general-info/us-is-my-money-safe-with-monzo/",
    "https://monzo.com/help/us-general-info/us-staying-up-to-date-with-new-monzo-features/",
    "https://monzo.com/help/us-general-info/us-opening-a-monzo-account/",
    "https://monzo.com/help/us-general-info/us-does-monzo-charge-any-fees/",
    "https://monzo.com/help/us-general-info/us-what-is-monzo/",
    "https://monzo.com/help/us-general-info/us-will-monzo-affect-my-credit-score/"
  ],
  "https://monzo.com/blog/monzo-hq/5": [
    "https://monzo.com/blog/2018/04/27/backend-engineer-bonus",
    "https://monzo.com/blog/2018/07/02/publishing-our-2018-annual-report",
    "https://monzo.com/blog/2018/07/11/working-towards-company-goals",
    "https://monzo.com/blog/2017/12/08/monzo-mixtape-two",
    "https://monzo.com/blog/2017/12/01/cardiff"
  ],
  "https://monzo.com/blog/2023/09/12/how-do-i-know-if-investing-is-for-me": [
    "https://monzo.com/blog/2023/09/12/staying-calm-when-your-investment-value-dips/",
    "https://monzo.com/blog/authors/natalie-gil",
    "https://monzo.com/-deeplinks/create-pot"
  ],
  "https://monzo.com/blog/2023/12/14/securing-admin-access-to-monzos-platform/": [
    "https://monzo.com/blog/authors/craig-ferguson",
    "https://monzo.com/blog/2022/03/31/how-we-secure-monzos-banking-platform",
    "https://monzo.com/blog/2022/05/26/humans-who-can-rpc-securing-staff-access-to-microservices",
    "https://monzo.com/blog/controlling-outbound-traffic-from-kubernetes"
  ],
  "https://monzo.com/legal/plus/fee-information": [
    "https://monzo.com/legal/plus/fee-information/version-1-0/",
    "https://monzo.com/legal/plus/fee-information/version-1-1/",
    "https://monzo.com/legal/plus/fee-information/version-1-2/",
    "https://monzo.com/legal/plus/fee-information/version-1-3/",
    "https://monzo.com/legal/plus/fee-information/version-1-4/",
    "https://monzo.com/legal/files/plus/monzo-plus-fee-information-1.4.pdf"
  ],
  "https://monzo.com/blog/2016/08/25/monzo/": [
    "https://monzo.com/blog/2016/06/13/new-mondo-changing-our-name/",
    "https://monzo.com/static/images/blog/2016-08-25-monzo/hoodie.jpg"
  ],
  "http://monzo.com/legal/privacy-notice/": [
    "http://monzo.com/legal/privacy-notice/version-1-15/",
    "http://monzo.com/legal/privacy-notice/version-1-5/",
    "http://monzo.com/legal/privacy-notice/version-1-6/",
    "http://monzo.com/legal/privacy-notice/version-1-17/",
    "http://monzo.com/legal/privacy-notice/version-1-13/",
    "http://monzo.com/legal/privacy-notice/version-1-4/",
    "http://monzo.com/legal/privacy-notice/version-1-14/",
    "http://monzo.com/legal/privacy-notice/version-1-12/",
    "http://monzo.com/legal/privacy-notice/version-1-16/",
    "http://monzo.com/legal/privacy-notice/version-1-1/",
    "http://monzo.com/legal/privacy-notice/version-1-11/",
    "http://monzo.com/legal/privacy-notice/version-1-8/",
    "http://monzo.com/legal/privacy-notice/version-1-3/",
    "http://monzo.com/legal/privacy-notice/version-1-2/",
    "http://monzo.com/legal/privacy-notice/version-1-10/",
    "http://monzo.com/legal/privacy-notice/version-1-9/",
    "http://monzo.com/legal/privacy-notice/version-1-7/"
  ],
  "https://monzo.com/blog/monzo-hq": [
    "https://monzo.com/blog/monzo-hq/3",
    "https://monzo.com/blog/monzo-among-the-uks-most-recommended-brands-february-2020",
    "https://monzo.com/blog/monzo-hq/2",
    "https://monzo.com/blog/year-in-monzo-2020",
    "https://monzo.com/blog/plans-cancelled-because-of-coronavirus-find-out-if-you-can-get-your-money",
    "https://monzo.com/blog/withdrawal-and-card-delivery-fees",
    "https://monzo.com/blog/supporting-neurodiversity-at-monzo",
    "https://monzo.com/blog/2020/08/17/were-the-best-bank-for-overall-service-quality-and-online-and-mobile-banking",
    "https://monzo.com/blog/open-palm-tech-donate",
    "https://monzo.com/blog/are-you-an-ally-or-an-advocate-for-lgbtq-inclusion",
    "https://monzo.com/blog/were-here-to-support-you-with-your-money-and-your-monzo-account-during-the",
    "https://monzo.com/blog/more-people-switched-their-bank-accounts-to-monzo",
    "https://monzo.com/blog/monzo-hq/8"
  ],
  "http://monzo.com/help/payments-getting-started": [
    "http://monzo.com/help/payments-getting-started/monzo-me-how-to/",
    "http://monzo.com/help/payments-getting-started/using-google-pay-card-frozen/",
    "http://monzo.com/help/payments-getting-started/block-someone-on-monzo/",
    "http://monzo.com/help/payments-getting-started/cheque-how-to-pay-web-by-app/",
    "http://monzo.com/help/payments-getting-started/standing-order-cancel/",
    "http://monzo.com/help/payments-getting-started/cash-deposit-how-to/",
    "http://monzo.com/help/payments-getting-started/bank-transfer-how-to/",
    "http://monzo.com/help/payments-getting-started/making-monzo-default-card-google-pay/",
    "http://monzo.com/help/payments-getting-started/google-pay-activation-issues/",
    "http://monzo.com/help/payments-getting-started/add-money-from-outside-uk/",
    "http://monzo.com/help/payments-getting-started/I_cant_withdraw_my_funds_from_FTX/",
    "http://monzo.com/help/payments-getting-started/google-pay-payment-limit/",
    "http://monzo.com/help/payments-getting-started/is-monzo-anti-crypto/",
    "http://monzo.com/help/payments-getting-started/cash-deposit-limit-why/",
    "http://monzo.com/help/payments-getting-started/binance-block-why/",
    "http://monzo.com/help/payments-getting-started/adding-card-to-google-pay/",
    "http://monzo.com/help/payments-getting-started/monzo-cheque-missing/",
    "http://monzo.com/help/payments-getting-started/coinbase-supported/",
    "http://monzo.com/help/payments-getting-started/easy-bank-transfers/",
    "http://monzo.com/help/payments-getting-started/split-bill/",
    "http://monzo.com/help/payments-getting-started/apple-pay-activation-issues/",
    "http://monzo.com/help/payments-getting-started/what-nearby-friends/",
    "http://monzo.com/help/payments-getting-started/standing-order-set-up/",
    "http://monzo.com/help/payments-getting-started/how-to-pay-someone/",
    "http://monzo.com/help/payments-getting-started/paypoint-fee-why/",
    "http://monzo.com/help/payments-getting-started/unsupported-currencies/",
    "http://monzo.com/help/payments-getting-started/cancel-direct-debit/",
    "http://monzo.com/help/payments-getting-started/nearby-friends-help/",
    "http://monzo.com/help/payments-getting-started/duplicate-notifications-apple-pay/",
    "http://monzo.com/help/payments-getting-started/sending-money-monzo-to-monzo/",
    "http://monzo.com/help/payments-getting-started/cop-details-dont-match/",
    "http://monzo.com/help/payments-getting-started/easy-bank-transfers-not-supported/",
    "http://monzo.com/help/payments-getting-started/add-card-to-apple-google-pay/",
    "http://monzo.com/help/payments-getting-started/monzo-crypto-friendly/",
    "http://monzo.com/help/payments-getting-started/how-long-cheque-web/",
    "http://monzo.com/help/payments-getting-started/card-not-accepted-paypoint/",
    "http://monzo.com/help/payments-getting-started/moving-salary-to-monzo/",
    "http://monzo.com/help/payments-getting-started/easy-bank-transfer-problem/",
    "http://monzo.com/help/payments-getting-started/monzo-default-apple-pay-card/",
    "http://monzo.com/help/payments-getting-started/web-low-balance/",
    "http://monzo.com/help/payments-getting-started/is-crypto-allowed/",
    "http://monzo.com/help/payments-getting-started/cop-cant-check-account/",
    "http://monzo.com/help/payments-getting-started/cheque-how-to-pay/",
    "http://monzo.com/help/payments-getting-started/apple-pay-payment-limit/",
    "http://monzo.com/help/payments-getting-started/InboundpaymentsviaQR/",
    "http://monzo.com/help/payments-getting-started/how-direct-debits-work/",
    "http://monzo.com/help/payments-getting-started/cash-deposit-limit/",
    "http://monzo.com/help/payments-getting-started/bank-holiday-delays-web/",
    "http://monzo.com/help/payments-getting-started/cop-account-doesnt-match/",
    "http://monzo.com/help/payments-getting-started/1-percent-euro-fee-breakdown/",
    "http://monzo.com/help/payments-getting-started/cop-no-check/",
    "http://monzo.com/help/payments-getting-started/cheque-foreign-currency/",
    "http://monzo.com/help/payments-getting-started/payments-to-express-remit-not-available/",
    "http://monzo.com/help/payments-getting-started/direct-debit-set-up/",
    "http://monzo.com/help/payments-getting-started/direct-debit-guarantee-what/",
    "http://monzo.com/help/payments-getting-started/split-costs-with-pals-web/",
    "http://monzo.com/help/payments-getting-started/pay-with-monzo-cheque/",
    "http://monzo.com/help/payments-getting-started/payments-to-trade-excel-not-available/",
    "http://monzo.com/help/payments-getting-started/apple-pay-devices/",
    "http://monzo.com/help/payments-getting-started/remove-monzo-card-from-apple-pay/",
    "http://monzo.com/help/payments-getting-started/samsung-pay/"
  ],
  "https://monzo.com/blog/2019/01/04/monzo-in-2019": [
    "https://monzo.com/blog/2018/11/22/business-banking/",
    "https://monzo.com/features/apple-pay/",
    "https://monzo.com/blog/2018/06/25/monzo-international-transfers/",
    "https://monzo.com/blog/2018/12/06/crowdfunding-in-numbers/"
  ],
  "https://monzo.com/blog/save-gbp667-95-a-year-with-the-1p-saving-challenge": [
    "https://monzo.com/blog/2019/06/04/reverse-1p-savings-challenge-monzo",
    "https://monzo.com/blog/how-to-save-money"
  ],
  "https://monzo.com/blog/how-to-create-a-customer-segmentation-choosing-the-right-segmentation": [
    "https://monzo.com/blog/authors/vincent-hao"
  ],
  "https://monzo.com/blog/2023/09/06/making-it-clear-when-were-on-a-call-with-you": [
    "https://monzo.com/blog/2019/12/23/how-well-contact-you",
    "https://monzo.com/blog/authors/priyesh-patel",
    "https://monzo.com/blog/how-we-protect-you"
  ],
  "https://monzo.com/blog/2018/08/21/savings-update/": [
    "https://monzo.com/blog/authors/valerio-magliulo"
  ],
  "http://monzo.com/blog/product-updates/9": [
    "http://monzo.com/blog/2018/04/09/making-overdrafts-available",
    "http://monzo.com/blog/2017/12/01/top-ups-are-back",
    "http://monzo.com/blog/2018/03/07/coin-jar",
    "http://monzo.com/blog/2018/04/12/transaction-tags",
    "http://monzo.com/blog/product-updates/7",
    "http://monzo.com/blog/2017/11/14/nfc-card-activation",
    "http://monzo.com/blog/2018/04/03/switch-to-monzo-current-account-switch-service",
    "http://monzo.com/blog/product-updates/8",
    "http://monzo.com/blog/2018/02/15/android-crowdsourcing-merchant-data",
    "http://monzo.com/blog/2018/02/14/android-pulse",
    "http://monzo.com/blog/2018/01/25/bank-statements",
    "http://monzo.com/blog/2018/03/19/500k-customers",
    "http://monzo.com/blog/2017/09/27/android-help-search",
    "http://monzo.com/blog/2018/02/12/monzo-me",
    "http://monzo.com/blog/2017/10/30/monzo-to-monzo-payments"
  ],
  "http://monzo.com/investor-information/": [
    "http://monzo.com/annual-report/2019/",
    "http://monzo.com/annual-report/2020/",
    "http://monzo.com/docs/FY23-Monzo-Website-Disclosures-CRD-V-Article-96-and-CRR-Article-450.pdf",
    "http://monzo.com/annual-report/2018/",
    "http://monzo.com/investor-information/internal-audit-charter/",
    "http://monzo.com/docs/monzo-pillar-3-2021.pdf",
    "http://monzo.com/docs/monzo-pillar-3-2022.pdf",
    "http://monzo.com/docs/pillar_3_2020.pdf",
    "http://monzo.com/docs/pillar_3_2018.pdf",
    "http://monzo.com/docs/monzo-crd-statement-2022.pdf",
    "http://monzo.com/docs/annual-report-2017.pdf",
    "http://monzo.com/docs/annual-report-2018.pdf",
    "http://monzo.com/docs/monzo-annual-report-2020.pdf",
    "http://monzo.com/annual-report/2023/",
    "http://monzo.com/docs/monzo-pillar-3-2023.pdf",
    "http://monzo.com/annual-report/2017/",
    "http://monzo.com/docs/monzo-annual-report-2021.pdf",
    "http://monzo.com/annual-report/2022/",
    "http://monzo.com/docs/monzo-annual-report-2023.pdf",
    "http://monzo.com/docs/pillar_3_2019.pdf",
    "http://monzo.com/annual-report/2021/",
    "http://monzo.com/docs/annual-report-2019.pdf",
    "http://monzo.com/docs/monzo-annual-report-2022.pdf"
  ],
  "https://monzo.com/help/travelling/reasons-travel-is-better-with-monzo/": [
    "https://monzo.com/help/travelling/understanding-fees",
    "https://monzo.com/help/travelling/"
  ],
  "http://monzo.com/help/us": [
    "http://monzo.com/help/us-joint-accounts",
    "http://monzo.com/help/us-trends",
    "http://monzo.com/help/us-safety-and-security",
    "http://monzo.com/help/us-updating-your-profile",
    "http://monzo.com/help/us-transferring-money",
    "http://monzo.com/help/us-pots",
    "http://monzo.com/help/us-general-info",
    "http://monzo.com/help/us-adding-money",
    "http://monzo.com/help/us-travel-with-Monzo",
    "http://monzo.com/help/us-monzo-with-friends",
    "http://monzo.com/help/us-using-your-card",
    "http://monzo.com/help/us-signing-up",
    "http://monzo.com/help/us-budgeting-with-monzo",
    "http://monzo.com/help/us-saving-with-monzo"
  ],
  "http://monzo.com/blog/2019/09/20/the-monzo-app-is-changing": [
    "http://monzo.com/blog/authors/bruno-vaz-moco"
  ],
  "https://monzo.com/blog/2017/04/05/banking-licence": [
    "https://monzo.com/blog/2015/06/01/welcome-to-mondo/",
    "https://monzo.com/blog/authors/tom-blomfield",
    "https://monzo.com/blog/2017/03/14/12000000/",
    "https://monzo.com/blog/2016/08/25/monzo/",
    "https://monzo.com/blog/2016/03/03/crowdfunded/",
    "https://monzo.com/blog/2016/10/03/targets/",
    "https://monzo.com/blog/2016/12/07/monzo-me/"
  ],
  "https://monzo.com/blog/banking-and-regulation": [
    "https://monzo.com/blog/2016/01/20/how-do-bank-payments-work",
    "https://monzo.com/blog/2016/09/07/our-approach-to-overdrafts",
    "https://monzo.com/blog/2019/09/11/strong-customer-authentication-using-chip-and-pin",
    "https://monzo.com/blog/2016/01/08/how-does-the-wholesale-foreign-exchange-market-work",
    "https://monzo.com/blog/weve-teamed-up-with-truelayer-team-up-to-protect-vulnerable-customers",
    "https://monzo.com/blog/banking-and-regulation/2",
    "https://monzo.com/blog/2018/03/20/terms-and-conditions-monzo",
    "https://monzo.com/blog/2017/02/16/the-richest-man-in-babylon",
    "https://monzo.com/blog/2022/03/21/our-tax-strategy",
    "https://monzo.com/blog/the-appg-for-gambling-harms-joins-the-call",
    "https://monzo.com/blog/extending-our-open-banking-gambling-block",
    "https://monzo.com/blog/2019/10/31/statement-of-fees-to-your-account"
  ],
  "https://monzo.com/help/joint-accounts": [
    "https://monzo.com/help/joint-accounts/types-account-switch/",
    "https://monzo.com/help/joint-accounts/joint-account-switch/",
    "https://monzo.com/help/joint-accounts/create-pot-app/",
    "https://monzo.com/help/joint-accounts/what-joint-account/",
    "https://monzo.com/help/joint-accounts/close-joint-account-how-to/",
    "https://monzo.com/help/joint-accounts/current-account-joint-account/",
    "https://monzo.com/help/joint-accounts/credit-score-joint-account/"
  ],
  "https://monzo.com/legal/terms-and-conditions/": [
    "https://monzo.com/help/account-and-profile/bank-statement-how-to/",
    "https://monzo.com/legal/terms-and-conditions/version-1-8/",
    "https://monzo.com/help/payments-getting-started/direct-debit-guarantee-what/",
    "https://monzo.com/blog/2019/08/22/strong-customer-authentication/",
    "https://monzo.com/legal/terms-and-conditions/version-2-3/",
    "https://monzo.com/legal/terms-and-conditions/version-2-0/",
    "https://monzo.com/help/payments-getting-started/",
    "https://monzo.com/legal/fee-information/",
    "https://monzo.com/legal/terms-and-conditions/version-1-3/",
    "https://monzo.com/help/monzo-card-pin/monzo-card-lost-damaged-stolen/",
    "https://monzo.com/legal/terms-and-conditions/version-2-4/",
    "https://monzo.com/legal/terms-and-conditions/version-2-2/",
    "https://monzo.com/legal/terms-and-conditions/version-2-1/",
    "https://monzo.com/help/account-and-profile/gambling-spending-block-how-to/",
    "https://monzo.com/help/monzo-fraud-category/stay-safe-online/",
    "https://monzo.com/legal/terms-and-conditions/version-1-6/",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.4.pdf",
    "https://monzo.com/legal/terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/terms-and-conditions/version-1-4/",
    "https://monzo.com/legal/terms-and-conditions/version-1-2/",
    "https://monzo.com/legal/terms-and-conditions/version-1-7/",
    "https://monzo.com/help/payments-troubleshooting/offline-payments/",
    "https://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap/",
    "https://monzo.com/legal/terms-and-conditions/version-1-9/",
    "https://monzo.com/help/account-and-profile/accountlimits/",
    "https://monzo.com/legal/terms-and-conditions/version-1-5/",
    "https://monzo.com/i/ecb-rates/"
  ],
  "https://monzo.com/blog/2018/12/11/december-update": [
    "https://monzo.com/blog/2018/11/05/instant-apple-pay/",
    "https://monzo.com/blog/2018/11/20/flexible-budgeting/",
    "https://monzo.com/blog/2018/11/19/instant-google-pay/",
    "https://monzo.com/blog/2018/11/21/deposit-cash/",
    "https://monzo.com/blog/2018/12/10/joint-pots/"
  ],
  "https://monzo.com/help/overdrafts-loans": [
    "https://monzo.com/help/business-accounts-signup",
    "https://monzo.com/help/monzo-fraud-category",
    "https://monzo.com/help/monzo-flex",
    "https://monzo.com/help/monzo-premium",
    "https://monzo.com/help/overdrafts-loans/overdrafts-credit-score/",
    "https://monzo.com/help/business-getpaid",
    "https://monzo.com/help/payments-getting-started",
    "https://monzo.com/help/overdrafts-loans/how-to-open-overdraft/",
    "https://monzo.com/help/overdrafts-loans/Managing-your-money/",
    "https://monzo.com/help/overdrafts-loans/overdraft-monzo-business-web/",
    "https://monzo.com/help/travelling",
    "https://monzo.com/help/overdrafts-loans/borrowing-more/",
    "https://monzo.com/help/overdrafts-loans/what-is-an-overdraft/",
    "https://monzo.com/help/overdrafts-loans/turn-off-lending-offers/",
    "https://monzo.com/help/overdrafts-loans/notice-of-sums-in-arrears/",
    "https://monzo.com/help/service-quality-results",
    "https://monzo.com/help/investments",
    "https://monzo.com/help/monzo-plus",
    "https://monzo.com/help/payments-paying-monzobusiness",
    "https://monzo.com/help/app-help",
    "https://monzo.com/help/overdrafts-loans/loans-monzo-business-web/",
    "https://monzo.com/help/overdrafts-loans/unauthorised-overdrafts/",
    "https://monzo.com/help/switching-to-monzo",
    "https://monzo.com/help/monzo-card-pin",
    "https://monzo.com/help/budgeting-overdrafts-savings",
    "https://monzo.com/help/overdrafts-loans/change-repaymentdate-loan-web/",
    "https://monzo.com/help/overdrafts-loans/switching-off-overdraft/",
    "https://monzo.com/help/cashback",
    "https://monzo.com/help/overdrafts-loans/manage-overdraft-web/",
    "https://monzo.com/help/payments-troubleshooting",
    "https://monzo.com/help/overdrafts-loans/changing-overdraft-limit/",
    "https://monzo.com/help/emergencies",
    "https://monzo.com/help/overdrafts-loans/nosia-snosia-payment-arrangement/",
    "https://monzo.com/help/joint-accounts",
    "https://monzo.com/help/web-logging-in-to-the-app",
    "https://monzo.com/help/overdrafts-loans/consolidation-loans/",
    "https://monzo.com/help/overdrafts-loans/how-do-overdrafts-work/",
    "https://monzo.com/help/monzo-with-friends",
    "https://monzo.com/help/overdrafts-loans/lost-job/",
    "https://monzo.com/help/opening-an-account",
    "https://monzo.com/help/overdrafts-loans/overdrafts-fees/",
    "https://monzo.com/help/overdrafts-loans/change-overdraft-notifications/",
    "https://monzo.com/help/account-and-profile",
    "https://monzo.com/help/legal-stuff",
    "https://monzo.com/help/overdrafts-loans/early-payment-loan/",
    "https://monzo.com/help/overdrafts-loans/Help-to-use-your-overdraft-less/",
    "https://monzo.com/help/overdrafts-loans/emergency-overdrafts/",
    "https://monzo.com/help/overdrafts-loans/notices-of-correction/"
  ],
  "https://monzo.com/blog/2019/01/30/mental-health/": [
    "https://monzo.com/static/docs/Monzo-Mental-Health-Poster.pdf"
  ],
  "https://monzo.com/help/monzo-flex/monzo-flex-and-section-75/": [
    "https://monzo.com/help/monzo-flex/monzo-flex-and-section-75-claims/",
    "https://monzo.com/help/monzo-flex/what-does-a-default-mean-for-my-flex/",
    "https://monzo.com/help/monzo-flex/missing-a-monzo-flex-payment/",
    "https://monzo.com/help/payments-troubleshooting/chargebacks-current-account",
    "https://monzo.com/help/monzo-flex/Managing-your-money/",
    "https://monzo.com/help/monzo-flex/How-do-refunds-work-in-Flex/",
    "https://monzo.com/help/monzo-flex/"
  ],
  "http://monzo.com/help/budgeting-overdrafts-savings": [
    "http://monzo.com/help/budgeting-overdrafts-savings/create-pot-app/",
    "http://monzo.com/help/budgeting-overdrafts-savings/transferring-an-ISA-away-from-Monzo/",
    "http://monzo.com/help/budgeting-overdrafts-savings/withdraw-savings-pot/",
    "http://monzo.com/help/budgeting-overdrafts-savings/how-does-interest-work/",
    "http://monzo.com/help/budgeting-overdrafts-savings/reorder-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/what-trends-tab-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/web-bill-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/web-salary-sorter/",
    "http://monzo.com/help/budgeting-overdrafts-savings/trends-excluded-categories-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/how-to-set-custom-dates-summary/",
    "http://monzo.com/help/budgeting-overdrafts-savings/pot-types/",
    "http://monzo.com/help/budgeting-overdrafts-savings/summary-left-over/",
    "http://monzo.com/help/budgeting-overdrafts-savings/getting-isa-on-joint-account/",
    "http://monzo.com/help/budgeting-overdrafts-savings/archived-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/types-of-ISA-at-monzo/",
    "http://monzo.com/help/budgeting-overdrafts-savings/targets-in-trends-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/round-up-app/",
    "http://monzo.com/help/budgeting-overdrafts-savings/add-withdraw-hidden-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/transferring-an-ISA-to-Monzo/",
    "http://monzo.com/help/budgeting-overdrafts-savings/how-to-close-or-archive-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/trends-left-to-spend-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/what-is-summary/",
    "http://monzo.com/help/budgeting-overdrafts-savings/how-does-the-summary-dial-work/",
    "http://monzo.com/help/budgeting-overdrafts-savings/do-monzo-hold-money/",
    "http://monzo.com/help/budgeting-overdrafts-savings/instant-access-savings-pots-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/interest-on-monzo-isas/",
    "http://monzo.com/help/budgeting-overdrafts-savings/pots-with-overdrafts/",
    "http://monzo.com/help/budgeting-overdrafts-savings/hide-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/trends-custom-categories-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/how-to-close-pot/",
    "http://monzo.com/help/budgeting-overdrafts-savings/instant-access-pots-new/",
    "http://monzo.com/help/budgeting-overdrafts-savings/what-is-a-pot/",
    "http://monzo.com/help/budgeting-overdrafts-savings/paying-tax-on-an-isa/",
    "http://monzo.com/help/budgeting-overdrafts-savings/when-is-interest-paid/",
    "http://monzo.com/help/budgeting-overdrafts-savings/isas-and-moving-abroad/",
    "http://monzo.com/help/budgeting-overdrafts-savings/unlock-pot/",
    "http://monzo.com/help/budgeting-overdrafts-savings/trends-tab-connected-accounts/",
    "http://monzo.com/help/budgeting-overdrafts-savings/what-are-locked-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/what-is-left-to-spend/",
    "http://monzo.com/help/budgeting-overdrafts-savings/trends-months-years-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/is-protected/",
    "http://monzo.com/help/budgeting-overdrafts-savings/trends-spending-and-balance-web/",
    "http://monzo.com/help/budgeting-overdrafts-savings/moving-money-to-from-pots/",
    "http://monzo.com/help/budgeting-overdrafts-savings/how-to-set-payday/"
  ],
  "https://monzo.com/fraud": [
    "https://monzo.com/blog/2023/09/06/making-it-clear-when-were-on-a-call-with-you",
    "https://monzo.com/blog/2019/07/18/investment-opportunity-scams",
    "https://monzo.com/blog/behind-the-scenes-of-a-phishing-scam/",
    "https://monzo.com/blog/hmrc-scam/",
    "https://monzo.com/blog/police-impersonation-scam-phone-call",
    "https://monzo.com/security/",
    "https://monzo.com/blog/2019/12/23/how-well-contact-you/"
  ],
  "https://monzo.com/blog/product-updates/7": [
    "https://monzo.com/blog/2018/07/03/custom-app-icons",
    "https://monzo.com/blog/2018/07/05/fingerprint-pay-android",
    "https://monzo.com/blog/2018/07/24/receiving-international-payments",
    "https://monzo.com/blog/2018/08/06/monzo-for-16-18-year-olds",
    "https://monzo.com/blog/2018/07/16/schedule-payments-into-pots",
    "https://monzo.com/blog/2018/07/24/what-is-sepa",
    "https://monzo.com/blog/2018/07/04/making-recurring-payments-better"
  ],
  "http://monzo.com/help/monzo-card-pin": [
    "http://monzo.com/help/monzo-card-pin/card-payment-declined-still-been-charged/",
    "http://monzo.com/help/monzo-card-pin/frozen-card-payment/",
    "http://monzo.com/help/monzo-card-pin/my-card-will-expire-soon/",
    "http://monzo.com/help/monzo-card-pin/account-blocked/",
    "http://monzo.com/help/monzo-card-pin/my-card-is-expiring-what-can-I-do-with-it/",
    "http://monzo.com/help/monzo-card-pin/expecting-refund-but-getting-a-new-card/",
    "http://monzo.com/help/monzo-card-pin/how-to-find-your-monzo-card-details/",
    "http://monzo.com/help/monzo-card-pin/international-card-delivery/",
    "http://monzo.com/help/monzo-card-pin/i-want-second-card/",
    "http://monzo.com/help/monzo-card-pin/card-is-expiring-where-can-I-get-new-card-delivered/",
    "http://monzo.com/help/monzo-card-pin/freezing-defrosting/",
    "http://monzo.com/help/monzo-card-pin/want-to-change-pin/",
    "http://monzo.com/help/monzo-card-pin/a-new-card-is-coming-but-I-didn't-order-it/",
    "http://monzo.com/help/monzo-card-pin/monzo-card-lost-damaged-stolen/",
    "http://monzo.com/help/monzo-card-pin/monzo-card-blocked/",
    "http://monzo.com/help/monzo-card-pin/activating-your-card/",
    "http://monzo.com/help/monzo-card-pin/contactless-not-working/",
    "http://monzo.com/help/monzo-card-pin/take-out-cash-atm-locator/",
    "http://monzo.com/help/monzo-card-pin/when-will-my-new-card-arrive-following-old-card-expiry/",
    "http://monzo.com/help/monzo-card-pin/dont-know-forgot-pin/",
    "http://monzo.com/help/monzo-card-pin/can-I-get-my-expired-card-replacement-delivered-abroad/",
    "http://monzo.com/help/monzo-card-pin/is-it-credit-card/",
    "http://monzo.com/help/monzo-card-pin/does-support-3dsecure/",
    "http://monzo.com/help/monzo-card-pin/why-are-my-contactless-card-payments-being-declined/",
    "http://monzo.com/help/monzo-card-pin/i-want-to-update-my-delivery-address/",
    "http://monzo.com/help/monzo-card-pin/update-delivery-address/",
    "http://monzo.com/help/monzo-card-pin/card-not-arrived/",
    "http://monzo.com/help/monzo-card-pin/why-does-my-card-expire/",
    "http://monzo.com/help/monzo-card-pin/my-card-payment-declined/",
    "http://monzo.com/help/monzo-card-pin/monzo-card-accepted-everywhere/"
  ],
  "https://monzo.com/blog/monzo-101": [
    "https://monzo.com/blog/2019/11/11/10-monzo-features-your-old-bank-doesnt-have-yet",
    "https://monzo.com/blog/monzo-101/2",
    "https://monzo.com/blog/2018/06/05/monzo-exchange-rate",
    "https://monzo.com/blog/2019/06/12/make-monzo-my-main-account",
    "https://monzo.com/blog/2019/11/11/unlock-the-monzo-app-with-your-fingerprint",
    "https://monzo.com/blog/10-magical-monzo-features",
    "https://monzo.com/blog/2020-01-01/switch-to-monzo-without-closing-your-old-account",
    "https://monzo.com/blog/research-findings-at-monzo",
    "https://monzo.com/blog/2019/12/05/what-you-need-to-know-about-going-full-monzo",
    "https://monzo.com/blog/monzo-101/4",
    "https://monzo.com/blog/how-to-open-a-monzo-account",
    "https://monzo.com/blog/monzo-101/3"
  ],
  "https://monzo.com/blog/authors/naji-esiri/2": [
    "https://monzo.com/blog/2017/07/27/monzo-insider",
    "https://monzo.com/blog/2017/01/26/our-new-community-page",
    "https://monzo.com/blog/2017/03/31/designers-inspiration",
    "https://monzo.com/blog/2017/04/20/crowdfunding-in-numbers",
    "https://monzo.com/blog/2017/02/09/customer-support-quotables-short",
    "https://monzo.com/blog/2017/01/24/100000th-user",
    "https://monzo.com/blog/2017/06/08/host-a-monzo-meetup",
    "https://monzo.com/blog/2017/04/27/welcome-to-the-drawing-board"
  ],
  "http://monzo.com/blog/are-you-an-ally-or-an-advocate-for-lgbtq-inclusion": [
    "http://monzo.com/blog/authors/matt-measor"
  ],
  "http://monzo.com/blog/product-updates/2": [
    "http://monzo.com/blog/2021/03/30/get-ready-for-the-road-with-rac",
    "http://monzo.com/blog/2020/10/20/comparing-monzo-premium-and-monzo-plus",
    "http://monzo.com/blog/new-bill-split-reminder/",
    "http://monzo.com/blog/whats-new-in-monzo-october-2021/",
    "http://monzo.com/blog/2020/10/20/how-we-value-monzo-premium",
    "http://monzo.com/blog/youll-be-able-to-make-contactless-payments-up-to-gbp100-to-make-paying-more",
    "http://monzo.com/blog/trends",
    "http://monzo.com/blog/product-updates/4",
    "http://monzo.com/blog/new-international-transfers/",
    "http://monzo.com/blog/pay-on-card-from-a-pot/",
    "http://monzo.com/blog/2020/10/15/flux-hm",
    "http://monzo.com/blog/2021/04/20/new-features-for-connected-accounts-and-virtual-cards",
    "http://monzo.com/blog/automated-billing-updater/"
  ],
  "http://monzo.com/help/business-accounts-signup": [
    "http://monzo.com/help/business-accounts-signup/business-account-getting-in-after-submitting-application/",
    "http://monzo.com/help/business-accounts-signup/monzo-business-signup-existing-personal-account/",
    "http://monzo.com/help/business-accounts-signup/eligible-businesses/",
    "http://monzo.com/help/business-accounts-signup/using-current-account-for-business/",
    "http://monzo.com/help/business-accounts-signup/business-account-signup-no-personal-account/",
    "http://monzo.com/help/business-accounts-signup/business-card-delivery-address/",
    "http://monzo.com/help/business-accounts-signup/multiple-business-accounts/",
    "http://monzo.com/help/business-accounts-signup/business-verifying-persons-of-significant-control-at-sign-up/",
    "http://monzo.com/help/business-accounts-signup/add-and-manage-members/",
    "http://monzo.com/help/business-accounts-signup/business-banking-cass/",
    "http://monzo.com/help/business-accounts-signup/business-account-signup-start-on-web/"
  ],
  "http://monzo.com/blog/monzo-hq/2": [
    "http://monzo.com/blog/2019/09/08/why-monzo-wasnt-working-on-july-29th",
    "http://monzo.com/blog/cash-withdrawals-in-the-european-economic-area-eea-are-now-free",
    "http://monzo.com/blog/2019/06/20/why-bank-transfers-failed-on-30th-may-2019",
    "http://monzo.com/blog/2020/01/17/weve-started-reporting-to-experian",
    "http://monzo.com/blog/monzo-in-2020-looking-back",
    "http://monzo.com/blog/2019/10/18/watchdog-response",
    "http://monzo.com/blog/2019/06/27/monzo-2019-annual-report"
  ],
  "https://monzo.com/blog/2018/05/21/monzo-2.0-launch": [
    "https://monzo.com/blog/2018/05/17/apple-pay-is-here/",
    "https://monzo.com/blog/2018/04/04/ending-prepaid/",
    "https://monzo.com/blog/2018/05/11/coin-jar-update/",
    "https://monzo.com/blog/2018/04/09/making-overdrafts-available/",
    "https://monzo.com/blog/2018/02/19/third-birthday/"
  ],
  "https://monzo.com/blog/customer-support": [
    "https://monzo.com/blog/2018/08/03/our-internal-product-vision",
    "https://monzo.com/blog/2018/07/31/monzo-las-vegas",
    "https://monzo.com/blog/2019/03/05/flybe-collapse",
    "https://monzo.com/blog/2018/10/18/work-at-monzo",
    "https://monzo.com/blog/2019/09/23/thomas-cook-collapse",
    "https://monzo.com/blog/2018/11/02/monzo-chat",
    "https://monzo.com/blog/2018/12/17/customer-support",
    "https://monzo.com/blog/2018/08/02/urgent-questions",
    "https://monzo.com/blog/customer-support/2",
    "https://monzo.com/blog/2018/08/01/data-help",
    "https://monzo.com/blog/2018/08/03/measuring-customer-happiness",
    "https://monzo.com/blog/2018/12/11/las-vegas-office"
  ],
  "http://monzo.com/blog/authors/max-white": [
    "http://monzo.com/blog/2019/11/11/unlock-the-monzo-app-with-your-fingerprint",
    "http://monzo.com/blog/2019/07/23/the-pink-bank-card-you-keep-seeing-what-it-is-and-how-to-get-one",
    "http://monzo.com/blog/2019/06/12/make-monzo-my-main-account",
    "http://monzo.com/blog/how-to-shop-online-safely-with-monzo",
    "http://monzo.com/blog/2019/06/14/monzo-manage-money-at-a-festival",
    "http://monzo.com/blog/authors/max-white/2"
  ],
  "http://monzo.com/legal/business-account-privacy-policy/": [
    "http://monzo.com/legal/business-account-privacy-notice/version-1-1/",
    "http://monzo.com/legal/business-account-decisions-using-open-banking/terms-and-conditions",
    "http://monzo.com/legal/business-account-privacy-notice/version-1-7/",
    "http://monzo.com/legal/business-account-fscs-information",
    "http://monzo.com/legal/business-account-privacy-notice/version-1-5/",
    "http://monzo.com/legal/business-account-fee-information",
    "http://monzo.com/legal/business-account-privacy-notice",
    "http://monzo.com/legal/business-account-privacy-notice/version-1-2/",
    "http://monzo.com/legal/business-referral-scheme/terms-and-conditions",
    "http://monzo.com/legal/business-account-terms-and-conditions",
    "http://monzo.com/legal/business-account-privacy-notice/version-1-3/",
    "http://monzo.com/legal/business-overdraft-information",
    "http://monzo.com/legal/business-account-privacy-notice/version-1-6/",
    "http://monzo.com/legal/business-account-other-accounts",
    "http://monzo.com/legal/business-account-privacy-notice/version-1-4/"
  ],
  "http://monzo.com/blog/authors/natalie-gil/4": [
    "http://monzo.com/blog/2023/10/03/how-to-start-talking-about-money-overspending",
    "http://monzo.com/blog/2023/01/18/olakunles-story",
    "http://monzo.com/blog/2023/03/07/how-to-create-a-sinking-fund",
    "http://monzo.com/blog/2023/02/02/catherines-story",
    "http://monzo.com/blog/2023/01/25/rickys-story",
    "http://monzo.com/blog/2023/02/21/automated-savings-1p-challenge",
    "http://monzo.com/blog/what-is-deinfluencing-tiktok-save-money",
    "http://monzo.com/blog/2023/01/31/lukes-story",
    "http://monzo.com/blog/2023/02/15/managing-money-while-single"
  ],
  "https://monzo.com/blog/authors/peggy-mcgregor": [
    "https://monzo.com/blog/2018/09/26/how-to-read-your-payslip",
    "https://monzo.com/blog/authors/peggy-mcgregor/2",
    "https://monzo.com/blog/2019/04/17/shoud-i-get-a-credit-card",
    "https://monzo.com/blog/2019/04/24/common-money-mistakes",
    "https://monzo.com/blog/2019/04/17/how-to-get-a-mortgage",
    "https://monzo.com/blog/2019/04/09/how-can-i-start-saving",
    "https://monzo.com/blog/2021/10/08/what-is-open-banking",
    "https://monzo.com/blog/2018/08/08/p60-p45-p11d-paye-forms",
    "https://monzo.com/blog/2019/04/24/good-vs-bad-debt-should-i-borrow-money",
    "https://monzo.com/blog/authors/peggy-mcgregor/3",
    "https://monzo.com/blog/authors/peggy-mcgregor/4"
  ],
  "https://monzo.com/legal/privacy-notice/": [
    "https://monzo.com/legal/privacy-notice/version-1-15/",
    "https://monzo.com/legal/privacy-notice/version-1-12/",
    "https://monzo.com/legal/privacy-notice/version-1-8/",
    "https://monzo.com/legal/privacy-notice/version-1-10/",
    "https://monzo.com/legal/privacy-notice/version-1-17/",
    "https://monzo.com/legal/privacy-notice/version-1-7/",
    "https://monzo.com/legal/privacy-notice/version-1-14/",
    "https://monzo.com/legal/privacy-notice/version-1-1/",
    "https://monzo.com/legal/privacy-notice/version-1-5/",
    "https://monzo.com/legal/privacy-notice/version-1-16/",
    "https://monzo.com/legal/privacy-notice/version-1-4/",
    "https://monzo.com/legal/fee-information",
    "https://monzo.com/legal/privacy-notice/version-1-3/",
    "https://monzo.com/legal/privacy-notice/version-1-11/",
    "https://monzo.com/legal/privacy-notice/version-1-6/",
    "https://monzo.com/legal/privacy-notice/version-1-9/",
    "https://monzo.com/legal/privacy-notice/version-1-2/",
    "https://monzo.com/legal/privacy-notice/version-1-13/"
  ],
  "https://monzo.com/legal/investments/fees": [
    "https://monzo.com/legal/investments/fees/version-1-0/",
    "https://monzo.com/legal/investments/fees/",
    "https://monzo.com/legal/investments/terms-and-conditions",
    "https://monzo.com/legal/files/investments/fees-1.0.pdf"
  ],
  "https://monzo.com/blog/2022/11/02/argo-rollouts-at-scale": [
    "https://monzo.com/blog/authors/will-sewell",
    "https://monzo.com/blog/authors/joseph-pallamidessi",
    "https://monzo.com/blog/2022/05/16/how-we-deploy-to-production-over-100-times-a-day"
  ],
  "https://monzo.com/blog/how-money-works/3": [
    "https://monzo.com/blog/10-things-they-didnt-teach-you-about-money-in-school",
    "https://monzo.com/blog/how-money-works/5"
  ],
  "http://monzo.com/help/budgeting-overdrafts-savings/create-pot-app/": [
    "http://monzo.com/help/budgeting-overdrafts-savings/"
  ],
  "http://monzo.com/blog/how-to-open-a-business-bank-account-with-just-your-phone": [
    "http://monzo.com/blog/authors/beatrice-borbon"
  ],
  "https://monzo.com/help/account-and-profile/bank-statement-how-to/": [
    "https://monzo.com/help/account-and-profile/tax-residency-eu/",
    "https://monzo.com/help/account-and-profile/account-number2/",
    "https://monzo.com/help/account-and-profile/what-tax-status/",
    "https://monzo.com/help/account-and-profile/tax-residency-us/",
    "https://monzo.com/help/account-and-profile/",
    "https://monzo.com/help/account-and-profile/branches/"
  ],
  "http://monzo.com/blog/authors/kate-hollowood": [
    "http://monzo.com/blog/2019/04/18/money-in-love-sian-matt",
    "http://monzo.com/blog/2019/05/22/daily-saving-with-monzo",
    "http://monzo.com/blog/authors/kate-hollowood/2",
    "http://monzo.com/blog/2019/07/18/money-in-love-fuminori-and-jake",
    "http://monzo.com/blog/2019/08/01/my-ex-racked-up-thousands-of-pounds-of-debt-in-my-name",
    "http://monzo.com/blog/2019/08/22/money-in-love-craig-and-nichola",
    "http://monzo.com/blog/2019/05/08/money-in-love-rosie-alex",
    "http://monzo.com/blog/2019/09/03/money-in-love-michael-and-dan",
    "http://monzo.com/blog/2019/07/09/money-in-love-russell-and-richard",
    "http://monzo.com/blog/authors/kate-hollowood/3",
    "http://monzo.com/blog/2019/04/25/money-in-love-rob-vic",
    "http://monzo.com/blog/how-monzos-gambling-block-helped-me-beat-my-gambling-addiction-and-pay-off-my-debt",
    "http://monzo.com/blog/2019/08/14/money-in-love-will-and-max",
    "http://monzo.com/blog/cost-of-a-baby/"
  ],
  "https://monzo.com/blog/2019/07/19/should-i-pay-in-local-currency-or-pounds-gbp-when-i-use-monzo-abroad": [
    "https://monzo.com/blog/2018/06/13/how-card-payments-work",
    "https://monzo.com/blog/authors/arthur-ceccotti"
  ],
  "https://monzo.com/help/cashback": [
    "https://monzo.com/help/cashback/cashback-offers/",
    "https://monzo.com/help/cashback/cashback-refunds-disputes/",
    "https://monzo.com/help/cashback/marketing-permissions/",
    "https://monzo.com/help/cashback/cashback-data/",
    "https://monzo.com/help/cashback/cashback-opt-out/",
    "https://monzo.com/help/cashback/cashback-feedback/",
    "https://monzo.com/help/cashback/what-is-cashback/",
    "https://monzo.com/help/cashback/cashback-terms-conditions/"
  ],
  "https://monzo.com": [
    "https://monzo.com/investor-information/",
    "https://monzo.com/",
    "https://monzo.com/business-banking",
    "https://monzo.com/i/helping-everyone-belong-at-monzo/",
    "https://monzo.com/loans",
    "https://monzo.com/fraud",
    "https://monzo.com/legal/terms-and-conditions/",
    "https://monzo.com/modern-slavery-statements/",
    "https://monzo.com/monzo-plus",
    "https://monzo.com/features/savings",
    "https://monzo.com/us/",
    "https://monzo.com/press/",
    "https://monzo.com/flex",
    "https://monzo.com/ecb-rates",
    "https://monzo.com/service-quality-results",
    "https://monzo.com/supporting-all-our-customers/",
    "https://monzo.com/legal/mobile-operating-system-support-policy/",
    "https://monzo.com/i/security/",
    "https://monzo.com/legal/privacy-notice/",
    "https://monzo.com/accessibility",
    "https://monzo.com/blog/",
    "https://monzo.com/investments",
    "https://monzo.com/business-banking/",
    "https://monzo.com/about/",
    "https://monzo.com/information-about-current-account-services/",
    "https://monzo.com/faq/",
    "https://monzo.com/legal/browser-support-policy/",
    "https://monzo.com/features/travel",
    "https://monzo.com/tone-of-voice/",
    "https://monzo.com/monzo-premium",
    "https://monzo.com",
    "https://monzo.com/legal/cookie-notice/",
    "https://monzo.com/service-information/",
    "https://monzo.com/our-social-programme",
    "https://monzo.com/legal/fscs-information/",
    "https://monzo.com/fraud/",
    "https://monzo.com/money-worries",
    "https://monzo.com/careers"
  ],
  "http://monzo.com/blog/how-money-works/5": [
    "http://monzo.com/blog/how-money-works/7",
    "http://monzo.com/blog/2019/01/28/cashback"
  ],
  "https://monzo.com/blog/technology/6": [
    "https://monzo.com/blog/2019/05/28/fixing-notifications-on-android",
    "https://monzo.com/blog/we-secured-thousands-of-cassandra-clients-to-keep-monzos-data-safe",
    "https://monzo.com/blog/coordinators-on-android-building-flows-quickly-with-reusable-screens",
    "https://monzo.com/blog/2019/07/03/the-role-of-technology-in-social-inclusion",
    "https://monzo.com/blog/how-weve-evolved-on-call-at-monzo",
    "https://monzo.com/blog/bringing-our-faster-payments-connection-in-house",
    "https://monzo.com/blog/migrating-vaults-storage-with-no-downtime"
  ],
  "https://monzo.com/blog/2022/05/24/send-money-abroad-with-monzo-business": [
    "https://monzo.com/i/business/",
    "https://monzo.com/blog/authors/matt-jones",
    "https://monzo.com/help/business-accounts/wise-send-business-banking"
  ],
  "http://monzo.com/help/investments": [
    "http://monzo.com/help/investments/choosing-investment-type/",
    "http://monzo.com/help/investments/investment-deposit-and-withdrawal-timeframes/",
    "http://monzo.com/help/investments/investments-sustainability/",
    "http://monzo.com/help/investments/where-to-get-investing-advice/",
    "http://monzo.com/help/investments/investments-or-savings/",
    "http://monzo.com/help/investments/transfer-gia/",
    "http://monzo.com/help/investments/what-is-gia/",
    "http://monzo.com/help/investments/investments-minimum/",
    "http://monzo.com/help/investments/investment-pot-fund-details/",
    "http://monzo.com/help/investments/pot-types/",
    "http://monzo.com/help/investments/What-is-stocks-and-shares-isa/",
    "http://monzo.com/help/investments/investments-contract-note/",
    "http://monzo.com/help/investments/investment-app-update/",
    "http://monzo.com/help/investments/investment-pots-joint-account/",
    "http://monzo.com/help/investments/open-close-investments/",
    "http://monzo.com/help/investments/investments-FSCS/",
    "http://monzo.com/help/investments/partnerships-with-blackrock-and-fnz/",
    "http://monzo.com/help/investments/investments-fees/",
    "http://monzo.com/help/investments/investments-gia-and-isa/"
  ],
  "https://monzo.com/blog/2019/08/20/monzo-now-lets-you-get-paid-a-day-early-for-free": [
    "https://monzo.com/-deeplinks/add_salary_email/",
    "https://monzo.com/blog/2019/06/28/pay-yourself-first-how-to-save-money/",
    "https://monzo.com/blog/authors/jarno-wolf"
  ],
  "https://monzo.com/help/budgeting-overdrafts-savings": [
    "https://monzo.com/help/budgeting-overdrafts-savings/when-is-interest-paid/",
    "https://monzo.com/help/budgeting-overdrafts-savings/withdraw-savings-pot/",
    "https://monzo.com/help/budgeting-overdrafts-savings/what-is-summary/",
    "https://monzo.com/help/budgeting-overdrafts-savings/instant-access-savings-pots-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/web-bill-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/how-to-set-custom-dates-summary/",
    "https://monzo.com/help/budgeting-overdrafts-savings/what-trends-tab-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/paying-tax-on-an-isa/",
    "https://monzo.com/help/budgeting-overdrafts-savings/targets-in-trends-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/types-of-ISA-at-monzo/",
    "https://monzo.com/help/budgeting-overdrafts-savings/getting-isa-on-joint-account/",
    "https://monzo.com/help/budgeting-overdrafts-savings/unlock-pot/",
    "https://monzo.com/help/budgeting-overdrafts-savings/how-to-close-pot/",
    "https://monzo.com/help/budgeting-overdrafts-savings/interest-on-monzo-isas/",
    "https://monzo.com/help/budgeting-overdrafts-savings/web-salary-sorter/",
    "https://monzo.com/help/budgeting-overdrafts-savings/how-does-interest-work/",
    "https://monzo.com/help/budgeting-overdrafts-savings/how-does-the-summary-dial-work/",
    "https://monzo.com/help/budgeting-overdrafts-savings/how-to-set-payday/",
    "https://monzo.com/help/budgeting-overdrafts-savings/pots-with-overdrafts/",
    "https://monzo.com/help/budgeting-overdrafts-savings/how-to-close-or-archive-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/round-up-app/",
    "https://monzo.com/help/budgeting-overdrafts-savings/isas-and-moving-abroad/",
    "https://monzo.com/help/budgeting-overdrafts-savings/hide-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/what-is-left-to-spend/",
    "https://monzo.com/help/budgeting-overdrafts-savings/pot-types/",
    "https://monzo.com/help/budgeting-overdrafts-savings/reorder-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/trends-excluded-categories-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/moving-money-to-from-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/do-monzo-hold-money/",
    "https://monzo.com/help/budgeting-overdrafts-savings/trends-tab-connected-accounts/",
    "https://monzo.com/help/budgeting-overdrafts-savings/what-are-locked-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/archived-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/trends-left-to-spend-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/trends-custom-categories-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/transferring-an-ISA-to-Monzo/",
    "https://monzo.com/help/budgeting-overdrafts-savings/summary-left-over/",
    "https://monzo.com/help/budgeting-overdrafts-savings/instant-access-pots-new/",
    "https://monzo.com/help/budgeting-overdrafts-savings/add-withdraw-hidden-pots/",
    "https://monzo.com/help/budgeting-overdrafts-savings/trends-months-years-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/is-protected/",
    "https://monzo.com/help/budgeting-overdrafts-savings/what-is-a-pot/",
    "https://monzo.com/help/budgeting-overdrafts-savings/trends-spending-and-balance-web/",
    "https://monzo.com/help/budgeting-overdrafts-savings/create-pot-app/",
    "https://monzo.com/help/budgeting-overdrafts-savings/transferring-an-ISA-away-from-Monzo/"
  ],
  "http://monzo.com/blog/authors/team-monzo/2": [
    "http://monzo.com/blog/2018/05/21/monzo-2.0-launch",
    "http://monzo.com/blog/2018/08/07/money-and-our-younger-selves",
    "http://monzo.com/blog/2018/12/05/crowdfunding-starts",
    "http://monzo.com/blog/2016/08/11/we-are-now-a-bank",
    "http://monzo.com/blog/2017/07/17/current-account-preview",
    "http://monzo.com/blog/2018/09/24/one-million-monzo-customers"
  ],
  "https://monzo.com/blog/2019/07/18/investment-opportunity-scams": [
    "https://monzo.com/blog/authors/lizzie-morgan"
  ],
  "http://monzo.com/help/business-accounts": [
    "http://monzo.com/help/business-accounts/virtual-card-on-pot-how-business-account/",
    "http://monzo.com/help/business-accounts/connected-accounts-business-privacy/",
    "http://monzo.com/help/business-accounts/transaction-missing-from-accounting-tools/",
    "http://monzo.com/help/business-accounts/payments-from-pots-business-account/",
    "http://monzo.com/help/business-accounts/business-web-features/",
    "http://monzo.com/help/business-accounts/business-getpaid-stripe-statement-descriptor-web/",
    "http://monzo.com/help/business-accounts/close-business-account-web/",
    "http://monzo.com/help/business-accounts/square/",
    "http://monzo.com/help/business-accounts/virtual-cards-how-business-banking/",
    "http://monzo.com/help/business-accounts/wise-cashback-business-banking/",
    "http://monzo.com/help/business-accounts/business-getpaid-paymentlinks-invoices/",
    "http://monzo.com/help/business-accounts/business-getpaid-NFC-web/",
    "http://monzo.com/help/business-accounts/stripe-pay-out-web/",
    "http://monzo.com/help/business-accounts/connect-to-quickbooks/",
    "http://monzo.com/help/business-accounts/virtual-cards-multiple-team-members-business-account/",
    "http://monzo.com/help/business-accounts/connected-accounts-business-what/",
    "http://monzo.com/help/business-accounts/business-getpaid-easybanktransfers/",
    "http://monzo.com/help/business-accounts/wise-timescale-business-banking/",
    "http://monzo.com/help/business-accounts/business-getpaid-stripe-signup-web/",
    "http://monzo.com/help/business-accounts/accounting-tool-not-synced/",
    "http://monzo.com/help/business-accounts/historic-transactions-in-accounting-tools/",
    "http://monzo.com/help/business-accounts/Monzo-address/",
    "http://monzo.com/help/business-accounts/business-getpaid-fees-web/",
    "http://monzo.com/help/business-accounts/virtual-card-on-pot-dispute/",
    "http://monzo.com/help/business-accounts/wise-receive-international-payments-business-banking/",
    "http://monzo.com/help/business-accounts/historical-transactions-accounting-tools/",
    "http://monzo.com/help/business-accounts/business-banking-update-registered-name-address-industry/",
    "http://monzo.com/help/business-accounts/cheque-how-to-pay-business-by-app/",
    "http://monzo.com/help/business-accounts/virtual-cards-limits-business-account/",
    "http://monzo.com/help/business-accounts/connected-accounts-business-remove/",
    "http://monzo.com/help/business-accounts/reusable-payment-links-web/",
    "http://monzo.com/help/business-accounts/business-getpaid-location-settings/",
    "http://monzo.com/help/business-accounts/change-business-account-tier-web/",
    "http://monzo.com/help/business-accounts/expensify/",
    "http://monzo.com/help/business-accounts/virtul-cards-apple-google-pay-business-account/",
    "http://monzo.com/help/business-accounts/add-and-manage-members/",
    "http://monzo.com/help/business-accounts/virtual-cards-what-business-banking/",
    "http://monzo.com/help/business-accounts/connect-to-freeagent/",
    "http://monzo.com/help/business-accounts/pots-in-accounting-tools/",
    "http://monzo.com/help/business-accounts/wise-cost-business-banking/",
    "http://monzo.com/help/business-accounts/balance-in-accounting-tools/",
    "http://monzo.com/help/business-accounts/business-account-access-rights/",
    "http://monzo.com/help/business-accounts/accounting-tools-duplicated-accounts/",
    "http://monzo.com/help/business-accounts/connect-to-xero/",
    "http://monzo.com/help/business-accounts/wise-payment-status-business-banking/",
    "http://monzo.com/help/business-accounts/wise-currency-business-banking-web/",
    "http://monzo.com/help/business-accounts/disconnecting-accounting-tool-quickbooks/",
    "http://monzo.com/help/business-accounts/auto-export-business-transactions-web/",
    "http://monzo.com/help/business-accounts/business-banking-limited-company-borrowing-web/",
    "http://monzo.com/help/business-accounts/manual-export-transactions-accounting-tools/",
    "http://monzo.com/help/business-accounts/business-getpaid-stripe-online-card-payments/",
    "http://monzo.com/help/business-accounts/stripe-accept-contactless-web/",
    "http://monzo.com/help/business-accounts/business-web-payments/",
    "http://monzo.com/help/business-accounts/business-web-security/",
    "http://monzo.com/help/business-accounts/what-is-a-tax-pot/",
    "http://monzo.com/help/business-accounts/cheque-how-to-pay-business/",
    "http://monzo.com/help/business-accounts/virtual-cards-not-working-business-banking/",
    "http://monzo.com/help/business-accounts/disconnecting-accounting-tool-freeagent-xero/",
    "http://monzo.com/help/business-accounts/business-bank-statement/",
    "http://monzo.com/help/business-accounts/wise-limits-business-banking/",
    "http://monzo.com/help/business-accounts/wise-send-business-banking-web/",
    "http://monzo.com/help/business-accounts/how-to-create-a-tax-pot/",
    "http://monzo.com/help/business-accounts/auto-export-business-documents-web/",
    "http://monzo.com/help/business-accounts/business-getpaid-paymentlinks-managing/",
    "http://monzo.com/help/business-accounts/business-verifying-persons-of-significant-control/"
  ],
  "http://monzo.com/blog/how-money-works/13": [
    "http://monzo.com/blog/2018/10/04/guarantors-how-and-why",
    "http://monzo.com/blog/2018/10/25/interest-explained",
    "http://monzo.com/blog/2018/09/21/protect-yourself-against-fraud-identity-theft",
    "http://monzo.com/blog/2018/09/13/student-loans-northern-ireland",
    "http://monzo.com/blog/2018/10/05/secured-unsecured-credit",
    "http://monzo.com/blog/2018/10/24/types-of-savings-account",
    "http://monzo.com/blog/2018/11/09/national-living-minimum-wage",
    "http://monzo.com/blog/2018/10/30/what-is-inflation",
    "http://monzo.com/blog/2018/08/30/manage-your-bills",
    "http://monzo.com/blog/2018/09/10/renting-student-accommodation",
    "http://monzo.com/blog/2018/10/12/what-is-a-good-credit-score",
    "http://monzo.com/blog/2018/11/07/pensions-explained",
    "http://monzo.com/blog/2018/10/11/how-to-check-your-credit-score-report"
  ],
  "http://monzo.com/blog/2017/03/10/transparent-by-default/": [
    "http://monzo.com/blog/authors/jonas-templestein",
    "http://monzo.com/blog/monzo-hq"
  ],
  "https://monzo.com/blog/2018/10/03/q4-goals-public/": [
    "https://monzo.com/blog/2018/07/18/our-company-finances/",
    "https://monzo.com/blog/2018/08/03/measuring-customer-happiness/",
    "https://monzo.com/blog/2018/08/23/seven-day-switch/",
    "https://monzo.com/blog/2018/10/01/october-update/",
    "https://monzo.com/blog/2018/08/15/split-the-bill/"
  ],
  "http://monzo.com/business-banking": [
    "http://monzo.com/blog/lets-talk-business",
    "http://monzo.com/business-banking/features/",
    "http://monzo.com/blog/2023/04/13/business-instant-access-savings-are-here",
    "http://monzo.com/blog/cost-of-living-how-were-supporting-you-and-your-business",
    "http://monzo.com/blog/2022/05/24/send-money-abroad-with-monzo-business",
    "http://monzo.com/blog/receive-international-payments",
    "http://monzo.com/business-banking/help/",
    "http://monzo.com/business-banking/eligibility/",
    "http://monzo.com/business-banking/testimonials/",
    "http://monzo.com/blog/how-to-open-a-business-bank-account-with-just-your-phone",
    "http://monzo.com/business-banking/sign-up-for-business/",
    "http://monzo.com/blog/2022/06/14/virtual-cards-for-monzo-business-pro"
  ],
  "https://monzo.com/blog/diversity-and-inclusion/": [
    "https://monzo.com/blog/diversity-and-inclusion/2",
    "https://monzo.com/blog/2019/05/16/global-accessibility-awareness",
    "https://monzo.com/blog/our-2020-diversity-and-inclusion-report",
    "https://monzo.com/blog/adhd-women-managing-money-dopamine-friendly",
    "https://monzo.com/blog/pride-season-2020",
    "https://monzo.com/blog/2022/02/23/mutual-mentoring-at-monzo",
    "https://monzo.com/blog/adhd-women-money-impulse-spending",
    "https://monzo.com/blog/an-update-on-the-women-in-finance-charter-2020",
    "https://monzo.com/blog/2019/03/21/diversity-and-inclusion",
    "https://monzo.com/blog/2022/06/30/were-launching-in-app-charity-donations"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-2-0/": [
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.0.pdf",
    "http://monzo.com/legal/audio/sep-2020-terms-conditions-audio.mp3"
  ],
  "http://monzo.com/help/us-general-info": [
    "http://monzo.com/help/us-general-info/us-calling-monzo-support/",
    "http://monzo.com/help/us-general-info/us-will-monzo-affect-my-credit-score/",
    "http://monzo.com/help/us-general-info/us-what-is-monzo/",
    "http://monzo.com/help/us-general-info/us-is-monzo-a-bank/",
    "http://monzo.com/help/us-general-info/us-reaching-support-if-you-dont-have-access-to-your-account/",
    "http://monzo.com/help/us-general-info/us-are-there-any-penalties-for-having-an-inactive-account/",
    "http://monzo.com/help/us-general-info/us-reporting-and-issue-raising-a-dispute/",
    "http://monzo.com/help/us-general-info/us-is-my-information-safe-with-monzo/",
    "http://monzo.com/help/us-general-info/us-contacting-customer-support/",
    "http://monzo.com/help/us-general-info/us-does-monzo-charge-any-fees/",
    "http://monzo.com/help/us-general-info/us-fraud-raising-a-dispute/",
    "http://monzo.com/help/us-general-info/us-is-my-money-safe-with-monzo/",
    "http://monzo.com/help/us-general-info/us-staying-up-to-date-with-new-monzo-features/",
    "http://monzo.com/help/us-general-info/us-opening-a-monzo-account/"
  ],
  "http://monzo.com/blog/authors/kate-hollowood/2": [
    "http://monzo.com/blog/2019/02/28/money-in-nick-amy",
    "http://monzo.com/blog/2019/01/30/save-money-and-the-planet",
    "http://monzo.com/blog/2019/03/22/money-in-love-katherine-christina",
    "http://monzo.com/blog/2019/03/14/money-in-love-lauren-dan",
    "http://monzo.com/blog/2019/04/11/money-in-love-claire-mike",
    "http://monzo.com/blog/2019/04/10/living-at-home",
    "http://monzo.com/blog/2019/01/21/get-fit-on-a-budget",
    "http://monzo.com/blog/2018/12/20/how-to-get-therapy",
    "http://monzo.com/blog/2019/04/04/money-in-love-nellie-nial",
    "http://monzo.com/blog/2019/01/30/cost-of-a-dog",
    "http://monzo.com/blog/2019/02/21/money-in-love-jen-dave",
    "http://monzo.com/blog/2019/02/14/money-in-love-frank-charlotte/",
    "http://monzo.com/blog/2019/03/29/money-in-love-ash-bobby"
  ],
  "https://monzo.com/blog/2019/05/22/daily-saving-with-monzo": [
    "https://monzo.com/blog/2018/07/18/round-up-monzo-purchases-automatically/"
  ],
  "http://monzo.com/help/payments-troubleshooting": [
    "http://monzo.com/help/payments-troubleshooting/frozen-card-payment/",
    "http://monzo.com/help/payments-troubleshooting/chargebacks-current-account/",
    "http://monzo.com/help/payments-troubleshooting/hsbc-bank-transfer/",
    "http://monzo.com/help/payments-troubleshooting/my-card-payment-declined/",
    "http://monzo.com/help/payments-troubleshooting/authorising-different-payments/",
    "http://monzo.com/help/payments-troubleshooting/nearby-friends-help/",
    "http://monzo.com/help/payments-troubleshooting/3ds-fail-online-payment/",
    "http://monzo.com/help/payments-troubleshooting/direct-debit-failed/",
    "http://monzo.com/help/payments-troubleshooting/transfer-not-arrived/",
    "http://monzo.com/help/payments-troubleshooting/why-are-my-contactless-card-payments-being-declined/",
    "http://monzo.com/help/payments-troubleshooting/card-payment-declined-still-been-charged/",
    "http://monzo.com/help/payments-troubleshooting/standing-order-failed/",
    "http://monzo.com/help/payments-troubleshooting/active-card-check-what/",
    "http://monzo.com/help/payments-troubleshooting/refund-how-long/",
    "http://monzo.com/help/payments-troubleshooting/pending-payment/",
    "http://monzo.com/help/payments-troubleshooting/balance-incorrect/",
    "http://monzo.com/help/payments-troubleshooting/unrecognised-payment-web/",
    "http://monzo.com/help/payments-troubleshooting/dispute-process-explainer/",
    "http://monzo.com/help/payments-troubleshooting/section-75-protection/",
    "http://monzo.com/help/payments-troubleshooting/offline-payments/",
    "http://monzo.com/help/payments-troubleshooting/monzo-card-blocked/"
  ],
  "https://monzo.com/blog/how-to-get-support-if-youre-a-refugee-or-asylum-seeker-during-coronavirus": [
    "https://monzo.com/documents/refugee-coronavirus-support/amharic.pdf",
    "https://monzo.com/documents/refugee-coronavirus-support/polish.pdf",
    "https://monzo.com/documents/refugee-coronavirus-support/romanian.pdf",
    "https://monzo.com/documents/refugee-coronavirus-support/vietnamese.pdf",
    "https://monzo.com/documents/refugee-coronavirus-support/tigrinya.pdf",
    "https://monzo.com/documents/refugee-coronavirus-support/arabic.pdf"
  ],
  "https://monzo.com/flex": [
    "https://monzo.com/sign-up/",
    "https://monzo.com/-deeplinks/flex_start_application/",
    "https://monzo.com/ecb-rates/",
    "https://monzo.com/help/monzo-flex/monzo-flex-and-section-75/"
  ],
  "https://monzo.com/legal/plus/savings-summary": [
    "https://monzo.com/legal/plus/savings-summary/version-1-0/",
    "https://monzo.com/legal/plus/savings-summary/version-1-1/",
    "https://monzo.com/legal/files/plus/monzo-plus-savings-summary-1.2.pdf",
    "https://monzo.com/legal/plus/savings-summary/version-1-2/"
  ],
  "https://monzo.com/blog/2020/03/18/monzo-us-blog-coronavirus-update": [
    "https://monzo.com/blog/authors/sarah-mathews"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-1-7/": [
    "https://monzo.com/legal/audio/may-2019-terms-conditions-audio.m4a",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-1.7.pdf"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-2/": [
    "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/",
    "http://monzo.com/legal/plus/credit-tracker-privacy-notice/",
    "http://monzo.com/legal/plus/other-accounts-in-monzo-privacy-notice/",
    "http://monzo.com/legal/premium/fee-information/",
    "http://monzo.com/legal/plus/credit-tracker-terms-and-conditions/",
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.2.pdf"
  ],
  "https://monzo.com/blog/authors/natalie-gil/4": [
    "https://monzo.com/blog/2023/03/07/how-to-create-a-sinking-fund",
    "https://monzo.com/blog/2023/01/25/rickys-story",
    "https://monzo.com/blog/2023/01/18/olakunles-story",
    "https://monzo.com/blog/2023/02/21/automated-savings-1p-challenge",
    "https://monzo.com/blog/2023/02/02/catherines-story",
    "https://monzo.com/blog/2023/01/31/lukes-story",
    "https://monzo.com/blog/2023/02/15/managing-money-while-single"
  ],
  "https://monzo.com/annual-report/2022/": [
    "https://monzo.com/refer-a-friend/",
    "https://monzo.com/static/docs/monzo-pillar-3-2022.pdf",
    "https://monzo.com/isa",
    "https://monzo.com/static/docs/monzo-annual-report-2022.pdf",
    "https://monzo.com/pots"
  ],
  "http://monzo.com/blog/cost-of-living-how-were-supporting-you-and-your-business": [
    "http://monzo.com/blog/2019/11/12/what-are-unsecured-loans/",
    "http://monzo.com/legal/terms-and-conditions/",
    "http://monzo.com/tone-of-voice/",
    "http://monzo.com/static/docs/modern-slavery-statement/modern-slavery-statement-2022.pdf",
    "http://monzo.com/legal/fscs-information/",
    "http://monzo.com/about/",
    "http://monzo.com/loans/",
    "http://monzo.com/legal/privacy-notice/",
    "http://monzo.com/fraud/",
    "http://monzo.com/faq/",
    "http://monzo.com/i/helping-everyone-belong-at-monzo/",
    "http://monzo.com/service-information/",
    "http://monzo.com/supporting-all-our-customers/",
    "http://monzo.com/pots/",
    "http://monzo.com/legal/mobile-operating-system-support-policy/",
    "http://monzo.com/legal/browser-support-policy/",
    "http://monzo.com/investor-information/",
    "http://monzo.com/blog/authors/monzo-business-team",
    "http://monzo.com/legal/cookie-notice/",
    "http://monzo.com/press/",
    "http://monzo.com/help/",
    "http://monzo.com/community/making-monzo/",
    "http://monzo.com/overdrafts/",
    "http://monzo.com/shared-tabs-more/",
    "http://monzo.com/blog/"
  ],
  "http://monzo.com/legal/terms-and-conditions/": [
    "http://monzo.com/legal/terms-and-conditions/version-1-9/",
    "http://monzo.com/legal/complaints-data",
    "http://monzo.com/legal/terms-and-conditions/version-1-3/",
    "http://monzo.com/legal/terms-and-conditions/version-2-3/",
    "http://monzo.com/legal/referral-scheme/terms-and-conditions",
    "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions",
    "http://monzo.com/legal/terms-and-conditions/version-1-2/",
    "http://monzo.com/legal/overdraft-information",
    "http://monzo.com/legal/mobile-operating-system-support-policy",
    "http://monzo.com/legal/terms-and-conditions/version-2-1/",
    "http://monzo.com/legal/loan-information",
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.4.pdf",
    "http://monzo.com/legal/cashback-on-your-loan",
    "http://monzo.com/legal/terms-and-conditions/version-2-0/",
    "http://monzo.com/legal/terms-and-conditions/version-1-6/",
    "http://monzo.com/legal/terms-and-conditions/version-1-4/",
    "http://monzo.com/legal/cookie-notice",
    "http://monzo.com/legal/decisions-using-open-banking/privacy-notice",
    "http://monzo.com/legal/browser-support-policy",
    "http://monzo.com/legal/terms-and-conditions/version-1-5/",
    "http://monzo.com/legal/terms-and-conditions/version-1-8/",
    "http://monzo.com/legal/terms-and-conditions/version-2-4/",
    "http://monzo.com/legal/terms-and-conditions/version-1-1/",
    "http://monzo.com/legal/terms-and-conditions/version-2-2/",
    "http://monzo.com/legal/fee-information",
    "http://monzo.com/legal/tax-strategy",
    "http://monzo.com/legal/terms-and-conditions/version-1-7/"
  ],
  "http://monzo.com/help/monzo-premium": [
    "http://monzo.com/help/monzo-premium/advanced-budgeting-multiple-categories/",
    "http://monzo.com/help/monzo-premium/advanced-budgeting-auto-exports/",
    "http://monzo.com/help/monzo-premium/what-is-premium/",
    "http://monzo.com/help/monzo-premium/advanced-budgeting-custom-categories/",
    "http://monzo.com/help/monzo-premium/virtual-card-on-pot-how/",
    "http://monzo.com/help/monzo-premium/virtual-card-on-pot-dispute/",
    "http://monzo.com/help/monzo-premium/paid-upgrade-premium/",
    "http://monzo.com/help/monzo-premium/connected-accounts-privacy/",
    "http://monzo.com/help/monzo-premium/paid-downgrade-premium/",
    "http://monzo.com/help/monzo-premium/remove-credit-tracker/",
    "http://monzo.com/help/monzo-premium/how-to-airport-lounge/",
    "http://monzo.com/help/monzo-premium/connected-account-not-working/",
    "http://monzo.com/help/monzo-premium/virtual-cards-how/",
    "http://monzo.com/help/monzo-premium/plus-connected-accounts/",
    "http://monzo.com/help/monzo-premium/afford-plus-premium/",
    "http://monzo.com/help/monzo-premium/web-credit-tracker-problem/",
    "http://monzo.com/help/monzo-premium/premium-cancel/",
    "http://monzo.com/help/monzo-premium/virtual-cards-limits/",
    "http://monzo.com/help/monzo-premium/premium-fees/",
    "http://monzo.com/help/monzo-premium/qover-travel-insurance-pre-existing/",
    "http://monzo.com/help/monzo-premium/web-bill-pots/",
    "http://monzo.com/help/monzo-premium/virtul-cards-apple-google-pay/",
    "http://monzo.com/help/monzo-premium/how-to-metal-card/",
    "http://monzo.com/help/monzo-premium/premium-phone-repair/",
    "http://monzo.com/help/monzo-premium/paid-interest/",
    "http://monzo.com/help/monzo-premium/premium-phone-what/",
    "http://monzo.com/help/monzo-premium/advanced-budgeting-roundups/",
    "http://monzo.com/help/monzo-premium/premium-phone-replace/",
    "http://monzo.com/help/monzo-premium/plus-credit-tracker/",
    "http://monzo.com/help/monzo-premium/virtual-cards-what/",
    "http://monzo.com/help/monzo-premium/connected-accounts-supported-banks/",
    "http://monzo.com/help/monzo-premium/premium-travel-covered-web/",
    "http://monzo.com/help/monzo-premium/virtual-cards-not-working/",
    "http://monzo.com/help/monzo-premium/connected-accounts-remove/",
    "http://monzo.com/help/monzo-premium/metal-card-cleaning/"
  ],
  "https://monzo.com/blog/2023/07/10/how-we-do-product-management-in-the-financial-difficulties-space": [
    "https://monzo.com/blog/2022/07/22/a-week-in-the-life-of-a-product-manager-at-monzo",
    "https://monzo.com/blog/2022/11/28/our-borrowing-principles",
    "https://monzo.com/blog/authors/james-richardson",
    "https://monzo.com/blog/authors/carla-arevalo"
  ],
  "http://monzo.com/legal/fee-information/version-1-1/": [
    "http://monzo.com/legal/files/fee-information/version-1-1/fee-information-1.1.pdf"
  ],
  "https://monzo.com/blog/authors/sheri-farsani/2": [
    "https://monzo.com/blog/2019/01/09/january-monthly-update",
    "https://monzo.com/blog/2019/02/13/february-monthly-update",
    "https://monzo.com/blog/2019/03/06/march-monthly-update",
    "https://monzo.com/blog/2019/04/05/april-monthly-update",
    "https://monzo.com/blog/2019/07/31/how-we-experiment-at-monzo",
    "https://monzo.com/blog/2019/23/07/monzo-quarterly-update-q3-2019"
  ],
  "http://monzo.com/help/monzo-with-friends": [
    "http://monzo.com/help/monzo-with-friends/newsignup-waiting-for-bonus-web/",
    "http://monzo.com/help/monzo-with-friends/how-to-pay-someone/",
    "http://monzo.com/help/monzo-with-friends/existinginvite-waiting-for-bonus/",
    "http://monzo.com/help/monzo-with-friends/monzo-me-how-to/",
    "http://monzo.com/help/monzo-with-friends/nearby-friends-help/",
    "http://monzo.com/help/monzo-with-friends/invite-unavailable/",
    "http://monzo.com/help/monzo-with-friends/split-costs-with-pals-web/",
    "http://monzo.com/help/monzo-with-friends/InboundpaymentsviaQR/",
    "http://monzo.com/help/monzo-with-friends/sending-money-monzo-to-monzo/",
    "http://monzo.com/help/monzo-with-friends/split-bill/",
    "http://monzo.com/help/monzo-with-friends/invite-to-monzo-web/",
    "http://monzo.com/help/monzo-with-friends/block-someone-on-monzo/",
    "http://monzo.com/help/monzo-with-friends/what-nearby-friends/"
  ],
  "http://monzo.com/blog/monzo-hq/5": [
    "http://monzo.com/blog/2018/04/27/backend-engineer-bonus",
    "http://monzo.com/blog/2017/12/08/monzo-mixtape-two",
    "http://monzo.com/blog/2018/07/02/the-monzo-mission",
    "http://monzo.com/blog/2018/05/22/big-news-about-small-print",
    "http://monzo.com/blog/2018/06/29/typeform-breach",
    "http://monzo.com/blog/2018/07/11/working-towards-company-goals",
    "http://monzo.com/blog/2017/12/01/cardiff",
    "http://monzo.com/blog/2018/02/19/third-birthday",
    "http://monzo.com/blog/2018/07/02/publishing-our-2018-annual-report"
  ],
  "https://monzo.com/blog/2018/06/28/joining-monzo-engineer-onboarding": [
    "https://monzo.com/blog/2018/06/27/engineering-management-at-monzo/"
  ],
  "https://monzo.com/blog/authors/roxy-alexander/2": [
    "https://monzo.com/blog/credit-scores/what-is-a-good-credit-score/",
    "https://monzo.com/blog/save-at-home",
    "https://monzo.com/blog/credit-scores/check-your-score",
    "https://monzo.com/blog/authors/roxy-alexander/4",
    "https://monzo.com/blog/credit-scores/credit-checks"
  ],
  "https://monzo.com/blog/": [
    "https://monzo.com/blog/monzo-business-how-to-automate-tax-savings-with-tax-pots",
    "https://monzo.com/overdrafts/",
    "https://monzo.com/blog/what-are-monzos-technical-expectations-for-engineering-leaders",
    "https://monzo.com/blog/an-update-on-our-gender-pay-gap-2023",
    "https://monzo.com/features/savings/",
    "https://monzo.com/monzo-plus/",
    "https://monzo.com/help/",
    "https://monzo.com/blog/how-we-built-a-queue-on-top-of-kafka",
    "https://monzo.com/pots/",
    "https://monzo.com/blog/77",
    "https://monzo.com/blog/monzo-business-how-to-set-up-auto-exports",
    "https://monzo.com/blog/monzo-business-how-to-add-information-to-transactions",
    "https://monzo.com/shared-tabs-more/",
    "https://monzo.com/blog/user-research-insight-to-impact-the-art-of-scaling-impact-and-crafting-goal",
    "https://monzo.com/blog/how-we-use-design-to-create-business-impact-at-monzo",
    "https://monzo.com/blog/starting-from-scratch-as-a-new-engineer-at-monzo",
    "https://monzo.com/community/making-monzo/",
    "https://monzo.com/blog/2019/11/12/what-are-unsecured-loans/",
    "https://monzo.com/static/docs/modern-slavery-statement/modern-slavery-statement-2022.pdf",
    "https://monzo.com/loans/",
    "https://monzo.com/blog/2",
    "https://monzo.com/current-account/",
    "https://monzo.com/features/16-plus/",
    "https://monzo.com/switch/",
    "https://monzo.com/savingwithmonzo/",
    "https://monzo.com/savings/instant-access",
    "https://monzo.com/blog/how-to-create-a-customer-segmentation-choosing-the-right-segmentation",
    "https://monzo.com/blog/moving-monzo-com",
    "https://monzo.com/blog/monzo-business-how-to-integrate-your-accounting-software",
    "https://monzo.com/current-account/joint-account/",
    "https://monzo.com/blog/3"
  ],
  "https://monzo.com/blog/2018/04/04/ending-prepaid": [
    "https://monzo.com/blog/2015/10/30/we-are-ready/",
    "https://monzo.com/blog/2017/04/05/banking-licence/",
    "https://monzo.com/blog/authors/tristan-thomas",
    "https://monzo.com/blog/2017/10/25/current-account-update/",
    "https://monzo.com/terms/"
  ],
  "https://monzo.com/blog/2020/07/06/easy-bank-transfers": [
    "https://monzo.com/blog/authors/michael-leung",
    "https://monzo.com/blog/authors/kieran-mchugh"
  ],
  "https://monzo.com/blog/product-updates/2": [
    "https://monzo.com/blog/2021/04/20/new-features-for-connected-accounts-and-virtual-cards",
    "https://monzo.com/blog/2020/10/20/how-we-value-monzo-premium",
    "https://monzo.com/blog/new-bill-split-reminder/",
    "https://monzo.com/blog/automated-billing-updater/",
    "https://monzo.com/blog/2021/03/30/get-ready-for-the-road-with-rac",
    "https://monzo.com/blog/2020/10/20/comparing-monzo-premium-and-monzo-plus",
    "https://monzo.com/blog/2020/10/15/flux-hm"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/3": [
    "https://monzo.com/blog/why-having-more-than-one-bank-account-might-be-useful",
    "https://monzo.com/blog/authors/beatrice-borbon/5",
    "https://monzo.com/blog/2019/10/28/more-people-are-switching-to-monzo-and-away-from-legacy-banks",
    "https://monzo.com/blog/2019/10/11/10-things-to-say-to-your-friend-who-still-refuses-to-get-monzo",
    "https://monzo.com/blog/monzo-is-the-uks-most-recommended-brand",
    "https://monzo.com/blog/2019/10/11/4-ways-monzo-makes-payday-even-better",
    "https://monzo.com/blog/2019/10/23/9-questions-to-ask-yourself-before-you-borrow-money",
    "https://monzo.com/blog/2019/10/24/15-features-thatll-turn-monzo-sceptics-into-monzo-obsessives",
    "https://monzo.com/blog/2019/10/24/9-monzo-features-and-why-you-need-them",
    "https://monzo.com/blog/authors/beatrice-borbon/4",
    "https://monzo.com/blog/10-times-you-hated-monzo"
  ],
  "https://monzo.com/help/monzo-plus": [
    "https://monzo.com/help/monzo-plus/advanced-budgeting-multiple-categories/",
    "https://monzo.com/help/monzo-plus/virtual-card-on-pot-dispute/",
    "https://monzo.com/help/monzo-plus/monzo-plus-ineligible/",
    "https://monzo.com/help/monzo-plus/web-credit-tracker-problem/",
    "https://monzo.com/help/monzo-plus/paid-upgrade-premium/",
    "https://monzo.com/help/monzo-plus/plus-connected-accounts/",
    "https://monzo.com/help/monzo-plus/plus-joint-account/",
    "https://monzo.com/help/monzo-plus/plus-signip/",
    "https://monzo.com/help/monzo-plus/connected-accounts-supported-banks/",
    "https://monzo.com/help/monzo-plus/virtual-cards-how/",
    "https://monzo.com/help/monzo-plus/virtual-cards-not-working/",
    "https://monzo.com/help/monzo-plus/plus-offers/",
    "https://monzo.com/help/monzo-plus/advanced-budgeting-custom-categories/",
    "https://monzo.com/help/monzo-plus/remove-credit-tracker/",
    "https://monzo.com/help/monzo-plus/virtual-cards-limits/",
    "https://monzo.com/help/monzo-plus/plus-cancel/",
    "https://monzo.com/help/monzo-plus/advanced-budgeting-auto-exports/",
    "https://monzo.com/help/monzo-plus/paid-downgrade-premium/",
    "https://monzo.com/help/monzo-plus/virtual-card-on-pot-how/",
    "https://monzo.com/help/monzo-plus/advanced-budgeting-roundups/",
    "https://monzo.com/help/monzo-plus/plus-fees/",
    "https://monzo.com/help/monzo-plus/afford-plus-premium/",
    "https://monzo.com/help/monzo-plus/web-bill-pots/",
    "https://monzo.com/help/monzo-plus/paid-interest/",
    "https://monzo.com/help/monzo-plus/monzo-plus-investor/",
    "https://monzo.com/help/monzo-plus/connected-accounts-privacy/",
    "https://monzo.com/help/monzo-plus/connected-account-not-working/",
    "https://monzo.com/help/monzo-plus/virtual-cards-what/",
    "https://monzo.com/help/monzo-plus/virtul-cards-apple-google-pay/",
    "https://monzo.com/help/monzo-plus/monzo-plus-billing-date/",
    "https://monzo.com/help/monzo-plus/monzo-plus-benefits/",
    "https://monzo.com/help/monzo-plus/plus-credit-tracker/",
    "https://monzo.com/help/monzo-plus/connected-accounts-remove/"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/2": [
    "https://monzo.com/blog/take-on-the-spare-change-saving-challenge",
    "https://monzo.com/blog/best-reactions-to-year-in-monzo",
    "https://monzo.com/blog/year-in-monzo-2019",
    "https://monzo.com/blog/year-in-monzo-tweets",
    "https://monzo.com/blog/52-week-savings-challenge",
    "https://monzo.com/blog/reverse-1p-savings-challenge-monzo",
    "https://monzo.com/blog/year-in-monzo-reactions",
    "https://monzo.com/blog/1p-savings-challenge-2020",
    "https://monzo.com/blog/2019/04/10/1p-savings-challenge-monzo",
    "https://monzo.com/blog/rainy-day-fund-save-money-automatically-every-time-it-rains"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-2-1/": [
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.1.pdf",
    "http://monzo.com/legal/audio/mar-2021-terms-conditions-audio.mp3"
  ],
  "http://monzo.com/help/legal-stuff": [
    "http://monzo.com/help/legal-stuff/branches/",
    "http://monzo.com/help/legal-stuff/tax-residency-us/",
    "http://monzo.com/help/legal-stuff/what-tax-status/",
    "http://monzo.com/help/legal-stuff/tax-residency-eu/",
    "http://monzo.com/help/legal-stuff/privacy-policy/",
    "http://monzo.com/help/legal-stuff/terms-conditions/",
    "http://monzo.com/help/legal-stuff/why-ask-for-tax-residency/",
    "http://monzo.com/help/legal-stuff/deposit-protection-fscs/",
    "http://monzo.com/help/legal-stuff/writing-to-legal-team/",
    "http://monzo.com/help/legal-stuff/selfie-during-signup/",
    "http://monzo.com/help/legal-stuff/closed-account-bank-statement/",
    "http://monzo.com/help/legal-stuff/legal-complaint-business-account-web/",
    "http://monzo.com/help/legal-stuff/information-facebook/",
    "http://monzo.com/help/legal-stuff/tax-residency-not-uk/",
    "http://monzo.com/help/legal-stuff/update-tax-residency/",
    "http://monzo.com/help/legal-stuff/information-sharing/",
    "http://monzo.com/help/legal-stuff/us-subsidiary-gdpr/",
    "http://monzo.com/help/legal-stuff/make-complaint-web/",
    "http://monzo.com/help/legal-stuff/data-subject-access-request/",
    "http://monzo.com/help/legal-stuff/whistleblowing/"
  ],
  "http://monzo.com/help/us-pots": [
    "http://monzo.com/help/us-pots/us-credit-card-pot-supported/",
    "http://monzo.com/help/us-pots/us-what-happens-if-i-lock-a-pot/",
    "http://monzo.com/help/us-pots/us-transferring-money-between-pots/",
    "http://monzo.com/help/us-pots/us-what-is-salary-sorter/",
    "http://monzo.com/help/us-pots/us-creating-and-editing-an-expense-pot/",
    "http://monzo.com/help/us-pots/us-where-can-i-find-my-credit-card-pots-account-number/",
    "http://monzo.com/help/us-pots/us-setting-a-goal-on-a-pot/",
    "http://monzo.com/help/us-pots/us-what-is-a-credit-card-pot/",
    "http://monzo.com/help/us-pots/us-how-do-credit-card-pots-handle-refunds/",
    "http://monzo.com/help/us-pots/us-do-pots-earn-interest/",
    "http://monzo.com/help/us-pots/us-what-is-a-expense-pot/",
    "http://monzo.com/help/us-pots/us-what-are-pots/",
    "http://monzo.com/help/us-pots/us-what-is-an-emergency-fund-pot/",
    "http://monzo.com/help/us-pots/us-what-are-round-up-payments/",
    "http://monzo.com/help/us-pots/us-where-can-i-find-my-expense-pots-account-number-or-card-number/"
  ],
  "https://monzo.com/blog/spenders-guide-to-saving-money": [
    "https://monzo.com/i/salary-sorter",
    "https://monzo.com/blog/envelope-method-budgeting",
    "https://monzo.com/blog/2018/12/13/locked-pots/"
  ],
  "https://monzo.com/blog/authors/stepchange": [
    "https://monzo.com/blog/helping-friends-with-money-worries",
    "https://monzo.com/blog/what-if-im-stressed-about-debt",
    "https://monzo.com/blog/relying-on-credit-to-get-by"
  ],
  "https://monzo.com/blog/2018/05/22/making-monzo-better": [
    "https://monzo.com/c/feedback/done/80",
    "https://monzo.com/c/feedback/35",
    "https://monzo.com/categories",
    "https://monzo.com/guidelines"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-2-2/": [
    "https://monzo.com/help/monzo-card-pin/monzo-card-lost-damaged-stolen",
    "https://monzo.com/legal/audio/dec-2021-terms-conditions-audio.mp3",
    "https://monzo.com/help/payments-troubleshooting/offline-payments",
    "https://monzo.com/help/account-and-profile/bank-statement-how-to",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.2.pdf",
    "https://monzo.com/blog/2019/08/22/strong-customer-authentication",
    "https://monzo.com/help/payments-getting-started/direct-debit-guarantee-what",
    "https://monzo.com/help/monzo-fraud-category/stay-safe-online",
    "https://monzo.com/help/travelling/going-abroad"
  ],
  "https://monzo.com/business-banking": [
    "https://monzo.com/blog/cost-of-living-how-were-supporting-you-and-your-business",
    "https://monzo.com/business-banking/sign-up-for-business/",
    "https://monzo.com/i/business/business-savings",
    "https://monzo.com/business/sole-trader-overdrafts/",
    "https://monzo.com/our-social-programme/",
    "https://monzo.com/money-worries/",
    "https://monzo.com/i/business/features/tax-pots/",
    "https://monzo.com/careers/",
    "https://monzo.com/business/sole-trader-loans/",
    "https://monzo.com/helping-everyone-belong-at-monzo/",
    "https://monzo.com/business-banking/help/",
    "https://monzo.com/business-banking/testimonials/",
    "https://monzo.com/legal/business-account-fscs-information/",
    "https://monzo.com/i/business/features/",
    "https://monzo.com/legal/business-account-privacy-notice/",
    "https://monzo.com/blog/2023/04/13/business-instant-access-savings-are-here",
    "https://monzo.com/service-quality-results/",
    "https://monzo.com/information-about-business-current-account-services/",
    "https://monzo.com/blog/2022/05/24/send-money-abroad-with-monzo-business",
    "https://monzo.com/blog/2022/06/14/virtual-cards-for-monzo-business-pro",
    "https://monzo.com/blog/receive-international-payments",
    "https://monzo.com/business-banking/features/",
    "https://monzo.com/i/business/eligibility/",
    "https://monzo.com/blog/how-to-open-a-business-bank-account-with-just-your-phone",
    "https://monzo.com/-deeplinks/business_account_signup/",
    "https://monzo.com/i/business/sign-up-for-business",
    "https://monzo.com/legal/business-account-terms-and-conditions/",
    "https://monzo.com/i/business/get-paid/",
    "https://monzo.com/blog/lets-talk-business",
    "https://monzo.com/business-banking/eligibility/",
    "https://monzo.com/i/business/sign-up-for-business/",
    "https://monzo.com/i/business/features/xero-offer/",
    "https://monzo.com/accessibility/"
  ],
  "https://monzo.com/help/app-help": [
    "https://monzo.com/help/app-help/add-card-to-apple-google-pay/",
    "https://monzo.com/help/app-help/finding-features-new-homescreen/",
    "https://monzo.com/help/app-help/apple-pay-payment-limit/",
    "https://monzo.com/help/app-help/contacting-support/",
    "https://monzo.com/help/app-help/duplicate-notifications-apple-pay/",
    "https://monzo.com/help/app-help/apple-pay-devices/",
    "https://monzo.com/help/app-help/log-in-multiple-devices/",
    "https://monzo.com/help/app-help/logging-out/",
    "https://monzo.com/help/app-help/google-pay-activation-issues/",
    "https://monzo.com/help/app-help/remove-monzo-card-from-apple-pay/",
    "https://monzo.com/help/app-help/google-pay-payment-limit/",
    "https://monzo.com/help/app-help/switch-on-dark-mode-web/",
    "https://monzo.com/help/app-help/changing-notifications/",
    "https://monzo.com/help/app-help/adding-card-to-google-pay/",
    "https://monzo.com/help/app-help/using-google-pay-card-frozen/",
    "https://monzo.com/help/app-help/making-monzo-default-card-google-pay/",
    "https://monzo.com/help/app-help/turn-on-biometrics-face-fingerprint-id-web/",
    "https://monzo.com/help/app-help/apple-pay-activation-issues/",
    "https://monzo.com/help/app-help/reporting-bugs/",
    "https://monzo.com/help/app-help/opening-encrypted-files/",
    "https://monzo.com/help/app-help/monzo-default-apple-pay-card/",
    "https://monzo.com/help/app-help/samsung-pay/"
  ],
  "https://monzo.com/legal/cookie-notice/": [
    "https://monzo.com/legal/cookie-notice/version-1-3/",
    "https://monzo.com/legal/cookie-notice/version-1-5/",
    "https://monzo.com/legal/loan-information",
    "https://monzo.com/legal/browser-support-policy",
    "https://monzo.com/legal/cookie-notice/version-1-9/",
    "https://monzo.com/legal/cookie-notice/version-1-10/",
    "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions",
    "https://monzo.com/legal/referral-scheme/terms-and-conditions",
    "https://monzo.com/legal/cookie-notice/version-1-4/",
    "https://monzo.com/legal/cookie-notice/version-1-6/",
    "https://monzo.com/legal/cookie-notice/version-1-7/",
    "https://monzo.com/legal/tax-strategy",
    "https://monzo.com/legal/cashback-on-your-loan",
    "https://monzo.com/legal/complaints-data",
    "https://monzo.com/legal/privacy-notice",
    "https://monzo.com/legal/cookie-notice",
    "https://monzo.com/legal/cookie-notice/version-1-11/",
    "https://monzo.com/legal/decisions-using-open-banking/privacy-notice",
    "https://monzo.com/legal/cookie-notice/version-1-8/",
    "https://monzo.com/legal/overdraft-information",
    "https://monzo.com/legal/mobile-operating-system-support-policy"
  ],
  "http://monzo.com/": [
    "http://monzo.com/careers",
    "http://monzo.com/monzo-plus",
    "http://monzo.com/features/savings",
    "http://monzo.com/our-social-programme",
    "http://monzo.com/money-worries",
    "http://monzo.com/business-banking",
    "http://monzo.com/fraud",
    "http://monzo.com/investments",
    "http://monzo.com/accessibility",
    "http://monzo.com/monzo-premium",
    "http://monzo.com/loans",
    "http://monzo.com/i/security/",
    "http://monzo.com/features/travel",
    "http://monzo.com/flex",
    "http://monzo.com/service-quality-results",
    "http://monzo.com/ecb-rates"
  ],
  "https://monzo.com/blog/how-money-works/7": [
    "https://monzo.com/blog/2019/07/10/no-spend-challenge",
    "https://monzo.com/blog/how-money-works/8",
    "https://monzo.com/blog/how-money-works/9"
  ],
  "https://monzo.com/help/us-signing-up": [
    "https://monzo.com/help/us-signing-up/us-why-is-monzo-asking-me-to-take-a-video-during-signup/",
    "https://monzo.com/help/us-signing-up/us-i-referred-a-friend-how-come-i-havent-gotten-my-reward/",
    "https://monzo.com/help/us-signing-up/us-how-do-i-know-if-im-able-to-refer-friends-to-monzo/",
    "https://monzo.com/help/us-signing-up/us-i-signed-up-with-a-referral-link-how-come-i-havent-gotten-my-reward/",
    "https://monzo.com/help/us-signing-up/us-opening-a-monzo-account/",
    "https://monzo.com/help/us-signing-up/us-how-can-i-check-if-i-used-a-referral-link-correctly/",
    "https://monzo.com/help/us-signing-up/us-card-delivery-times/",
    "https://monzo.com/help/us-signing-up/us-referral-general-info/"
  ],
  "http://monzo.com/business-banking/features/": [
    "http://monzo.com/business-banking/features/tax-pots/",
    "http://monzo.com/business-banking/features/multi-user-access/",
    "http://monzo.com/business-banking/features/mobile-and-web-access/",
    "http://monzo.com/business-banking/features/integrated-accounting/",
    "http://monzo.com/business-banking/features/24-7-customer-support/",
    "http://monzo.com/business-banking/get-paid/"
  ],
  "http://monzo.com/help/monzo-fraud-category": [
    "http://monzo.com/help/monzo-fraud-category/stay-safe-using-public-wifi/",
    "http://monzo.com/help/monzo-fraud-category/report-attempted-scam/",
    "http://monzo.com/help/monzo-fraud-category/stay-safe-online/",
    "http://monzo.com/help/monzo-fraud-category/report-scam/",
    "http://monzo.com/help/monzo-fraud-category/fraud-warnings/",
    "http://monzo.com/help/monzo-fraud-category/investment-scam/",
    "http://monzo.com/help/monzo-fraud-category/stay-safe-working-from-home/",
    "http://monzo.com/help/monzo-fraud-category/two-factor-authentication/",
    "http://monzo.com/help/monzo-fraud-category/purchase-scams/",
    "http://monzo.com/help/monzo-fraud-category/police-scam/",
    "http://monzo.com/help/monzo-fraud-category/safe-account-scam/",
    "http://monzo.com/help/monzo-fraud-category/friends-and-romance-fraud/",
    "http://monzo.com/help/monzo-fraud-category/product-service-scam/",
    "http://monzo.com/help/monzo-fraud-category/monzo-call-status-web/",
    "http://monzo.com/help/monzo-fraud-category/keep-your-account-safe/",
    "http://monzo.com/help/monzo-fraud-category/money-mules/",
    "http://monzo.com/help/monzo-fraud-category/advance-fee-fraud/",
    "http://monzo.com/help/monzo-fraud-category/hmrc-scam/"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/11": [
    "http://monzo.com/blog/authors/beatrice-borbon/10",
    "http://monzo.com/blog/authors/beatrice-borbon/9",
    "http://monzo.com/blog/2017/09/01/open-office-august"
  ],
  "https://monzo.com/blog/monzo-hq/4": [
    "https://monzo.com/blog/2018/09/06/moving-monzo",
    "https://monzo.com/blog/2018/10/03/q4-goals-public",
    "https://monzo.com/blog/2018/07/18/our-company-finances",
    "https://monzo.com/blog/2018/11/15/card-controls",
    "https://monzo.com/blog/2018/07/13/joints-accounts-in-labs",
    "https://monzo.com/blog/2018/11/08/monzo-transparency"
  ],
  "http://monzo.com/help/": [
    "http://monzo.com/help/emergencies",
    "http://monzo.com/help/switching-to-monzo",
    "http://monzo.com/help/payments-getting-started",
    "http://monzo.com/help/monzo-flex",
    "http://monzo.com/help/monzo-with-friends",
    "http://monzo.com/help/overdrafts-loans",
    "http://monzo.com/help/monzo-premium",
    "http://monzo.com/help/cashback",
    "http://monzo.com/help/opening-an-account",
    "http://monzo.com/help/app-help",
    "http://monzo.com/help/payments-troubleshooting",
    "http://monzo.com/help/account-and-profile",
    "http://monzo.com/help/budgeting-overdrafts-savings",
    "http://monzo.com/help/web-logging-in-to-the-app",
    "http://monzo.com/help/your-needs",
    "http://monzo.com/help/travelling",
    "http://monzo.com/help/payments-paying-monzobusiness",
    "http://monzo.com/help/business-accounts-signup",
    "http://monzo.com/help/legal-stuff",
    "http://monzo.com/help/monzo-card-pin",
    "http://monzo.com/help/business-accounts",
    "http://monzo.com/help/joint-accounts",
    "http://monzo.com/help/service-quality-results",
    "http://monzo.com/help/business-getpaid",
    "http://monzo.com/help/monzo-fraud-category",
    "http://monzo.com/help/investments",
    "http://monzo.com/help/monzo-plus"
  ],
  "https://monzo.com/blog/design": [
    "https://monzo.com/blog/why-you-should-run-design-input-sessions",
    "https://monzo.com/blog/how-to-successfully-run-your-own-design-input-sessions",
    "https://monzo.com/blog/2022/06/22/how-to-increase-your-impact-as-a-product-designer",
    "https://monzo.com/blog/first-three-months-product-designer",
    "https://monzo.com/blog/2022/11/04/how-we-design-magic-moments-at-monzo",
    "https://monzo.com/blog/design/2",
    "https://monzo.com/blog/weve-had-a-little-makeover",
    "https://monzo.com/blog/2020/11/11/customer-support-design",
    "https://monzo.com/blog/2019/02/11/internal-product-design"
  ],
  "http://monzo.com/blog/how-we-use-design-to-create-business-impact-at-monzo": [
    "http://monzo.com/blog/authors/nate-langley"
  ],
  "https://monzo.com/blog/authors/tristan-thomas": [
    "https://monzo.com/blog/2017/10/30/monzo-to-monzo-payments",
    "https://monzo.com/blog/2017/08/23/preview-distance-signup",
    "https://monzo.com/blog/2018/10/31/big-news",
    "https://monzo.com/blog/2018/01/10/golden-tickets-are-back",
    "https://monzo.com/blog/authors/tristan-thomas/2",
    "https://monzo.com/blog/2019/05/30/faster-payments-issue",
    "https://monzo.com/blog/authors/tristan-thomas/3",
    "https://monzo.com/blog/2018/07/10/making-quarterly-goals-public",
    "https://monzo.com/blog/2017/11/23/2017-todo-list",
    "https://monzo.com/blog/2018/05/30/getting-bank-account-refugee",
    "https://monzo.com/blog/2018/01/18/future-of-prepaid",
    "https://monzo.com/blog/2018/12/11/christmas-gift"
  ],
  "https://monzo.com/help/web-logging-in-to-the-app": [
    "https://monzo.com/help/web-logging-in-to-the-app/web-login-icloud-issue/",
    "https://monzo.com/help/web-logging-in-to-the-app/web-login-email-not-working/",
    "https://monzo.com/help/web-logging-in-to-the-app/web-login-email-not-received/",
    "https://monzo.com/help/web-logging-in-to-the-app/web-remember-email-login-monzo/",
    "https://monzo.com/help/web-logging-in-to-the-app/web-loggin-error-message/",
    "https://monzo.com/help/web-logging-in-to-the-app/web-locked-out-app/"
  ],
  "http://monzo.com/usa": [
    "http://monzo.com/us/money/spend-confidently/",
    "http://monzo.com/us/joint-account/",
    "http://monzo.com/us/careers/",
    "http://monzo.com/us/",
    "http://monzo.com/us/money/save-more/",
    "http://monzo.com/us/money/see-it-all/",
    "http://monzo.com/help/us",
    "http://monzo.com/blog/monzo-us-blog/",
    "http://monzo.com/us/personal-account/"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions": [
    "https://monzo.com/legal/plus/credit-tracker-privacy-notice",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-3/",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-5/",
    "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-4/",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-9/",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-7/",
    "https://monzo.com/legal/terms-and-conditions",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap",
    "https://monzo.com/legal/files/premium/monzo-premium-axa-terms-and-conditions-v2.pdf",
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.9.pdf",
    "https://monzo.com/legal/plus/credit-tracker-terms-and-conditions",
    "https://monzo.com/legal/plus/other-accounts-in-monzo-privacy-notice",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-6/",
    "https://monzo.com/legal/premium/savings-summary",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-8/",
    "https://monzo.com/legal/premium/fee-information",
    "https://monzo.com/legal/plus/fee-information",
    "https://monzo.com/legal/premium/terms-and-conditions/version-1-2/"
  ],
  "https://monzo.com/blog/2019/08/28/how-to-open-a-monzo-account": [
    "https://monzo.com/blog/2019/08/28/take-a-video-selfie-to-sign-up-for-monzo"
  ],
  "http://monzo.com/blog/monzo-hq/4": [
    "http://monzo.com/blog/2018/11/08/monzo-transparency",
    "http://monzo.com/blog/2018/07/25/monzo-reliability-report",
    "http://monzo.com/blog/2018/09/06/moving-monzo",
    "http://monzo.com/blog/2018/11/30/setting-record-straight",
    "http://monzo.com/blog/2018/11/15/card-controls",
    "http://monzo.com/blog/2018/10/03/q4-goals-public",
    "http://monzo.com/blog/2018/07/18/our-company-finances",
    "http://monzo.com/blog/2018/07/13/joints-accounts-in-labs"
  ],
  "https://monzo.com/blog/2019/02/07/authorised-push-payment-fraud": [
    "https://monzo.com/blog/authors/daniel-chatfield",
    "https://monzo.com/blog/2018/09/21/protect-yourself-against-fraud-identity-theft/"
  ],
  "https://monzo.com/blog/2018/02/28/march-update": [
    "https://monzo.com/blog/quarterly-updates",
    "https://monzo.com/blog/2018/01/19/beautiful-direct-debits/",
    "https://monzo.com/blog/2018/02/12/monzo-me/",
    "https://monzo.com/blog/2018/02/15/android-crowdsourcing-merchant-data/",
    "https://monzo.com/blog/2018/02/14/android-pulse/"
  ],
  "https://monzo.com/blog/2023/01/26/preparing-for-spikes-in-traffic-as-millions-get-paid-early": [
    "https://monzo.com/blog/authors/joe-rowe"
  ],
  "http://monzo.com/help/business-getpaid": [
    "http://monzo.com/help/business-getpaid/business-getpaid-location-settings/",
    "http://monzo.com/help/business-getpaid/business-getpaid-stripe-online-card-payments/",
    "http://monzo.com/help/business-getpaid/business-getpaid-stripe-signup-web/",
    "http://monzo.com/help/business-getpaid/reusable-payment-links-web/",
    "http://monzo.com/help/business-getpaid/business-getpaid-fees-web/",
    "http://monzo.com/help/business-getpaid/stripe-accept-contactless-web/",
    "http://monzo.com/help/business-getpaid/business-getpaid-paymentlinks-managing/",
    "http://monzo.com/help/business-getpaid/business-getpaid-easybanktransfers/",
    "http://monzo.com/help/business-getpaid/business-getpaid-paymentlinks-invoices/",
    "http://monzo.com/help/business-getpaid/stripe-pay-out-web/",
    "http://monzo.com/help/business-getpaid/business-getpaid-NFC-web/",
    "http://monzo.com/help/business-getpaid/business-getpaid-stripe-statement-descriptor-web/"
  ],
  "http://monzo.com/blog/2020/12/17/how-to-cope-with-being-made-redundant": [
    "http://monzo.com/blog/authors/stepchange",
    "http://monzo.com/blog/authors/william-masters"
  ],
  "http://monzo.com/blog/5-practical-tips-for-feeling-less-lonely-in-lockdown": [
    "http://monzo.com/blog/authors/will-allen-mersh"
  ],
  "http://monzo.com/blog/authors/sheri-farsani": [
    "http://monzo.com/blog/2020/05/19/monzo-business-for-web-upgrade",
    "http://monzo.com/blog/2020/06/01/new-business-categories",
    "http://monzo.com/blog/support-for-self-employed-coronavirus",
    "http://monzo.com/blog/dax-liniere-puzzle-factory-small-businesses-coronavirus",
    "http://monzo.com/blog/2020-01-01/switch-to-monzo-without-closing-your-old-account",
    "http://monzo.com/blog/small-businesses-coronavirus",
    "http://monzo.com/blog/authors/sheri-farsani/2"
  ],
  "https://monzo.com/blog/pots": [
    "https://monzo.com/blog/2019/10/15/savings-plan",
    "https://monzo.com/blog/2019/05/17/how-to-save-money",
    "https://monzo.com/blog/2019/05/07/how-to-save-money-with-monzo"
  ],
  "https://monzo.com/blog/2019/10/05/savings-account": [
    "https://monzo.com/blog/2019/09/23/lump-sum-savings-account",
    "https://monzo.com/blog/2018/11/14/isas-explained"
  ],
  "https://monzo.com/blog/2": [
    "https://monzo.com/blog/how-we-built-the-new-home-screen",
    "https://monzo.com/blog/2019/07/19/should-i-pay-in-local-currency-or-pounds-gbp-when-i-use-monzo-abroad",
    "https://monzo.com/blog/2023/12/14/securing-admin-access-to-monzos-platform/",
    "https://monzo.com/blog/how-we-wrote-5-million-years-in-monzo",
    "https://monzo.com/blog/current-account-guides/how-much-can-you-withdraw-from-an-atm/",
    "https://monzo.com/blog/building-year-in-monzo-as-told-by-engineering",
    "https://monzo.com/blog/how-we-built-year-in-monzo-unlocking-the-data-magic",
    "https://monzo.com/blog/how-we-unified-our-customers-activity-on-the-new-home-screen",
    "https://monzo.com/blog/2023/11/24/a-day-in-the-life-of-a-technical-programme-manager-at-monzo",
    "https://monzo.com/blog/the-new-and-improved-home-screen"
  ],
  "https://monzo.com/help/payments-troubleshooting": [
    "https://monzo.com/help/payments-troubleshooting/pending-payment/",
    "https://monzo.com/help/payments-troubleshooting/3ds-fail-online-payment/",
    "https://monzo.com/help/payments-troubleshooting/chargebacks-current-account/",
    "https://monzo.com/help/payments-troubleshooting/frozen-card-payment/",
    "https://monzo.com/help/payments-troubleshooting/hsbc-bank-transfer/",
    "https://monzo.com/help/payments-troubleshooting/dispute-process-explainer/",
    "https://monzo.com/help/payments-troubleshooting/refund-how-long/",
    "https://monzo.com/help/payments-troubleshooting/standing-order-failed/",
    "https://monzo.com/help/payments-troubleshooting/transfer-not-arrived/",
    "https://monzo.com/help/payments-troubleshooting/section-75-protection/",
    "https://monzo.com/help/payments-troubleshooting/active-card-check-what/",
    "https://monzo.com/help/payments-troubleshooting/nearby-friends-help/",
    "https://monzo.com/help/payments-troubleshooting/balance-incorrect/",
    "https://monzo.com/help/payments-troubleshooting/authorising-different-payments/",
    "https://monzo.com/help/payments-troubleshooting/direct-debit-failed/"
  ],
  "https://monzo.com/blog/behind-the-scenes-of-a-phishing-scam/": [
    "https://monzo.com/blog/authors/bradley-kemp",
    "https://monzo.com/blog/2019/02/07/authorised-push-payment-fraud"
  ],
  "http://monzo.com/blog/team/2": [
    "http://monzo.com/blog/2017/02/08/meet-irina",
    "http://monzo.com/blog/2017/05/17/meet-tapas",
    "http://monzo.com/blog/2017/02/01/natasha-profile",
    "http://monzo.com/blog/2016/03/10/meet-jonas",
    "http://monzo.com/blog/2017/04/06/meet-dan",
    "http://monzo.com/blog/2017/03/09/emma-profile",
    "http://monzo.com/blog/2017/02/22/josh-profile",
    "http://monzo.com/blog/2017/03/22/meet-venkat"
  ],
  "http://monzo.com/blog/product-updates/3": [
    "http://monzo.com/blog/product-updates/5",
    "http://monzo.com/blog/2020/07/06/easy-bank-transfers",
    "http://monzo.com/blog/2019/09/26/introducing-salary-sorter-and-bills-pots",
    "http://monzo.com/blog/2019/07/24/market-leading-interest-rate-on-monzo-savings-pots",
    "http://monzo.com/blog/2019/12/09/our-overdrafts-are-changing",
    "http://monzo.com/blog/you-can-now-hide-your-pots-and-change-the-order-theyre-in",
    "http://monzo.com/blog/introducing-monzo-plus",
    "http://monzo.com/blog/2019/10/24/whats-next-for-the-new-look-monzo-app",
    "http://monzo.com/blog/2019/09/06/10-minimum-savings-pot",
    "http://monzo.com/blog/2019/09/20/the-monzo-app-is-changing",
    "http://monzo.com/blog/introducing-monzo-premium",
    "http://monzo.com/blog/2019/08/09/how-were-doing-savings-accounts-differently",
    "http://monzo.com/blog/2019/08/22/get-your-student-loan-a-day-before-your-friends-do",
    "http://monzo.com/blog/2019/08/20/monzo-now-lets-you-get-paid-a-day-early-for-free"
  ],
  "https://monzo.com/blog/data/2": [
    "https://monzo.com/blog/2021/02/09/borrowing-data-at-monzo",
    "https://monzo.com/blog/2019/06/27/trending-spending-london",
    "https://monzo.com/blog/2021/08/10/spinning-up-an-analytics-engineering-team",
    "https://monzo.com/blog/2017/08/22/the-help-search-algorithm",
    "https://monzo.com/blog/2019/11/04/how-we-scaled-our-data-team-from-1-to-30-people-part-1"
  ],
  "https://monzo.com/blog/monzo-us-blog/auto-salary-sorter": [
    "https://monzo.com/blog/monzo-us-blog/salary-sorter"
  ],
  "https://monzo.com/legal/business-account-fscs-information/": [
    "https://monzo.com/legal/business-account-other-accounts",
    "https://monzo.com/legal/business-overdraft-information",
    "https://monzo.com/legal/business-referral-scheme/terms-and-conditions",
    "https://monzo.com/legal/business-account-decisions-using-open-banking/terms-and-conditions",
    "https://monzo.com/legal/business-account-fscs-information/version-1-3/",
    "https://monzo.com/legal/business-account-fscs-information",
    "https://monzo.com/legal/business-account-fee-information",
    "https://monzo.com/legal/business-account-fscs-information/version-1-2/",
    "https://monzo.com/legal/business-account-privacy-notice"
  ],
  "https://monzo.com/blog/how-to-save-money": [
    "https://monzo.com/blog/how-to-save-money/2",
    "https://monzo.com/blog/2019/10/31/how-to-save-money-as-a-teenager"
  ],
  "https://monzo.com/blog/technology/8": [
    "https://monzo.com/blog/2017/02/13/5-features-your-mobile-bank-account-should-have-by-now",
    "https://monzo.com/blog/technology/7",
    "https://monzo.com/blog/2017/02/17/four-useful-services-your-bank-should-not-be-charging-for",
    "https://monzo.com/blog/technology/6",
    "https://monzo.com/blog/2016/11/30/laying-the-foundation-for-a-data-team",
    "https://monzo.com/blog/2017/05/03/practical-machine-learning-for-startups",
    "https://monzo.com/blog/2017/05/05/why-payments-are-declined"
  ],
  "http://monzo.com/blog/monzo-us-blog/2": [
    "http://monzo.com/blog/2021/11/11/monzo-us-blog-meet-nathan-our-head-of-engineering",
    "http://monzo.com/blog/monzo-us-blog/new-year-new-budget",
    "http://monzo.com/blog/monzo-us-blog/manage-multiple-bank-accounts",
    "http://monzo.com/blog/monzo-us-blog/supporting-mental-health-and-wellbeing",
    "http://monzo.com/blog/monzo-us-blog/salary-sorter",
    "http://monzo.com/blog/monzo-us-blog/scheduled-payments",
    "http://monzo.com/blog/monzo-us-blog/interviewing-at-monzo",
    "http://monzo.com/blog/2022/02/01/monzo-us-blog-monzo-moves-from-beta-to-public-launch-in-the-us",
    "http://monzo.com/blog/monzo-us-blog/first-six-months-android-engineer-backend-engineer",
    "http://monzo.com/blog/monzo-us-blog/working-to-build-more-empathetic-workplace",
    "http://monzo.com/blog/2022/04/05/monzo-us-blog-2022-survey-insights",
    "http://monzo.com/blog/2021/11/15/monzo-us-blog-october-virtual-community-event-recap"
  ],
  "https://monzo.com/blog/technology/5": [
    "https://monzo.com/blog/lessons-from-implementing-progression-frameworks-at-scale",
    "https://monzo.com/blog/engineering-management-at-monzo-technical-leadership-people-support",
    "https://monzo.com/blog/2021/09/15/how-we-measure-software-excellence",
    "https://monzo.com/blog/2022/02/17/my-first-6-months-at-monzo-as-a-backend-engineer",
    "https://monzo.com/blog/2022/02/08/processing-payments-safely-at-scale"
  ],
  "http://monzo.com/blog/monzo-hq/7": [
    "http://monzo.com/blog/2017/05/16/200k-250m",
    "http://monzo.com/blog/2016/08/05/spending-on-mondo-update",
    "http://monzo.com/blog/2017/04/05/banking-licence",
    "http://monzo.com/blog/2016/06/13/new-mondo-changing-our-name",
    "http://monzo.com/blog/2017/05/15/intro-to-cops",
    "http://monzo.com/blog/2017/05/19/future-of-cops",
    "http://monzo.com/blog/2016/06/23/update-on-our-name-change",
    "http://monzo.com/blog/2017/05/18/night-cops",
    "http://monzo.com/blog/2017/03/14/12000000",
    "http://monzo.com/blog/2017/01/31/fincrime-and-security-week-introduction"
  ],
  "https://monzo.com/blog/2019/04/04/launching-isas/": [
    "https://monzo.com/blog/authors/moshe-raphaely",
    "https://monzo.com/blog/2019/02/05/savings-pots-paused/"
  ],
  "https://monzo.com/blog/2018/08/03/measuring-customer-happiness": [
    "https://monzo.com/blog/authors/liam-houghton"
  ],
  "https://monzo.com/legal/premium/savings-summary/version-1-1/": [
    "https://monzo.com/legal/files/premium/monzo-premium-savings-summary-1.1.pdf"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/10": [
    "https://monzo.com/blog/2017/11/16/monzo-marketplace",
    "https://monzo.com/blog/2018/02/28/march-update",
    "https://monzo.com/blog/2018/04/05/april-update",
    "https://monzo.com/blog/2017/12/18/why-upgrade",
    "https://monzo.com/blog/2017/12/18/using-monzo-over-christmas",
    "https://monzo.com/blog/2018/02/07/upgrade-overdrafts",
    "https://monzo.com/blog/2018/01/26/upgrade-credit-score"
  ],
  "http://monzo.com/help/us-saving-with-monzo": [
    "http://monzo.com/help/us-saving-with-monzo/us-what-is-an-emergency-fund-pot/",
    "http://monzo.com/help/us-saving-with-monzo/us-do-pots-earn-interest/",
    "http://monzo.com/help/us-saving-with-monzo/us-what-are-round-up-payments/",
    "http://monzo.com/help/us-saving-with-monzo/us-what-happens-if-i-lock-a-pot/",
    "http://monzo.com/help/us-saving-with-monzo/us-what-are-pots/"
  ],
  "https://monzo.com/blog/technology/2": [
    "https://monzo.com/blog/2023/02/22/becoming-direct-participants-of-bacs",
    "https://monzo.com/blog/2023/06/01/finding-your-fit-in-a-new-product-team/",
    "https://monzo.com/blog/2023/05/18/sensitivity-analysis",
    "https://monzo.com/blog/2023/05/04/how-we-manage-technology-risk-at-monzo",
    "https://monzo.com/blog/technology/4",
    "https://monzo.com/blog/2023/03/28/what-we-learned-from-43-experiments-in-12-months",
    "https://monzo.com/blog/2023/04/28/speeding-up-our-balance-read-time-the-planning-phase",
    "https://monzo.com/blog/2022/03/02/designing-a-regional-experiment-to-measure-incrementality"
  ],
  "https://monzo.com/legal/plus/savings-summary/version-1-0/": [
    "https://monzo.com/legal/files/plus/monzo-plus-savings-summary.pdf"
  ],
  "https://monzo.com/legal/business-account-fee-information": [
    "https://monzo.com/legal/business-account-fee-information/version-1-5/",
    "https://monzo.com/legal/business-account-fee-information/version-1-6/",
    "https://monzo.com/legal/business-account-fee-information/version-1-4/",
    "https://monzo.com/legal/business-account-fee-information/version-1-1/",
    "https://monzo.com/legal/business-account-fee-information/version-1-7/",
    "https://monzo.com/legal/business-account-fee-information/version-1-2/",
    "https://monzo.com/legal/business-account-fee-information/version-1-3/",
    "https://monzo.com/legal/files/business-account-fee-information/fee-information-1-7.pdf"
  ],
  "https://monzo.com/blog/2018/11/05/monzo-community": [
    "https://monzo.com/community/",
    "https://monzo.com/blog/2018/10/03/q4-goals-public/",
    "https://monzo.com/blog/2018/05/16/coral-crew/",
    "https://monzo.com/blog/2017/06/08/host-a-monzo-meetup/",
    "https://monzo.com/blog/2018/08/22/launching-3d-secure/",
    "https://monzo.com/blog/2018/08/14/launching-joint-accounts/",
    "https://monzo.com/blog/2018/05/22/making-monzo-better/",
    "https://monzo.com/blog/2018/04/27/introducing-monzo-labs/"
  ],
  "https://monzo.com/help/investments": [
    "https://monzo.com/help/investments/investments-gia-and-isa/",
    "https://monzo.com/help/investments/partnerships-with-blackrock-and-fnz/",
    "https://monzo.com/help/investments/open-close-investments/",
    "https://monzo.com/help/investments/investment-pot-fund-details/",
    "https://monzo.com/help/investments/where-to-get-investing-advice/",
    "https://monzo.com/help/investments/What-is-stocks-and-shares-isa/",
    "https://monzo.com/help/investments/investments-minimum/",
    "https://monzo.com/help/investments/investments-fees/",
    "https://monzo.com/help/investments/investments-or-savings/",
    "https://monzo.com/help/investments/investments-FSCS/",
    "https://monzo.com/help/investments/investments-contract-note/",
    "https://monzo.com/help/investments/investment-pots-joint-account/",
    "https://monzo.com/help/investments/investment-deposit-and-withdrawal-timeframes/",
    "https://monzo.com/help/investments/pot-types/",
    "https://monzo.com/help/investments/investment-app-update/",
    "https://monzo.com/help/investments/choosing-investment-type/",
    "https://monzo.com/help/investments/investments-sustainability/",
    "https://monzo.com/help/investments/transfer-gia/",
    "https://monzo.com/help/investments/what-is-gia/"
  ],
  "http://monzo.com/help/us-monzo-with-friends": [
    "http://monzo.com/help/us-monzo-with-friends/us-i-signed-up-with-a-referral-link-how-can-i-add-money-to-my-account-to-earn-my-reward/",
    "http://monzo.com/help/us-monzo-with-friends/us-how-can-i-check-if-i-used-a-referral-link-correctly/",
    "http://monzo.com/help/us-monzo-with-friends/us-how-do-i-know-if-im-able-to-refer-friends-to-monzo/",
    "http://monzo.com/help/us-monzo-with-friends/us-can-someone-with-a-monzo-account-in-the-uk-invite-their-friends-and-family-in-the-us/",
    "http://monzo.com/help/us-monzo-with-friends/us-referrals-friends-cant-add-to-apple-pay/",
    "http://monzo.com/help/us-monzo-with-friends/us-i-live-in-the-us-can-i-invite-someone-outside-the-us-to-join-monzo/",
    "http://monzo.com/help/us-monzo-with-friends/us-is-there-a-limit-to-the-number-of-people-i-can-refer/",
    "http://monzo.com/help/us-monzo-with-friends/us-i-referred-a-friend-how-come-i-havent-gotten-my-reward/",
    "http://monzo.com/help/us-monzo-with-friends/us-i-sent-a-referral-before-you-started-your-current-promo-can-i-still-earn-the-reward/",
    "http://monzo.com/help/us-monzo-with-friends/us-new-account-add-to-apple-pay-general/",
    "http://monzo.com/help/us-monzo-with-friends/us-how-can-refer-friends-to-monzo/",
    "http://monzo.com/help/us-monzo-with-friends/us-i-signed-up-with-a-referral-link-what-types-of-purchases-count-towards-earning-my-reward/",
    "http://monzo.com/help/us-monzo-with-friends/us-i-signed-up-with-a-referral-link-how-come-i-havent-gotten-my-reward/",
    "http://monzo.com/help/us-monzo-with-friends/us-referral-general-info/",
    "http://monzo.com/help/us-monzo-with-friends/us-referrals-changes-in-the-terms/"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-1-8/": [
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-1.8.pdf",
    "http://monzo.com/legal/audio/nov-2019-terms-conditions-audio.mp3"
  ],
  "http://monzo.com/blog/3": [
    "http://monzo.com/blog/bereavments-how-we-can-help-if-someone-with-a-monzo-account-dies",
    "http://monzo.com/blog/2023/10/12/protecting-our-platform-from-spikes-in-usage-by-reducing-load-from-the-monzo",
    "http://monzo.com/blog/5",
    "http://monzo.com/blog/2023/09/12/the-skadnetwork-puzzle-using-data-to-solve-for-effective-performance/",
    "http://monzo.com/blog/2023/09/06/making-it-clear-when-were-on-a-call-with-you",
    "http://monzo.com/blog/2023/08/23/tech-leading-as-a-mobile-engineer-at-monzo"
  ],
  "https://monzo.com/blog/how-we-unified-our-customers-activity-on-the-new-home-screen": [
    "https://monzo.com/blog/authors/james-mcdonagh",
    "https://monzo.com/blog/2019/01/15/crowdfunding-technology-testing"
  ],
  "http://monzo.com/blog/product-updates/4": [
    "http://monzo.com/blog/2019/05/02/shawbrook-savings-pots",
    "http://monzo.com/blog/2019/04/11/custom-pot-images-android",
    "http://monzo.com/blog/2019/04/23/introducing-monzo-plus",
    "http://monzo.com/blog/product-updates/6",
    "http://monzo.com/blog/2019/05/15/monzo-plus-the-road-ahead",
    "http://monzo.com/blog/2019/07/10/the-evolution-of-monzo-chat",
    "http://monzo.com/blog/2019/07/18/remortgaging-test",
    "http://monzo.com/blog/2019/02/11/business-banking-alpha",
    "http://monzo.com/blog/2019/07/08/accounting-tools-monzo-business-account",
    "http://monzo.com/blog/2019/04/04/launching-isas",
    "http://monzo.com/blog/2019/04/26/savings-marketplace",
    "http://monzo.com/blog/2019/07/04/monzo-plus-july-update",
    "http://monzo.com/blog/2019/03/18/custom-pot-images"
  ],
  "https://monzo.com/blog/2018/10/01/october-update": [
    "https://monzo.com/blog/product-updates/",
    "https://monzo.com/blog/2018/09/18/ios-app-performance/"
  ],
  "https://monzo.com/loans": [
    "https://monzo.com/i/money-worries",
    "https://monzo.com/blog/loans-help/",
    "https://monzo.com/i/loans/home-improvement-loans/",
    "https://monzo.com/-deeplinks/loan-application",
    "https://monzo.com/i/loans/car-loans/"
  ],
  "http://monzo.com/blog/authors/peggy-mcgregor": [
    "http://monzo.com/blog/2019/04/09/how-can-i-start-saving",
    "http://monzo.com/blog/2019/02/06/50-20-30-budgeting",
    "http://monzo.com/blog/2018/09/26/how-to-read-your-payslip",
    "http://monzo.com/blog/2019/04/17/how-to-get-a-mortgage",
    "http://monzo.com/blog/2018/09/07/open-a-uk-bank-account",
    "http://monzo.com/blog/authors/peggy-mcgregor/2",
    "http://monzo.com/blog/2019/02/21/piggy-bank-saving",
    "http://monzo.com/blog/authors/peggy-mcgregor/3",
    "http://monzo.com/blog/2019/04/17/shoud-i-get-a-credit-card",
    "http://monzo.com/blog/2018/08/08/p60-p45-p11d-paye-forms",
    "http://monzo.com/blog/2019/04/24/common-money-mistakes",
    "http://monzo.com/blog/2021/10/08/what-is-open-banking",
    "http://monzo.com/blog/authors/peggy-mcgregor/4",
    "http://monzo.com/blog/2019/04/24/good-vs-bad-debt-should-i-borrow-money"
  ],
  "http://monzo.com/blog/how-money-works/2": [
    "http://monzo.com/blog/2023/03/09/sinking-fund-future-you-pots",
    "http://monzo.com/blog/2021/01/21/financial-education-spending-and-budgeting",
    "http://monzo.com/blog/cash-stuffing-and-other-old-school-ways-to-save-money-with-monzo",
    "http://monzo.com/blog/2023/02/23/manage-your-money-minimal-effort",
    "http://monzo.com/blog/2021/01/03/origins-of-money-superstitions",
    "http://monzo.com/blog/2023/03/17/deinfluencing-mindful-shopping-tips",
    "http://monzo.com/blog/2023/02/21/build-confidence-managing-money",
    "http://monzo.com/blog/2020/11/24/big-guide-to-borrowing-and-debt"
  ],
  "https://monzo.com/blog/pride-season-2020": [
    "https://monzo.com/blog/authors/sheree-atcheson"
  ],
  "http://monzo.com/blog/how-money-works/3": [
    "http://monzo.com/blog/how-money-works/5",
    "http://monzo.com/blog/2019/09/18/tax-free-savings-allowance",
    "http://monzo.com/blog/10-things-they-didnt-teach-you-about-money-in-school",
    "http://monzo.com/blog/how-money-works/4"
  ],
  "https://monzo.com/blog/how-we-protect-you": [
    "https://monzo.com/blog/how-to-shop-online-safely-with-monzo",
    "https://monzo.com/blog/personal-details-are-compromised",
    "https://monzo.com/blog/2020/05/04/confirmation-of-payee-launch",
    "https://monzo.com/blog/how-we-protect-you/2",
    "https://monzo.com/blog/behind-the-scenes-of-a-phishing-scam",
    "https://monzo.com/blog/how-we-upgraded-3d-secure",
    "https://monzo.com/blog/2019/04/02/pyramid-schemes-fractal-mandala",
    "https://monzo.com/blog/what-to-do-if-youre-worried-about-paying-rent-or-losing-your-home-because-of-coronavirus"
  ],
  "https://monzo.com/help/investments/investments-fees/": [
    "https://monzo.com/legal/investments/fees"
  ],
  "https://monzo.com/blog/authors/rore-erica-okoh": [
    "https://monzo.com/blog/2022/10/13/becoming-a-product-marketing-manager-at-monzo",
    "https://monzo.com/blog/introducing-monzo-premium"
  ],
  "https://monzo.com/blog/team/2": [
    "https://monzo.com/blog/2017/04/06/meet-dan",
    "https://monzo.com/blog/2017/03/09/emma-profile",
    "https://monzo.com/blog/2017/02/22/josh-profile",
    "https://monzo.com/blog/2017/03/22/meet-venkat",
    "https://monzo.com/blog/2017/02/01/natasha-profile",
    "https://monzo.com/blog/2017/05/17/meet-tapas",
    "https://monzo.com/blog/2017/02/08/meet-irina",
    "https://monzo.com/blog/2016/03/10/meet-jonas"
  ],
  "https://monzo.com/blog/lets-talk-business/3": [
    "https://monzo.com/blog/2021/01/13/self-employed-tips-for-self-assessment",
    "https://monzo.com/blog/business-banking/do-i-need-a-business-bank-account/",
    "https://monzo.com/blog/2021/01/05/self-employed-tax-basics",
    "https://monzo.com/blog/2021/03/11/how-to-prepare-your-business-for-the-new-tax-year",
    "https://monzo.com/blog/2020/09/30/mental-health-self-employed",
    "https://monzo.com/blog/2020/12/04/accounting-basics-for-every-small-business",
    "https://monzo.com/blog/business-basics-social-media",
    "https://monzo.com/blog/2020/11/25/new-to-monzo-business-weve-made-invoices-better",
    "https://monzo.com/blog/2020/10/22/accounting-for-startups",
    "https://monzo.com/blog/2021/03/05/march-2021-budget-small-businesses",
    "https://monzo.com/blog/2020/09/17/fifty-thousand-monzo-business-customers",
    "https://monzo.com/blog/2020/12/15/how-accounting-can-help-your-business-grow",
    "https://monzo.com/blog/monzo-business-deborah"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-1-5/": [
    "http://monzo.com/legal/privacy-bank/"
  ],
  "https://monzo.com/help/account-and-profile": [
    "https://monzo.com/help/account-and-profile/understanding-fees/",
    "https://monzo.com/help/account-and-profile/update-legal-name/",
    "https://monzo.com/help/account-and-profile/brexit-general-query/",
    "https://monzo.com/help/account-and-profile/labs-what-is/",
    "https://monzo.com/help/account-and-profile/IFTTT-login-button-not-working/",
    "https://monzo.com/help/account-and-profile/update-preferred-name/",
    "https://monzo.com/help/account-and-profile/brexit-currency-impact/",
    "https://monzo.com/help/account-and-profile/update-email/",
    "https://monzo.com/help/account-and-profile/update-phone-number/",
    "https://monzo.com/help/account-and-profile/statement-of-fees-web/",
    "https://monzo.com/help/account-and-profile/closed-account-refund/",
    "https://monzo.com/help/account-and-profile/reopening-your-account/",
    "https://monzo.com/help/account-and-profile/bank-statement-changes-web/",
    "https://monzo.com/help/account-and-profile/update-home-address/",
    "https://monzo.com/help/account-and-profile/asked-to-update-details/",
    "https://monzo.com/help/account-and-profile/share-with-us/",
    "https://monzo.com/help/account-and-profile/close-account/",
    "https://monzo.com/help/account-and-profile/what-is-ifttt/",
    "https://monzo.com/help/account-and-profile/IFTTT-login/",
    "https://monzo.com/help/account-and-profile/IFTTT-set-up/",
    "https://monzo.com/help/account-and-profile/update-tax-residency/",
    "https://monzo.com/help/account-and-profile/account-selector/",
    "https://monzo.com/help/account-and-profile/brexit-monzo-business-impact/"
  ],
  "http://monzo.com/blog/authors/naji-esiri/2": [
    "http://monzo.com/blog/2017/02/09/customer-support-quotables-short",
    "http://monzo.com/blog/2017/03/31/designers-inspiration",
    "http://monzo.com/blog/2017/01/24/100000th-user",
    "http://monzo.com/blog/2017/06/08/host-a-monzo-meetup",
    "http://monzo.com/blog/2017/04/27/welcome-to-the-drawing-board",
    "http://monzo.com/blog/2017/02/17/four-useful-services-your-bank-should-not-be-charging-for",
    "http://monzo.com/blog/2017/01/26/our-new-community-page",
    "http://monzo.com/blog/2017/02/13/5-features-your-mobile-bank-account-should-have-by-now",
    "http://monzo.com/blog/2017/07/27/monzo-insider",
    "http://monzo.com/blog/2017/04/20/crowdfunding-in-numbers"
  ],
  "http://monzo.com/blog/monzo-hq/3": [
    "http://monzo.com/blog/2019/01/30/tell-your-friends-to-sign-up",
    "http://monzo.com/blog/monzo-hq/4",
    "http://monzo.com/blog/2019/02/26/5-a-side-football",
    "http://monzo.com/blog/2019/03/27/tone-of-voice-birthday",
    "http://monzo.com/blog/2019/03/06/engineering-with-no-degree",
    "http://monzo.com/blog/2019/01/04/monzo-in-2019",
    "http://monzo.com/blog/2019/01/07/progression",
    "http://monzo.com/blog/2019/02/07/building-progression-frameworks",
    "http://monzo.com/blog/2018/12/06/crowdfunding-in-numbers",
    "http://monzo.com/blog/monzo-hq/5",
    "http://monzo.com/blog/2018/12/05/crowdfunding-closes",
    "http://monzo.com/blog/2019/05/22/monzo-tv-ads"
  ],
  "https://monzo.com/blog/2021/01/21/financial-education-spending-and-budgeting": [
    "https://monzo.com/blog/2018/11/07/pensions-explained",
    "https://monzo.com/blog/2018/08/10/student-loans-explained",
    "https://monzo.com/blog/2018/11/27/how-to-save-for-retirement",
    "https://monzo.com/blog/2018/08/10/earning-money-explained/",
    "https://monzo.com/blog/authors/jacq-bridge",
    "https://monzo.com/blog/2018/09/21/protect-yourself-against-fraud-identity-theft"
  ],
  "https://monzo.com/blog/how-to-save-for-summer": [
    "https://monzo.com/help/payments-getting-started/standing-order-set-up"
  ],
  "https://monzo.com/blog/technology/3": [
    "https://monzo.com/blog/2022/12/13/monzo-magic-hackathon",
    "https://monzo.com/blog/2022/12/19/machine-learning-at-monzo-in-2022",
    "https://monzo.com/blog/2022/11/10/design-system-approach-to-research-guidelines",
    "https://monzo.com/blog/2022/11/02/argo-rollouts-at-scale",
    "https://monzo.com/blog/2022/09/29/migrating-our-monorepo-seamlessly-from-dep-to-go-modules",
    "https://monzo.com/blog/2022/07/26/switching-from-customer-service-representative-to-backend-engineer",
    "https://monzo.com/blog/2022/06/24/redefining-our-microservice-development-process",
    "https://monzo.com/blog/2022/12/15/building-an-extension-framework-for-dbt",
    "https://monzo.com/blog/2022/06/23/our-mobile-release-process-an-illustrated-story",
    "https://monzo.com/blog/technology/5",
    "https://monzo.com/blog/2022/11/25/reducing-nat-gateway-cost-with-private-networking-between-aws-and-gcp",
    "https://monzo.com/blog/2022/11/16/how-insights-shaped-building-a-0-1-product-monzo-flex"
  ],
  "https://monzo.com/blog/2022/11/10/design-system-approach-to-research-guidelines": [
    "https://monzo.com/blog/authors/saskia-liebenberg"
  ],
  "https://monzo.com/help/payments-paying-monzobusiness": [
    "https://monzo.com/help/payments-paying-monzobusiness/paying-easy-bank-transfer/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-email/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-fees/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-no-account/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-paymentlinks/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-protection/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-paynow/",
    "https://monzo.com/help/payments-paying-monzobusiness/paying-business-receipt/"
  ],
  "https://monzo.com/help/opening-an-account": [
    "https://monzo.com/help/opening-an-account/monzo-business-signup-existing-personal-account/",
    "https://monzo.com/help/opening-an-account/business-account-getting-in-after-submitting-application/",
    "https://monzo.com/help/opening-an-account/add-and-manage-members/",
    "https://monzo.com/help/opening-an-account/business-banking-cass/",
    "https://monzo.com/help/opening-an-account/business-account-signup-no-personal-account/",
    "https://monzo.com/help/opening-an-account/business-verifying-persons-of-significant-control-at-sign-up/",
    "https://monzo.com/help/opening-an-account/how-to-open-a-Monzo-Joint-Account/",
    "https://monzo.com/help/opening-an-account/business-card-delivery-address/",
    "https://monzo.com/help/opening-an-account/business-account-signup-start-on-web/",
    "https://monzo.com/help/opening-an-account/multiple-business-accounts/",
    "https://monzo.com/help/opening-an-account/eligible-businesses/",
    "https://monzo.com/help/opening-an-account/why-we-ask-for-a-video-when-you-open-a-monzo-account/",
    "https://monzo.com/help/opening-an-account/using-current-account-for-business/",
    "https://monzo.com/help/opening-an-account/how-to-open-a-Monzo-Personal-Account/"
  ],
  "https://monzo.com/blog/team/": [
    "https://monzo.com/blog/monzo-parents",
    "https://monzo.com/blog/2017/07/25/meet-will",
    "https://monzo.com/blog/tech-ops-hiring-monzo",
    "https://monzo.com/blog/2018/07/06/celebrating-pride",
    "https://monzo.com/blog/2019/05/15/gender-pay-gap",
    "https://monzo.com/blog/2017/12/12/meet-jordan",
    "https://monzo.com/blog/2017/06/22/meet-gary",
    "https://monzo.com/blog/gender-pay-gap-update-april-2020-and-april-2021",
    "https://monzo.com/blog/thank-you-jonas-templestein",
    "https://monzo.com/blog/women-in-finance-charter-update",
    "https://monzo.com/blog/2020/06/27/pride-remembering-our-history-and-looking-towards-the-fight-ahead",
    "https://monzo.com/blog/team/2",
    "https://monzo.com/blog/2017/09/04/meet-phil-hewinson-head-of-partnerships",
    "https://monzo.com/blog/2021/11/02/net-zero-carbon-emissions"
  ],
  "https://monzo.com/blog/authors/naji-esiri": [
    "https://monzo.com/blog/2018/05/09/sneak-peeks",
    "https://monzo.com/blog/8-things-we-learnt-at-the-futureofmonzo",
    "https://monzo.com/blog/your-questions-about-universal-credit-and-government-support-answered-by",
    "https://monzo.com/blog/authors/naji-esiri/2",
    "https://monzo.com/blog/debt-borrowing-money-making-repayments-coronavirus-stepchange",
    "https://monzo.com/blog/2018/11/05/monzo-community",
    "https://monzo.com/blog/authors/naji-esiri/3",
    "https://monzo.com/blog/2019/12/03/understanding-universal-credit",
    "https://monzo.com/blog/2018/05/25/monzo-2.0-events-roundup/",
    "https://monzo.com/blog/how-to-get-support-if-youre-a-refugee-or-asylum-seeker-during-coronavirus"
  ],
  "http://monzo.com/help/joint-accounts": [
    "http://monzo.com/help/joint-accounts/what-joint-account/",
    "http://monzo.com/help/joint-accounts/current-account-joint-account/",
    "http://monzo.com/help/joint-accounts/credit-score-joint-account/",
    "http://monzo.com/help/joint-accounts/joint-account-switch/",
    "http://monzo.com/help/joint-accounts/create-pot-app/",
    "http://monzo.com/help/joint-accounts/close-joint-account-how-to/",
    "http://monzo.com/help/joint-accounts/types-account-switch/"
  ],
  "http://monzo.com/blog/product-updates/11": [
    "http://monzo.com/blog/product-updates/10",
    "http://monzo.com/blog/2016/07/18/touchid-profile-update",
    "http://monzo.com/blog/2016/06/13/1-5",
    "http://monzo.com/blog/2015/10/30/we-are-ready",
    "http://monzo.com/blog/2016/08/08/updated-design",
    "http://monzo.com/blog/2016/06/07/ethical-banking",
    "http://monzo.com/blog/2016/09/29/android",
    "http://monzo.com/blog/2016/11/14/spending-android",
    "http://monzo.com/blog/product-updates/9",
    "http://monzo.com/blog/2016/03/17/beta",
    "http://monzo.com/blog/2016/09/12/1-6-3",
    "http://monzo.com/blog/2016/10/26/card-replacement-android"
  ],
  "https://monzo.com/blog/product-updates/5": [
    "https://monzo.com/blog/2018/12/10/joint-pots",
    "https://monzo.com/blog/2019/02/05/savings-pots-paused",
    "https://monzo.com/blog/2018/12/21/android-app-icons",
    "https://monzo.com/blog/2018/11/22/business-banking",
    "https://monzo.com/blog/product-updates/7",
    "https://monzo.com/blog/2018/12/13/locked-pots",
    "https://monzo.com/blog/2019/02/04/pay-anyone-link",
    "https://monzo.com/blog/2018/12/13/shared-tabs",
    "https://monzo.com/blog/2019/02/07/joint-account-switching",
    "https://monzo.com/blog/2019/01/29/2019-features",
    "https://monzo.com/blog/2018/11/20/why-we-are-lending"
  ],
  "http://monzo.com/blog/authors/natalie-gil": [
    "http://monzo.com/blog/protect-money-boundaries-maintain-social-life",
    "http://monzo.com/blog/travel-scams-protect-yourself",
    "http://monzo.com/blog/authors/natalie-gil/6",
    "http://monzo.com/blog/authors/natalie-gil/2",
    "http://monzo.com/blog/emotional-spending-debt",
    "http://monzo.com/blog/relationship-money-income-gap",
    "http://monzo.com/blog/emotional-spending-tips",
    "http://monzo.com/blog/relationship-money-communication-tips",
    "http://monzo.com/blog/budgeting-saving-wedding-guest",
    "http://monzo.com/blog/authors/natalie-gil/3",
    "http://monzo.com/blog/budgeting-tips-wedding-season",
    "http://monzo.com/blog/spending-money-to-celebrate-friends-single",
    "http://monzo.com/blog/friendship-money-wealth-gap-tips"
  ],
  "https://monzo.com/help/us-updating-your-profile/us-opting-out-of-marketing-emails/": [
    "https://monzo.com/help/us-updating-your-profile/"
  ],
  "https://monzo.com/blog/2019/02/06/zero-sum-budgeting": [
    "https://monzo.com/blog/2018/07/16/schedule-payments-into-pots/"
  ],
  "https://monzo.com/legal/referral-scheme/terms-and-conditions": [
    "https://monzo.com/legal/files/referral-scheme/monzo-referral-scheme-3.0.pdf",
    "https://monzo.com/legal/referral-scheme/terms-and-conditions/version-2-0/",
    "https://monzo.com/legal/referral-scheme/terms-and-conditions/version-3-0/",
    "https://monzo.com/legal/referral-scheme/terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/blog/how-money-works": [
    "https://monzo.com/blog/using-monzo-in-the-uk-after-holiday",
    "https://monzo.com/blog/2023/04/28/payday-tips-while-treating-yourself",
    "https://monzo.com/blog/how-money-works/3",
    "https://monzo.com/blog/managing-money-group-holidays-monzo",
    "https://monzo.com/blog/how-to-save-for-travel-spontaneity-fund",
    "https://monzo.com/blog/how-money-works/14",
    "https://monzo.com/blog/how-to-save-for-summer",
    "https://monzo.com/blog/festival-money-saving-tips",
    "https://monzo.com/blog/how-to-save-for-a-wedding-using-monzo",
    "https://monzo.com/blog/how-money-works/2"
  ],
  "https://monzo.com/blog/2018/07/05/july-update": [
    "https://monzo.com/blog/2018/06/06/android-updates-travel-reports/",
    "https://monzo.com/blog/2018/07/05/fingerprint-pay-android/",
    "https://monzo.com/blog/2018/06/07/summary-update-predicting-committed-spending/"
  ],
  "https://monzo.com/blog/72": [
    "https://monzo.com/blog/70",
    "https://monzo.com/blog/2016/08/05/spending-on-mondo-update",
    "https://monzo.com/blog/2016/08/26/how-we-picked-monzo",
    "https://monzo.com/blog/2016/07/22/name-change-update-snapchat"
  ],
  "http://monzo.com/help/us-using-your-card": [
    "http://monzo.com/help/us-using-your-card/us-fraud-raising-a-dispute/",
    "http://monzo.com/help/us-using-your-card/us-using-your-monzo-card-outside-the-us/",
    "http://monzo.com/help/us-using-your-card/us-can-i-deposit-cash-into-monzo/",
    "http://monzo.com/help/us-using-your-card/us-using-your-monzo-card-at-an-atm/",
    "http://monzo.com/help/us-using-your-card/us-reporting-and-issue-raising-a-dispute/",
    "http://monzo.com/help/us-using-your-card/us-where-can-i-use-my-monzo-card/",
    "http://monzo.com/help/us-using-your-card/us-using-monzo-with-apple-pay-and-google-wallet/",
    "http://monzo.com/help/us-using-your-card/us-new-account-add-to-apple-pay-general/"
  ],
  "https://monzo.com/blog/cash-withdrawals-in-the-european-economic-area-eea-are-now-free": [
    "https://monzo.com/blog/authors/russell-smith"
  ],
  "http://monzo.com/help/overdrafts-loans": [
    "http://monzo.com/help/overdrafts-loans/what-is-an-overdraft/",
    "http://monzo.com/help/overdrafts-loans/switching-off-overdraft/",
    "http://monzo.com/help/overdrafts-loans/consolidation-loans/",
    "http://monzo.com/help/overdrafts-loans/turn-off-lending-offers/",
    "http://monzo.com/help/overdrafts-loans/Help-to-use-your-overdraft-less/",
    "http://monzo.com/help/overdrafts-loans/notice-of-sums-in-arrears/",
    "http://monzo.com/help/overdrafts-loans/loans-monzo-business-web/",
    "http://monzo.com/help/overdrafts-loans/early-payment-loan/",
    "http://monzo.com/help/overdrafts-loans/change-overdraft-notifications/",
    "http://monzo.com/help/overdrafts-loans/how-to-open-overdraft/",
    "http://monzo.com/help/overdrafts-loans/nosia-snosia-payment-arrangement/",
    "http://monzo.com/help/overdrafts-loans/emergency-overdrafts/",
    "http://monzo.com/help/overdrafts-loans/borrowing-more/",
    "http://monzo.com/help/overdrafts-loans/Managing-your-money/",
    "http://monzo.com/help/overdrafts-loans/changing-overdraft-limit/",
    "http://monzo.com/help/overdrafts-loans/missing-payment-loan/",
    "http://monzo.com/help/overdrafts-loans/how-do-overdrafts-work/",
    "http://monzo.com/help/overdrafts-loans/notices-of-correction/",
    "http://monzo.com/help/overdrafts-loans/overdrafts-credit-score/",
    "http://monzo.com/help/overdrafts-loans/overdrafts-fees/",
    "http://monzo.com/help/overdrafts-loans/unauthorised-overdrafts/",
    "http://monzo.com/help/overdrafts-loans/overdraft-monzo-business-web/",
    "http://monzo.com/help/overdrafts-loans/change-repaymentdate-loan-web/",
    "http://monzo.com/help/overdrafts-loans/manage-overdraft-web/",
    "http://monzo.com/help/overdrafts-loans/eligiblity-loans/",
    "http://monzo.com/help/overdrafts-loans/lost-job/"
  ],
  "https://monzo.com/help/emergencies/monzo-card-lost-damaged-stolen": [
    "https://monzo.com/help/emergencies/",
    "https://monzo.com/help/emergencies/dont-know-forgot-pin/",
    "https://monzo.com/help/emergencies/monzo-card-blocked/",
    "https://monzo.com/help/emergencies/lost-phone/",
    "https://monzo.com/help/emergencies/report-fraud/",
    "https://monzo.com/help/emergencies/account-blocked/"
  ],
  "https://monzo.com/blog/authors/natalie-gil/5": [
    "https://monzo.com/blog/i-was-out-of-work-for-18-months",
    "https://monzo.com/blog/the-extra-cost-of-being-a-woman",
    "https://monzo.com/blog/monzo-pots-robs-story",
    "https://monzo.com/blog/digital-cash-stuffing-with-monzo-pots-save-money",
    "https://monzo.com/blog/monzo-pots-amys-story",
    "https://monzo.com/blog/buy-now-pay-later-schemes",
    "https://monzo.com/blog/my-income-halved-accountant-turned-freelance-yoga-teacher"
  ],
  "https://monzo.com/business/sole-trader-loans/": [
    "https://monzo.com/help/overdrafts-loans/eligiblity-loans/",
    "https://monzo.com/-deeplinks/business-loans/",
    "https://monzo.com/help/overdrafts-loans/missing-payment-loan/"
  ],
  "http://monzo.com/blog/2022/05/24/send-money-abroad-with-monzo-business": [
    "http://monzo.com/current-account/joint-account/",
    "http://monzo.com/features/savings/",
    "http://monzo.com/monzo-plus/",
    "http://monzo.com/savings/instant-access",
    "http://monzo.com/blog/authors/matt-jones",
    "http://monzo.com/features/16-plus/",
    "http://monzo.com/savingwithmonzo/",
    "http://monzo.com/switch/",
    "http://monzo.com/current-account/"
  ],
  "https://monzo.com/blog/67": [
    "https://monzo.com/blog/66",
    "https://monzo.com/blog/65"
  ],
  "https://monzo.com/blog/technology/4": [
    "https://monzo.com/blog/2022/04/12/how-anyone-at-monzo-can-test",
    "https://monzo.com/blog/2022/04/20/how-our-android-engineers-automated-the-removal-of-kotlin-synthetics",
    "https://monzo.com/blog/2022/05/06/becoming-an-engineering-manager-1-year-in",
    "https://monzo.com/blog/2022/04/04/my-first-3-months-at-monzo-as-an-engineering-manager",
    "https://monzo.com/blog/2022/02/18/how-we-calculate-balances"
  ],
  "http://monzo.com/blog/2020/02/24/credit-scores": [
    "http://monzo.com/blog/credit-scores"
  ],
  "https://monzo.com/blog/2018/08/21/budget-with-monzo": [
    "https://monzo.com/blog/2018/08/16/automate-your-finances/",
    "https://monzo.com/blog/2018/10/09/bill-splitting/"
  ],
  "http://monzo.com/blog/authors/natalie-gil/2": [
    "http://monzo.com/blog/monzo-pots-save-money-healthy-eating",
    "http://monzo.com/blog/debt-budgeting-tips",
    "http://monzo.com/blog/save-money-wedding-monzo-pots",
    "http://monzo.com/blog/group-holidays-bill-splitting-monzo",
    "http://monzo.com/blog/save-money-festivals-pots",
    "http://monzo.com/blog/small-budget-wedding-planning-tips",
    "http://monzo.com/blog/manage-money-group-holidays",
    "http://monzo.com/blog/pay-not-to-be-there-challenge-save-money",
    "http://monzo.com/blog/friendship-money-wealth-income-gap",
    "http://monzo.com/blog/saving-money-last-minute-wedding"
  ],
  "http://monzo.com/service-quality-results": [
    "http://monzo.com/service-quality-results/",
    "http://monzo.com/information-about-business-current-account-services/",
    "http://monzo.com/information-about-current-account-services/"
  ],
  "http://monzo.com/help/monzo-plus": [
    "http://monzo.com/help/monzo-plus/remove-credit-tracker/",
    "http://monzo.com/help/monzo-plus/virtual-cards-how/",
    "http://monzo.com/help/monzo-plus/plus-connected-accounts/",
    "http://monzo.com/help/monzo-plus/plus-joint-account/",
    "http://monzo.com/help/monzo-plus/monzo-plus-ineligible/",
    "http://monzo.com/help/monzo-plus/plus-credit-tracker/",
    "http://monzo.com/help/monzo-plus/plus-fees/",
    "http://monzo.com/help/monzo-plus/paid-upgrade-premium/",
    "http://monzo.com/help/monzo-plus/virtual-card-on-pot-how/",
    "http://monzo.com/help/monzo-plus/advanced-budgeting-roundups/",
    "http://monzo.com/help/monzo-plus/connected-accounts-remove/",
    "http://monzo.com/help/monzo-plus/monzo-plus-billing-date/",
    "http://monzo.com/help/monzo-plus/connected-account-not-working/",
    "http://monzo.com/help/monzo-plus/web-credit-tracker-problem/",
    "http://monzo.com/help/monzo-plus/virtual-card-on-pot-dispute/",
    "http://monzo.com/help/monzo-plus/advanced-budgeting-auto-exports/",
    "http://monzo.com/help/monzo-plus/plus-offers/",
    "http://monzo.com/help/monzo-plus/plus-cancel/",
    "http://monzo.com/help/monzo-plus/virtual-cards-limits/",
    "http://monzo.com/help/monzo-plus/afford-plus-premium/",
    "http://monzo.com/help/monzo-plus/paid-downgrade-premium/",
    "http://monzo.com/help/monzo-plus/connected-accounts-supported-banks/",
    "http://monzo.com/help/monzo-plus/paid-interest/",
    "http://monzo.com/help/monzo-plus/monzo-plus-benefits/",
    "http://monzo.com/help/monzo-plus/monzo-plus-investor/",
    "http://monzo.com/help/monzo-plus/plus-signip/",
    "http://monzo.com/help/monzo-plus/advanced-budgeting-multiple-categories/",
    "http://monzo.com/help/monzo-plus/connected-accounts-privacy/",
    "http://monzo.com/help/monzo-plus/virtul-cards-apple-google-pay/",
    "http://monzo.com/help/monzo-plus/advanced-budgeting-custom-categories/",
    "http://monzo.com/help/monzo-plus/virtual-cards-what/",
    "http://monzo.com/help/monzo-plus/web-bill-pots/",
    "http://monzo.com/help/monzo-plus/virtual-cards-not-working/"
  ],
  "http://monzo.com/blog/2022/03/2/everything-you-need-to-know-about-making-tax-digital": [
    "http://monzo.com/blog/authors/maja-bayyoud",
    "http://monzo.com/blog/authors/xero",
    "http://monzo.com/blog/business-basics"
  ],
  "https://monzo.com/blog/2019/07/03/the-role-of-technology-in-social-inclusion": [
    "https://monzo.com/blog/2019/05/16/global-accessibility-awareness/",
    "https://monzo.com/blog/authors/sally-lait",
    "https://monzo.com/blog/2019/05/15/supporting-mental-health/",
    "https://monzo.com/blog/2019/04/01/big-issue-monzo-pay-it-forward"
  ],
  "http://monzo.com/help/app-help": [
    "http://monzo.com/help/app-help/apple-pay-payment-limit/",
    "http://monzo.com/help/app-help/contacting-support/",
    "http://monzo.com/help/app-help/log-in-multiple-devices/",
    "http://monzo.com/help/app-help/add-card-to-apple-google-pay/",
    "http://monzo.com/help/app-help/turn-on-biometrics-face-fingerprint-id-web/",
    "http://monzo.com/help/app-help/making-monzo-default-card-google-pay/",
    "http://monzo.com/help/app-help/switch-on-dark-mode-web/",
    "http://monzo.com/help/app-help/opening-encrypted-files/",
    "http://monzo.com/help/app-help/monzo-default-apple-pay-card/",
    "http://monzo.com/help/app-help/apple-pay-devices/",
    "http://monzo.com/help/app-help/adding-card-to-google-pay/",
    "http://monzo.com/help/app-help/google-pay-payment-limit/",
    "http://monzo.com/help/app-help/google-pay-activation-issues/",
    "http://monzo.com/help/app-help/samsung-pay/",
    "http://monzo.com/help/app-help/finding-features-new-homescreen/",
    "http://monzo.com/help/app-help/reporting-bugs/",
    "http://monzo.com/help/app-help/apple-pay-activation-issues/",
    "http://monzo.com/help/app-help/remove-monzo-card-from-apple-pay/",
    "http://monzo.com/help/app-help/duplicate-notifications-apple-pay/",
    "http://monzo.com/help/app-help/changing-notifications/",
    "http://monzo.com/help/app-help/using-google-pay-card-frozen/",
    "http://monzo.com/help/app-help/logging-out/"
  ],
  "http://monzo.com/blog/authors/lizzie-morgan": [
    "http://monzo.com/blog/2019/07/18/investment-opportunity-scams",
    "http://monzo.com/blog/2019/04/04/why-we-block-freeze-close-monzo-accounts"
  ],
  "https://monzo.com/legal/business-account-privacy-notice/": [
    "https://monzo.com/legal/business-account-privacy-notice/version-1-1/",
    "https://monzo.com/legal/business-account-privacy-notice/version-1-3/",
    "https://monzo.com/legal/business-account-privacy-notice/version-1-5/",
    "https://monzo.com/legal/business-account-privacy-notice/version-1-6/",
    "https://monzo.com/legal/business-account-privacy-notice/version-1-7/",
    "https://monzo.com/legal/business-account-privacy-notice/version-1-4/",
    "https://monzo.com/legal/business-account-privacy-notice/version-1-2/"
  ],
  "http://monzo.com/blog/authors/roxy-alexander/3": [
    "http://monzo.com/blog/2019/10/08/get-out-of-debt",
    "http://monzo.com/blog/saving-tips-from-year-in-monzo",
    "http://monzo.com/blog/authors/roxy-alexander/4",
    "http://monzo.com/blog/2019/11/14/how-much-money-should-i-save",
    "http://monzo.com/blog/29-ways-save-money-household-bills/",
    "http://monzo.com/blog/2019/11/15/how-do-i-get-out-of-my-overdraft",
    "http://monzo.com/blog/2019/12/11/how-do-loans-work",
    "http://monzo.com/blog/2019/08/07/what-is-a-regular-savings-account",
    "http://monzo.com/blog/2019/11/07-save-money-for-your-kids",
    "http://monzo.com/blog/how-to-get-a-loan-with-bad-credit",
    "http://monzo.com/blog/2019/11/15/how-to-save-money-on-car-insurance",
    "http://monzo.com/blog/2019/11/15/saving-for-your-grandchildren",
    "http://monzo.com/blog/2019/11/12/what-are-unsecured-loans"
  ],
  "http://monzo.com/blog/monzo-business-how-to-automate-tax-savings-with-tax-pots": [
    "http://monzo.com/blog/business-banking"
  ],
  "https://monzo.com/legal/partner-cashback-terms-and-conditions/": [
    "https://monzo.com/legal/partner-cashback-terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/partner-cashback-terms-and-conditions/version-1-3/",
    "https://monzo.com/legal/partner-cashback-terms-and-conditions/version-1-2/",
    "https://monzo.com/legal/partner-cashback-terms-and-conditions/version-1-4/"
  ],
  "https://monzo.com/blog/mental-health": [
    "https://monzo.com/blog/mental-health/2",
    "https://monzo.com/blog/2019/05/15/national-numeracy-challenge",
    "https://monzo.com/blog/2019/05/15/supporting-mental-health",
    "https://monzo.com/blog/2019/05/13/supporting-vulnerable-customers",
    "https://monzo.com/blog/2019/01/30/mental-health/"
  ],
  "https://monzo.com/blog/loans-help/": [
    "https://monzo.com/blog/loans-help/car-finance-option/",
    "https://monzo.com/blog/loans-help/pay-off-credit-card/",
    "https://monzo.com/blog/2019/12/11/how-do-loans-work",
    "https://monzo.com/blog/what-to-do-if-you-miss-a-loan-repayment",
    "https://monzo.com/blog/2019/11/12/what-are-unsecured-loans",
    "https://monzo.com/blog/how-to-get-a-loan-with-bad-credit",
    "https://monzo.com/blog/2019/12/05/secured-loan"
  ],
  "https://monzo.com/faq/": [
    "https://monzo.com/help/legal-stuff/closed-account-bank-statement/"
  ],
  "https://monzo.com/blog/2017/09/29/android-engineers": [
    "https://monzo.com/blog/2016/09/07/our-approach-to-overdrafts/",
    "https://monzo.com/blog/2017/08/07/current-account-android/",
    "https://monzo.com/blog/2017/09/27/android-help-search/"
  ],
  "https://monzo.com/blog/2018/11/15/card-controls": [
    "https://monzo.com/blog/authors/lew-isaacs"
  ],
  "http://monzo.com/blog/authors/richard-cook": [
    "http://monzo.com/blog/2018/11/09/employee-social-media-guidelines",
    "http://monzo.com/blog/2019/08/28/take-a-video-selfie-to-sign-up-for-monzo",
    "http://monzo.com/blog/i-quit-smoking",
    "http://monzo.com/blog/authors/richard-cook/2",
    "http://monzo.com/blog/2019/03/05/flybe-collapse",
    "http://monzo.com/blog/2019/08/01/meet-bekki",
    "http://monzo.com/blog/2019/09/23/thomas-cook-collapse",
    "http://monzo.com/blog/2019/11/13/save-money-when-you-tweet-using-monzo",
    "http://monzo.com/blog/2020/11/11/paypal-text-scams"
  ],
  "https://monzo.com/annual-report/2018/": [
    "https://monzo.com/blog/2018/04/04/ending-prepaid",
    "https://monzo.com/blog/2017/04/05/banking-licence",
    "https://monzo.com/blog/2018/04/24/help-tab",
    "https://monzo.com/static/docs/annual-report-2018.pdf",
    "https://monzo.com/blog/2018/01/23/overdraft-update",
    "https://monzo.com/blog/2018/05/22/making-monzo-better",
    "https://monzo.com/blog/2018/02/19/third-birthday",
    "https://monzo.com/blog/financial-inclusion"
  ],
  "https://monzo.com/blog/2019/05/17/how-to-save-money": [
    "https://monzo.com/blog/2019/10/31/how-to-save-money-on-household-bills",
    "https://monzo.com/features/energy-switching/",
    "https://monzo.com/blog/2019/02/06/zero-sum-budgeting/",
    "https://monzo.com/blog/2019/04/04/launching-isas/",
    "https://monzo.com/blog/2019/04/09/how-can-i-start-saving/",
    "https://monzo.com/blog/2019/05/07/how-to-save-money-with-monzo/",
    "https://monzo.com/blog/2019/02/06/50-20-30-budgeting/",
    "https://monzo.com/blog/2019/05/01/save-little-and-often/",
    "https://monzo.com/blog/2018/10/24/types-of-savings-account/",
    "https://monzo.com/blog/2019/01/18/how-to-budget/",
    "https://monzo.com/blog/2019/04/10/1p-savings-challenge-monzo/",
    "https://monzo.com/blog/2019/10/09/how-to-save-money-on-food"
  ],
  "https://monzo.com/help/monzo-flex/interest-rates-for-monzo-flex": [
    "https://monzo.com/help/monzo-flex/applying-for-monzo-flex-and-credit-scores",
    "https://monzo.com/help"
  ],
  "https://monzo.com/blog/product-updates/10": [
    "https://monzo.com/blog/2017/06/13/identity-verification-upgrade",
    "https://monzo.com/blog/2017/04/05/profile-pictures-update",
    "https://monzo.com/blog/2017/02/09/launching-settings-android",
    "https://monzo.com/blog/2017/05/22/top-up-with-android-pay",
    "https://monzo.com/blog/2017/04/11/search-on-android",
    "https://monzo.com/blog/product-updates/8",
    "https://monzo.com/blog/2017/08/07/current-account-android",
    "https://monzo.com/blog/2017/03/28/i-forgot-my-pin",
    "https://monzo.com/blog/2017/02/24/monzome-on-android",
    "https://monzo.com/blog/2017/03/31/budget-targets",
    "https://monzo.com/blog/2017/05/08/android-pay-on-monzome",
    "https://monzo.com/blog/2017/09/25/android-progress-update",
    "https://monzo.com/blog/2017/01/16/app-shortcuts-android"
  ],
  "https://monzo.com/help/legal-stuff/closed-account-bank-statement/": [
    "https://monzo.com/help/legal-stuff/what-tax-status/",
    "https://monzo.com/help/legal-stuff/deposit-protection-fscs/",
    "https://monzo.com/help/legal-stuff/tax-residency-us/",
    "https://monzo.com/help/legal-stuff/tax-residency-eu/",
    "https://monzo.com/help/legal-stuff/",
    "https://monzo.com/help/legal-stuff/branches/"
  ],
  "https://monzo.com/blog/product-updates/3": [
    "https://monzo.com/blog/2019/12/09/our-overdrafts-are-changing",
    "https://monzo.com/blog/2019/08/09/how-were-doing-savings-accounts-differently",
    "https://monzo.com/blog/2019/07/24/market-leading-interest-rate-on-monzo-savings-pots",
    "https://monzo.com/blog/product-updates/5",
    "https://monzo.com/blog/2019/10/24/whats-next-for-the-new-look-monzo-app",
    "https://monzo.com/blog/you-can-now-hide-your-pots-and-change-the-order-theyre-in",
    "https://monzo.com/blog/product-updates/4",
    "https://monzo.com/blog/introducing-monzo-plus",
    "https://monzo.com/blog/2020/07/06/easy-bank-transfers",
    "https://monzo.com/blog/2019/09/26/introducing-salary-sorter-and-bills-pots",
    "https://monzo.com/blog/2019/08/22/get-your-student-loan-a-day-before-your-friends-do",
    "https://monzo.com/blog/2019/09/06/10-minimum-savings-pot"
  ],
  "http://monzo.com/blog/": [
    "http://monzo.com/blog/how-to-create-a-customer-segmentation-choosing-the-right-segmentation",
    "http://monzo.com/blog/monzo-business-how-to-integrate-your-accounting-software",
    "http://monzo.com/blog/3",
    "http://monzo.com/blog/user-research-insight-to-impact-the-art-of-scaling-impact-and-crafting-goal",
    "http://monzo.com/blog/what-are-monzos-technical-expectations-for-engineering-leaders",
    "http://monzo.com/blog/monzo-business-how-to-add-information-to-transactions",
    "http://monzo.com/blog/monzo-business-how-to-set-up-auto-exports",
    "http://monzo.com/blog/how-we-use-design-to-create-business-impact-at-monzo",
    "http://monzo.com/blog/77",
    "http://monzo.com/blog/starting-from-scratch-as-a-new-engineer-at-monzo",
    "http://monzo.com/blog/moving-monzo-com",
    "http://monzo.com/blog/how-we-built-a-queue-on-top-of-kafka",
    "http://monzo.com/blog/monzo-business-how-to-automate-tax-savings-with-tax-pots",
    "http://monzo.com/blog/2"
  ],
  "https://monzo.com/blog/product-updates/11": [
    "https://monzo.com/blog/2016/06/07/ethical-banking",
    "https://monzo.com/blog/product-updates/9",
    "https://monzo.com/blog/2016/10/26/card-replacement-android",
    "https://monzo.com/blog/2016/03/17/beta",
    "https://monzo.com/blog/2016/09/29/android",
    "https://monzo.com/blog/2016/06/13/1-5",
    "https://monzo.com/blog/2016/11/14/spending-android",
    "https://monzo.com/blog/2016/09/12/1-6-3",
    "https://monzo.com/blog/2016/07/18/touchid-profile-update",
    "https://monzo.com/blog/2016/08/08/updated-design",
    "https://monzo.com/blog/2015/10/30/we-are-ready",
    "https://monzo.com/blog/product-updates/10"
  ],
  "https://monzo.com/blog/2019/12/11/how-do-loans-work": [
    "https://monzo.com/blog/2019/12/05/car-finance-option",
    "https://monzo.com/blog/2019/11/02/pay-off-credit-card"
  ],
  "https://monzo.com/help/us-joint-accounts": [
    "https://monzo.com/help/us-joint-accounts/uk-can-i-open-a-joint-account-with-a-us-monzo-customer/",
    "https://monzo.com/help/us-joint-accounts/us-joint-account-limits/",
    "https://monzo.com/help/us-joint-accounts/us-fraud-raising-a-dispute/",
    "https://monzo.com/help/us-joint-accounts/uk-joint-account-limits/",
    "https://monzo.com/help/us-joint-accounts/us-can-i-open-a-joint-account-with-a-uk-monzo-customer/",
    "https://monzo.com/help/us-joint-accounts/us-opening-a-monzo-joint-account/",
    "https://monzo.com/help/us-joint-accounts/us-reporting-and-issue-raising-a-dispute/",
    "https://monzo.com/help/us-joint-accounts/us-joint-accounts-on-monzo/"
  ],
  "https://monzo.com/money-worries": [
    "https://monzo.com/blog/balance-in-trends",
    "https://monzo.com/i/pots",
    "https://monzo.com/-deeplinks/support",
    "https://monzo.com/blog/cost-of-living-how-were-supporting",
    "https://monzo.com/blog/2022/02/16/what-is-economic-abuse-and-how-to-spot-it",
    "https://monzo.com/i/fraud/",
    "https://monzo.com/help/your-needs/mental-health"
  ],
  "https://monzo.com/legal/plus/terms-and-conditions": [
    "https://monzo.com/help/overdrafts-loans/unauthorised-overdrafts",
    "https://monzo.com/legal/plus/terms-and-conditions/version-1-2/",
    "https://monzo.com/legal/plus/terms-and-conditions/version-1-4/",
    "https://monzo.com/legal/plus/terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/plus/terms-and-conditions/version-1-5/",
    "https://monzo.com/legal/plus/terms-and-conditions/version-1-0/",
    "https://monzo.com/legal/plus/terms-and-conditions/version-1-3/",
    "https://monzo.com/legal/plus/savings-summary",
    "https://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.5.pdf"
  ],
  "https://monzo.com/help/us-trends": [
    "https://monzo.com/help/us-trends/us-how-do-i-link-my-other-bank-accounts-to-monzo/",
    "https://monzo.com/help/us-trends/us-setting-spending-targets/",
    "https://monzo.com/help/us-trends/us-what-is-trends/"
  ],
  "https://monzo.com/i/helping-everyone-belong-at-monzo/": [
    "https://monzo.com/blog/diversity-and-inclusion",
    "https://monzo.com/blog/our-2021-diversity-and-inclusion-report",
    "https://monzo.com/blog/2023/01/31/an-update-on-our-gender-pay-gap-jan-2023",
    "https://monzo.com/blog/2022-diversity-and-inclusion-report"
  ],
  "http://monzo.com/help/opening-an-account": [
    "http://monzo.com/help/opening-an-account/business-account-signup-no-personal-account/",
    "http://monzo.com/help/opening-an-account/how-to-open-a-Monzo-Joint-Account/",
    "http://monzo.com/help/opening-an-account/business-card-delivery-address/",
    "http://monzo.com/help/opening-an-account/eligible-businesses/",
    "http://monzo.com/help/opening-an-account/add-and-manage-members/",
    "http://monzo.com/help/opening-an-account/why-we-ask-for-a-video-when-you-open-a-monzo-account/",
    "http://monzo.com/help/opening-an-account/multiple-business-accounts/",
    "http://monzo.com/help/opening-an-account/business-account-getting-in-after-submitting-application/",
    "http://monzo.com/help/opening-an-account/how-to-open-a-Monzo-Personal-Account/",
    "http://monzo.com/help/opening-an-account/business-account-signup-start-on-web/",
    "http://monzo.com/help/opening-an-account/monzo-business-signup-existing-personal-account/",
    "http://monzo.com/help/opening-an-account/business-banking-cass/",
    "http://monzo.com/help/opening-an-account/using-current-account-for-business/",
    "http://monzo.com/help/opening-an-account/business-verifying-persons-of-significant-control-at-sign-up/"
  ],
  "https://monzo.com/legal/investments/terms-and-conditions": [
    "https://monzo.com/legal/investments/key-features",
    "https://monzo.com/legal/investments/order-execution-policy",
    "https://monzo.com/legal/files/investments/terms-and-conditions-1.0.pdf",
    "https://monzo.com/legal/investments/terms-and-conditions/",
    "https://monzo.com/legal/investments/privacy-notice",
    "https://monzo.com/legal/investments/summary-of-conflicts-of-interest",
    "https://monzo.com/legal/investments/terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/annual-report/2021/": [
    "https://monzo.com/static/docs/monzo-annual-report-2021.pdf",
    "https://monzo.com/static/docs/monzo-pillar-3-2021.pdf"
  ],
  "https://monzo.com/blog/savings-account-guides/how-to-save-money-for-a-house/": [
    "https://monzo.com/i/savingwithmonzo",
    "https://monzo.com/blog/2018/10/04/guarantors-how-and-why/",
    "https://monzo.com/blog/2018/11/14/isas-explained/",
    "https://monzo.com/blog/2018/08/14/sharing-finances"
  ],
  "https://monzo.com/blog/diversity-and-inclusion/2": [
    "https://monzo.com/blog/2017/03/09/diversity-and-inclusion",
    "https://monzo.com/blog/2018/11/20/women-in-finance-update",
    "https://monzo.com/blog/2015/11/16/diversity-debt",
    "https://monzo.com/blog/2018/03/22/diversity-and-inclusion"
  ],
  "https://monzo.com/blog/small-businesses-coronavirus": [
    "https://monzo.com/-deeplinks/business_external_lending/"
  ],
  "https://monzo.com/help/service-quality-results": [
    "https://monzo.com/help/service-quality-results/service-quality-results/"
  ],
  "https://monzo.com/blog/how-we-protect-you/2": [
    "https://monzo.com/blog/2018/11/30/marriott-data-breach",
    "https://monzo.com/blog/2019/06/06/pyramid-schemes-are-illegal",
    "https://monzo.com/blog/2019/03/28/wow-air-collapse",
    "https://monzo.com/blog/scams-to-watch-out-for-when-youre-shopping-online-this-christmas",
    "https://monzo.com/blog/2018/06/28/ticketmaster-breach"
  ],
  "https://monzo.com/help/us-saving-with-monzo": [
    "https://monzo.com/help/us-saving-with-monzo/us-what-are-round-up-payments/",
    "https://monzo.com/help/us-saving-with-monzo/us-what-is-an-emergency-fund-pot/",
    "https://monzo.com/help/us-saving-with-monzo/us-do-pots-earn-interest/",
    "https://monzo.com/help/us-saving-with-monzo/us-what-are-pots/",
    "https://monzo.com/help/us-saving-with-monzo/us-what-happens-if-i-lock-a-pot/"
  ],
  "http://monzo.com/help/your-needs": [
    "http://monzo.com/help/your-needs/mental-health/",
    "http://monzo.com/help/your-needs/illness-support/",
    "http://monzo.com/help/your-needs/accessibility-needs/",
    "http://monzo.com/help/your-needs/mental-health-support/",
    "http://monzo.com/help/your-needs/adhd-support/",
    "http://monzo.com/help/your-needs/unexpected-life-events/",
    "http://monzo.com/help/your-needs/domestic-financial-abuse/",
    "http://monzo.com/help/your-needs/addiction/",
    "http://monzo.com/help/your-needs/accessibility-support/"
  ],
  "http://monzo.com/blog/monzo-hq/6": [
    "http://monzo.com/blog/2017/06/30/tried-and-tested",
    "http://monzo.com/blog/2017/06/07/referral-bonus",
    "http://monzo.com/blog/2017/08/09/complaints-at-monzo",
    "http://monzo.com/blog/2017/07/03/monzo-mixtape",
    "http://monzo.com/blog/2017/11/03/simple-signup-KYC",
    "http://monzo.com/blog/2017/08/22/the-help-search-algorithm",
    "http://monzo.com/blog/2017/06/09/journey-of-a-card",
    "http://monzo.com/blog/2017/08/01/bottom-nav-bar",
    "http://monzo.com/blog/2017/06/23/new-beginnings-at-Monzo",
    "http://monzo.com/blog/2017/09/29/android-engineers"
  ],
  "https://monzo.com/blog/authors/roxy-alexander": [
    "https://monzo.com/blog/pivot-your-business-online",
    "https://monzo.com/blog/current-account-guides/how-long-should-you-keep-bank-statements/",
    "https://monzo.com/blog/authors/roxy-alexander/5",
    "https://monzo.com/blog/savings-account-guides/lump-sum-savings-account/",
    "https://monzo.com/blog/authors/roxy-alexander/3",
    "https://monzo.com/blog/looking-for-a-budgeting-app-supercharge-your-savings-and-budget-better-with",
    "https://monzo.com/blog/how-to-check-if-a-websites-safe-before-you-shop-online",
    "https://monzo.com/blog/authors/roxy-alexander/2",
    "https://monzo.com/blog/current-account-guides/when-did-i-open-my-account/",
    "https://monzo.com/blog/current-account-guides/how-long-does-a-transfer-take/",
    "https://monzo.com/blog/budget-for-your-small-business",
    "https://monzo.com/blog/savings-account-guides/how-to-save-money-for-a-house/"
  ],
  "https://monzo.com/blog/2020/12/08/christmas-shopping-scams-what-to-look-out-for": [
    "https://monzo.com/blog/authors/sheona-vincent-kilbride"
  ],
  "https://monzo.com/blog/how-we-built-year-in-monzo-unlocking-the-data-magic": [
    "https://monzo.com/blog/authors/shervin-rad"
  ],
  "https://monzo.com/blog/5": [
    "https://monzo.com/blog/2023/07/10/how-we-do-product-management-in-the-financial-difficulties-space",
    "https://monzo.com/blog/manage-money-group-holidays",
    "https://monzo.com/blog/7",
    "https://monzo.com/blog/small-budget-wedding-planning-tips",
    "https://monzo.com/blog/6",
    "https://monzo.com/blog/group-holidays-bill-splitting-monzo",
    "https://monzo.com/blog/save-money-wedding-monzo-pots",
    "https://monzo.com/blog/pay-not-to-be-there-challenge-save-money",
    "https://monzo.com/blog/monzo-pots-save-money-healthy-eating",
    "https://monzo.com/blog/debt-budgeting-tips",
    "https://monzo.com/blog/saving-money-last-minute-wedding",
    "https://monzo.com/blog/save-money-festivals-pots"
  ],
  "http://monzo.com/legal/plus/savings-summary": [
    "http://monzo.com/legal/plus/savings-summary/version-1-0/",
    "http://monzo.com/legal/plus/savings-summary/version-1-2/",
    "http://monzo.com/legal/files/plus/monzo-plus-savings-summary-1.2.pdf",
    "http://monzo.com/legal/plus/savings-summary/version-1-1/"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/2": [
    "http://monzo.com/blog/best-reactions-to-year-in-monzo",
    "http://monzo.com/blog/2019/04/10/1p-savings-challenge-monzo",
    "http://monzo.com/blog/reverse-1p-savings-challenge-monzo",
    "http://monzo.com/blog/rainy-day-fund-save-money-automatically-every-time-it-rains",
    "http://monzo.com/blog/1p-savings-challenge-2020",
    "http://monzo.com/blog/year-in-monzo-tweets",
    "http://monzo.com/blog/year-in-monzo-2019",
    "http://monzo.com/blog/take-on-the-spare-change-saving-challenge",
    "http://monzo.com/blog/year-in-monzo-reactions",
    "http://monzo.com/blog/52-week-savings-challenge"
  ],
  "http://monzo.com/blog/authors/monzo-business-team": [
    "http://monzo.com/blog/12-essential-interview-questions-to-help-find-your-next-hire",
    "http://monzo.com/blog/business-banking/what-is-an-invoice",
    "http://monzo.com/blog/business-banking/how-to-get-unpaid-invoices-paid",
    "http://monzo.com/blog/why-getting-paid-on-time-really-really-matters",
    "http://monzo.com/blog/business-banking/a-guide-to-purchase-orders",
    "http://monzo.com/blog/four-essential-monthly-tasks-for-every-small-business-owner",
    "http://monzo.com/blog/what-to-look-for-in-your-first-employee",
    "http://monzo.com/blog/business-banking/gross-profit-net-profit-and-profit-margins-what-are-they-how-to-calculate",
    "http://monzo.com/blog/seven-steps-to-validate-your-business-idea",
    "http://monzo.com/blog/authors/monzo-business-team/2",
    "http://monzo.com/blog/start-planning-your-business-again",
    "http://monzo.com/blog/holding-onto-improved-financial-habits"
  ],
  "https://monzo.com/blog/2018/12/21/android-app-icons": [
    "https://monzo.com/blog/2018/07/03/custom-app-icons/"
  ],
  "https://monzo.com/legal/fscs-information/": [
    "https://monzo.com/legal/fscs-information/version-1-2/",
    "https://monzo.com/legal/fscs-information/version-1-3/",
    "https://monzo.com/legal/files/fscs-information/fscs-information-1.3.pdf",
    "https://monzo.com/legal/fscs-information/version-1-1/"
  ],
  "https://monzo.com/blog/authors/sheri-farsani": [
    "https://monzo.com/blog/support-for-self-employed-coronavirus",
    "https://monzo.com/blog/2020/05/19/monzo-business-for-web-upgrade",
    "https://monzo.com/blog/small-businesses-coronavirus",
    "https://monzo.com/blog/dax-liniere-puzzle-factory-small-businesses-coronavirus",
    "https://monzo.com/blog/authors/sheri-farsani/2",
    "https://monzo.com/blog/2020/06/01/new-business-categories"
  ],
  "https://monzo.com/blog/authors/peggy-mcgregor/2": [
    "https://monzo.com/blog/2019/03/13/sell-stuff-online-with-monzo",
    "https://monzo.com/blog/2019/03/06/budget-irregular-income",
    "https://monzo.com/blog/2019/03/04/using-your-credit-card-on-holiday",
    "https://monzo.com/blog/2019/02/14/saving-money-when-youre-broke",
    "https://monzo.com/blog/2019/02/19/do-you-need-insurance",
    "https://monzo.com/blog/2019/01/22/how-to-manage-money-with-children",
    "https://monzo.com/blog/2019/03/08/getting-a-pay-rise",
    "https://monzo.com/blog/2019/01/22/how-to-save-money-on-train-travel",
    "https://monzo.com/blog/2019/03/03/bad-with-money"
  ],
  "https://monzo.com/blog/2018/06/04/june-update": [
    "https://monzo.com/blog/2018/05/24/no-more-monzo-waiting-list/",
    "https://monzo.com/blog/2018/05/09/new-categories/",
    "https://monzo.com/blog/2018/05/09/sneak-peeks/"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-1-9/": [
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-1.9.pdf",
    "http://monzo.com/legal/audio/jan-2020-terms-conditions-audio.mp3"
  ],
  "https://monzo.com/help/monzo-card-pin/what-is-magstripe": [
    "https://monzo.com/help/monzo-card-pin/monzo-card-accepted-everywhere",
    "https://monzo.com/help/monzo-card-pin/take-out-cash-atm-locator",
    "https://monzo.com/help/monzo-card-pin/how-to-find-your-monzo-card-details",
    "https://monzo.com/help/monzo-card-pin/i-want-second-card"
  ],
  "http://monzo.com/legal/fee-information/version-1-0/": [
    "http://monzo.com/legal/files/fee-information/version-1-0/fee-information.pdf",
    "http://monzo.com/legal/files/fee-information/version-1-0/fee-glossary.pdf"
  ],
  "https://monzo.com/blog/2018/11/08/monzo-transparency": [
    "https://monzo.com/blog/2018/06/13/how-card-payments-work/",
    "https://monzo.com/blog/2018/09/24/one-million-monzo-customers/",
    "https://monzo.com/blog/technology/",
    "https://monzo.com/blog/2018/07/02/publishing-our-2018-annual-report/"
  ],
  "http://monzo.com/blog/how-money-works": [
    "http://monzo.com/blog/current-account-guides/how-much-can-you-withdraw-from-an-atm/",
    "http://monzo.com/blog/2023/04/28/payday-tips-while-treating-yourself",
    "http://monzo.com/blog/managing-money-group-holidays-monzo",
    "http://monzo.com/blog/how-to-save-for-travel-spontaneity-fund",
    "http://monzo.com/blog/festival-money-saving-tips",
    "http://monzo.com/blog/how-money-works/3",
    "http://monzo.com/blog/using-monzo-in-the-uk-after-holiday",
    "http://monzo.com/blog/how-to-save-for-summer",
    "http://monzo.com/blog/how-money-works/14",
    "http://monzo.com/blog/how-to-save-for-a-wedding-using-monzo",
    "http://monzo.com/blog/how-money-works/2"
  ],
  "https://monzo.com/help/your-needs": [
    "https://monzo.com/help/your-needs/accessibility-needs/",
    "https://monzo.com/help/your-needs/addiction/",
    "https://monzo.com/help/your-needs/adhd-support/",
    "https://monzo.com/help/your-needs/mental-health/",
    "https://monzo.com/help/your-needs/illness-support/",
    "https://monzo.com/help/your-needs/mental-health-support/",
    "https://monzo.com/help/your-needs/accessibility-support/",
    "https://monzo.com/help/your-needs/domestic-financial-abuse/",
    "https://monzo.com/help/your-needs/unexpected-life-events/"
  ],
  "https://monzo.com/help/business-getpaid": [
    "https://monzo.com/help/business-getpaid/business-getpaid-paymentlinks-managing/",
    "https://monzo.com/help/business-getpaid/business-getpaid-NFC-web/",
    "https://monzo.com/help/business-getpaid/stripe-pay-out-web/",
    "https://monzo.com/help/business-getpaid/business-getpaid-location-settings/",
    "https://monzo.com/help/business-getpaid/business-getpaid-fees-web/",
    "https://monzo.com/help/business-getpaid/business-getpaid-stripe-signup-web/",
    "https://monzo.com/help/business-getpaid/business-getpaid-paymentlinks-invoices/",
    "https://monzo.com/help/business-getpaid/stripe-accept-contactless-web/",
    "https://monzo.com/help/business-getpaid/business-getpaid-stripe-statement-descriptor-web/",
    "https://monzo.com/help/business-getpaid/reusable-payment-links-web/",
    "https://monzo.com/help/business-getpaid/business-getpaid-stripe-online-card-payments/",
    "https://monzo.com/help/business-getpaid/business-getpaid-easybanktransfers/"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/4": [
    "http://monzo.com/blog/2019/08/28/open-a-bank-account-as-a-student-without-proof-of-address",
    "http://monzo.com/blog/2019/08/09/what-do-i-need-to-set-up-a-monzo-account",
    "http://monzo.com/blog/2019/06/27/trending-spending-east-london",
    "http://monzo.com/blog/2019/07/29/reclaim-mis-sold-ppi-and-get-compensation-free",
    "http://monzo.com/blog/2019/08/05/how-do-i-get-a-monzo-account",
    "http://monzo.com/blog/2019/08/28/how-to-open-a-monzo-account",
    "http://monzo.com/blog/authors/beatrice-borbon/6",
    "http://monzo.com/blog/2019/08/02/taking-cash-out-on-holiday",
    "http://monzo.com/blog/2019/08/09/how-to-get-the-most-out-of-monzo",
    "http://monzo.com/blog/2019/06/27/trending-spending-west-london",
    "http://monzo.com/blog/2019/07/22/monzo-reviews",
    "http://monzo.com/blog/2019/08/30/is-monzo-a-debit-card",
    "http://monzo.com/blog/2019/10/10/how-to-save-money-according-to-people-who-actually-manage-it",
    "http://monzo.com/blog/2019/10/14/39-times-you-absolutely-hated-monzo"
  ],
  "http://monzo.com/blog/lets-talk-business/4": [
    "http://monzo.com/blog/government-support-start-ups-coronavirus",
    "http://monzo.com/blog/2020/04/01/monzo-business-for-web-is-here",
    "http://monzo.com/blog/manage-your-business-finances-during-coronavirus",
    "http://monzo.com/blog/corona-virus-business-help",
    "http://monzo.com/blog/2020/04/03/tips-for-being-extra-safe-on-monzo-business-for-web"
  ],
  "https://monzo.com/blog/weve-teamed-up-with-truelayer-team-up-to-protect-vulnerable-customers": [
    "https://monzo.com/blog/authors/matthew-parish",
    "https://monzo.com/blog/authors/albert-cabre-juan"
  ],
  "http://monzo.com/legal/overdraft-information": [
    "http://monzo.com/legal/files/overdraft-information/overdraft-information-1.2.pdf",
    "http://monzo.com/legal/overdraft-information/version-1-1/",
    "http://monzo.com/legal/overdraft-information/version-1-0/",
    "http://monzo.com/legal/overdraft-information/version-1-2/"
  ],
  "https://monzo.com/blog/3": [
    "https://monzo.com/blog/bereavments-how-we-can-help-if-someone-with-a-monzo-account-dies",
    "https://monzo.com/blog/protect-money-boundaries-maintain-social-life",
    "https://monzo.com/blog/spending-money-to-celebrate-friends-single",
    "https://monzo.com/blog/4",
    "https://monzo.com/blog/2023/09/12/the-skadnetwork-puzzle-using-data-to-solve-for-effective-performance/",
    "https://monzo.com/blog/2023/08/23/tech-leading-as-a-mobile-engineer-at-monzo",
    "https://monzo.com/blog/2023/10/12/protecting-our-platform-from-spikes-in-usage-by-reducing-load-from-the-monzo",
    "https://monzo.com/blog/5",
    "https://monzo.com/blog/relationship-money-communication-tips"
  ],
  "http://monzo.com/blog/2019/01/07/progression": [
    "http://monzo.com/blog/authors/emma-northcott"
  ],
  "https://monzo.com/legal/overdraft-information": [
    "https://monzo.com/legal/overdraft-information/version-1-1/",
    "https://monzo.com/legal/overdraft-information/version-1-0/",
    "https://monzo.com/legal/overdraft-information/version-1-2/",
    "https://monzo.com/legal/files/overdraft-information/overdraft-information-1.2.pdf",
    "https://monzo.com/i/overdraft-calculator/"
  ],
  "https://monzo.com/blog/2018/02/07/upgrade-overdrafts": [
    "https://monzo.com/blog/2018/01/26/upgrade-credit-score/",
    "https://monzo.com/blog/upgrading-explained"
  ],
  "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions": [
    "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/files/plus/monzo-plus-other-accounts-in-monzo-terms-and-conditions/version-1-2.pdf",
    "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-0/",
    "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-2/"
  ],
  "http://monzo.com/blog/building-year-in-monzo-as-told-by-engineering": [
    "http://monzo.com/blog/authors/boris-kach",
    "http://monzo.com/blog/authors/kieran-palmer",
    "http://monzo.com/blog/authors/nuno-mota",
    "http://monzo.com/blog/authors/phill-taylor"
  ],
  "https://monzo.com/blog/authors/tom-blomfield": [
    "https://monzo.com/blog/2018/07/02/the-monzo-mission",
    "https://monzo.com/blog/2016/08/15/launching-the-bank",
    "https://monzo.com/blog/authors/tom-blomfield/2",
    "https://monzo.com/blog/2018/11/30/setting-record-straight",
    "https://monzo.com/blog/2018/06/29/typeform-breach"
  ],
  "https://monzo.com/help/monzo-with-friends": [
    "https://monzo.com/help/monzo-with-friends/block-someone-on-monzo/",
    "https://monzo.com/help/monzo-with-friends/split-bill/",
    "https://monzo.com/help/monzo-with-friends/invite-to-monzo-web/",
    "https://monzo.com/help/monzo-with-friends/monzo-me-how-to/",
    "https://monzo.com/help/monzo-with-friends/existinginvite-waiting-for-bonus/",
    "https://monzo.com/help/monzo-with-friends/split-costs-with-pals-web/",
    "https://monzo.com/help/monzo-with-friends/invite-unavailable/",
    "https://monzo.com/help/monzo-with-friends/newsignup-waiting-for-bonus-web/",
    "https://monzo.com/help/monzo-with-friends/how-to-pay-someone/",
    "https://monzo.com/help/monzo-with-friends/nearby-friends-help/",
    "https://monzo.com/help/monzo-with-friends/what-nearby-friends/",
    "https://monzo.com/help/monzo-with-friends/sending-money-monzo-to-monzo/",
    "https://monzo.com/help/monzo-with-friends/InboundpaymentsviaQR/"
  ],
  "https://monzo.com/blog/2022/05/06/becoming-an-engineering-manager-1-year-in": [
    "https://monzo.com/documents/engineering-manager-framework-v1-0.pdf",
    "https://monzo.com/blog/authors/jon-fry"
  ],
  "https://monzo.com/blog/2017/08/09/complaints-at-monzo": [
    "https://monzo.com/blog/2017/03/05/outage/",
    "https://monzo.com/blog/authors/yehudi-asamoah"
  ],
  "https://monzo.com/blog/2023/08/01/see-into-the-future-of-monzo": [
    "https://monzo.com/blog/authors/dani-shipp"
  ],
  "https://monzo.com/blog/2019/09/26/introducing-salary-sorter-and-bills-pots": [
    "http://monzo.com/i/bills/",
    "http://monzo.com/i/salary-sorter/",
    "https://monzo.com/blog/authors/simon-amor"
  ],
  "https://monzo.com/blog/celebrating-one-year-of-monzo-business": [
    "https://monzo.com/blog/authors/jordan-shwide"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/5": [
    "http://monzo.com/blog/2019/06/05/can-i-get-monzo-if-i-already-have-a-bank-account",
    "http://monzo.com/blog/2019/06/17/monzo-manchester",
    "http://monzo.com/blog/2019/06/27/trending-spending-south-east-london",
    "http://monzo.com/blog/2019/06/11/should-i-start-investing",
    "http://monzo.com/blog/2019/06/04/reverse-1p-savings-challenge-monzo",
    "http://monzo.com/blog/2019/06/27/trending-spending-south-west-london",
    "http://monzo.com/blog/2019/06/11/1p-savings-challenge-monthly-on-payday",
    "http://monzo.com/blog/2019/06/06/pyramid-schemes-are-illegal",
    "http://monzo.com/blog/2019/06/27/trending-spending-central-london",
    "http://monzo.com/blog/2019/06/07/what-is-interest-explained-in-simple-words",
    "http://monzo.com/blog/2019/06/03/ramadan-swear-pot",
    "http://monzo.com/blog/2019/06/04/wedding-guests-debt",
    "http://monzo.com/blog/2019/06/27/trending-spending-north-london"
  ],
  "http://monzo.com/help/web-logging-in-to-the-app": [
    "http://monzo.com/help/web-logging-in-to-the-app/web-remember-email-login-monzo/",
    "http://monzo.com/help/web-logging-in-to-the-app/web-loggin-error-message/",
    "http://monzo.com/help/web-logging-in-to-the-app/web-login-email-not-received/",
    "http://monzo.com/help/web-logging-in-to-the-app/web-locked-out-app/",
    "http://monzo.com/help/web-logging-in-to-the-app/web-login-email-not-working/",
    "http://monzo.com/help/web-logging-in-to-the-app/web-login-icloud-issue/"
  ],
  "https://monzo.com/blog/authors/kate-hollowood/2": [
    "https://monzo.com/blog/2019/04/11/money-in-love-claire-mike",
    "https://monzo.com/blog/2019/01/21/get-fit-on-a-budget",
    "https://monzo.com/blog/2019/02/28/money-in-nick-amy",
    "https://monzo.com/blog/2019/03/22/money-in-love-katherine-christina",
    "https://monzo.com/blog/2019/02/21/money-in-love-jen-dave",
    "https://monzo.com/blog/2019/02/14/money-in-love-frank-charlotte/",
    "https://monzo.com/blog/2019/03/14/money-in-love-lauren-dan",
    "https://monzo.com/blog/2018/12/20/how-to-get-therapy",
    "https://monzo.com/blog/2019/03/29/money-in-love-ash-bobby",
    "https://monzo.com/blog/2019/04/10/living-at-home",
    "https://monzo.com/blog/2019/04/04/money-in-love-nellie-nial",
    "https://monzo.com/blog/2019/01/30/save-money-and-the-planet",
    "https://monzo.com/blog/2019/01/30/cost-of-a-dog"
  ],
  "http://monzo.com/blog/2021/05/13/supporting-our-customers-through-mental-health-problems": [
    "http://monzo.com/blog/authors/natalie-ledward"
  ],
  "http://monzo.com/blog/mental-health/2": [
    "http://monzo.com/blog/2018/05/18/mindfulness-and-wellbeing",
    "http://monzo.com/blog/2018/05/18/voluntary-disclosure",
    "http://monzo.com/blog/2018/05/15/meet-vulnerable-customers-team"
  ],
  "https://monzo.com/blog/monzo-us-blog/": [
    "https://monzo.com/blog/monzo-us-blog/trends",
    "https://monzo.com/blog/monzo-us-blog/joint-accounts-beta",
    "https://monzo.com/blog/monzo-us-blog/emergency-fund-pot",
    "https://monzo.com/us/personal-account",
    "https://monzo.com/blog/monzo-us-blog/pots-envelope-budget",
    "https://monzo.com/blog/monzo-us-blog/auto-salary-sorter",
    "https://monzo.com/blog/monzo-us-blog/pay-from-pots",
    "https://monzo.com/us/careers",
    "https://monzo.com/us/money/see-it-all",
    "https://monzo.com/us/money/spend-confidently",
    "https://monzo.com/us/joint-account",
    "https://monzo.com/blog/monzo-us-blog/pot-goals",
    "https://monzo.com/blog/monzo-us-blog/new-home-screen",
    "https://monzo.com/blog/monzo-us-blog/get-paid-early",
    "https://monzo.com/us",
    "https://monzo.com/us/money/save-more",
    "https://monzo.com/blog/monzo-us-blog/3",
    "https://monzo.com/blog/monzo-us-blog/joint-accounts-get-started",
    "https://monzo.com/blog/monzo-us-blog/credit-card-pot",
    "https://monzo.com/blog/monzo-us-blog/2",
    "https://monzo.com/blog/monzo-us-blog/joint-account-perks",
    "https://monzo.com/blog/monzo-us-blog/trends-category-targets",
    "https://monzo.com/blog/monzo-us-blog"
  ],
  "http://monzo.com/careers": [
    "http://monzo.com/blog/2017/03/10/transparent-by-default/",
    "http://monzo.com/blog/diversity-and-inclusion/",
    "http://monzo.com/community",
    "http://monzo.com/blog/team/",
    "http://monzo.com/docs/candidate-notice.pdf"
  ],
  "http://monzo.com/help/emergencies/monzo-card-lost-damaged-stolen": [
    "http://monzo.com/help/emergencies/lost-phone/",
    "http://monzo.com/help/emergencies/monzo-card-blocked/",
    "http://monzo.com/help/emergencies/",
    "http://monzo.com/help/emergencies/account-blocked/",
    "http://monzo.com/help/emergencies/dont-know-forgot-pin/",
    "http://monzo.com/help/emergencies/report-fraud/"
  ],
  "http://monzo.com/legal/fscs-information/version-1-2/": [
    "http://monzo.com/legal/files/fscs-information/fscs-information-1.2.pdf"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/8": [
    "https://monzo.com/blog/2018/07/05/july-update",
    "https://monzo.com/blog/2018/08/03/august-update",
    "https://monzo.com/blog/2018/09/04/september-update"
  ],
  "https://monzo.com/help/legal-stuff": [
    "https://monzo.com/help/legal-stuff/why-ask-for-tax-residency/",
    "https://monzo.com/help/legal-stuff/legal-complaint-business-account-web/",
    "https://monzo.com/help/legal-stuff/us-subsidiary-gdpr/",
    "https://monzo.com/help/legal-stuff/terms-conditions/",
    "https://monzo.com/help/legal-stuff/information-facebook/",
    "https://monzo.com/help/legal-stuff/make-complaint-web/",
    "https://monzo.com/help/legal-stuff/information-sharing/",
    "https://monzo.com/help/legal-stuff/selfie-during-signup/",
    "https://monzo.com/help/legal-stuff/whistleblowing/",
    "https://monzo.com/help/legal-stuff/data-subject-access-request/",
    "https://monzo.com/help/legal-stuff/tax-residency-not-uk/",
    "https://monzo.com/help/legal-stuff/privacy-policy/",
    "https://monzo.com/help/legal-stuff/writing-to-legal-team/",
    "https://monzo.com/help/legal-stuff/update-tax-residency/"
  ],
  "http://monzo.com/blog/how-money-works/14": [
    "http://monzo.com/blog/how-money-works/13",
    "http://monzo.com/blog/2018/08/09/what-is-a-credit-score",
    "http://monzo.com/blog/2018/08/14/sharing-finances",
    "http://monzo.com/blog/2018/08/10/student-loans-explained",
    "http://monzo.com/blog/2018/06/13/how-card-payments-work",
    "http://monzo.com/blog/2018/08/09/what-kind-of-credit-should-i-use",
    "http://monzo.com/blog/2018/04/30/switching-bank-accounts-overdraft",
    "http://monzo.com/blog/2018/08/09/things-to-consider-before-you-borrow-money",
    "http://monzo.com/blog/2018/08/10/earning-money-explained",
    "http://monzo.com/blog/2018/06/11/lost-or-stolen-card",
    "http://monzo.com/blog/how-money-works/12",
    "http://monzo.com/blog/2018/06/14/what-is-open-banking"
  ],
  "https://monzo.com/blog/fraud": [
    "https://monzo.com/blog/card-scams",
    "https://monzo.com/blog/2020/11/11/paypal-text-scams",
    "https://monzo.com/blog/how-to-spot-a-bank-scam",
    "https://monzo.com/blog/fraud-scam-text-or-email-about-coronavirus-from-the-government",
    "https://monzo.com/blog/fraud/2",
    "https://monzo.com/blog/2020/12/08/christmas-shopping-scams-what-to-look-out-for",
    "https://monzo.com/blog/o2-text-scam",
    "https://monzo.com/blog/hmrc-scam",
    "https://monzo.com/blog/how-to-avoid-scams-about-coronavirus",
    "https://monzo.com/blog/2020/06/23/money-mules",
    "https://monzo.com/blog/2020/05/puppy-and-kitten-deposit-scams-are-on-the-rise"
  ],
  "https://monzo.com/help/monzo-fraud-category": [
    "https://monzo.com/help/monzo-fraud-category/fraud-warnings/",
    "https://monzo.com/help/monzo-fraud-category/purchase-scams/",
    "https://monzo.com/help/monzo-fraud-category/report-scam/",
    "https://monzo.com/help/monzo-fraud-category/investment-scam/",
    "https://monzo.com/help/monzo-fraud-category/product-service-scam/",
    "https://monzo.com/help/monzo-fraud-category/hmrc-scam/",
    "https://monzo.com/help/monzo-fraud-category/report-attempted-scam/",
    "https://monzo.com/help/monzo-fraud-category/friends-and-romance-fraud/",
    "https://monzo.com/help/monzo-fraud-category/money-mules/",
    "https://monzo.com/help/monzo-fraud-category/safe-account-scam/",
    "https://monzo.com/help/monzo-fraud-category/monzo-call-status-web/",
    "https://monzo.com/help/monzo-fraud-category/advance-fee-fraud/",
    "https://monzo.com/help/monzo-fraud-category/police-scam/"
  ],
  "http://monzo.com/blog/authors/roxy-alexander": [
    "http://monzo.com/blog/authors/roxy-alexander/5",
    "http://monzo.com/blog/o2-text-scam",
    "http://monzo.com/blog/savings-account-guides/how-to-save-money-for-a-house/",
    "http://monzo.com/blog/savings-account-guides/lump-sum-savings-account/",
    "http://monzo.com/blog/credit-scores/how-to-improve-your-credit-score",
    "http://monzo.com/blog/looking-for-a-budgeting-app-supercharge-your-savings-and-budget-better-with",
    "http://monzo.com/blog/current-account-guides/when-did-i-open-my-account/",
    "http://monzo.com/blog/authors/roxy-alexander/3",
    "http://monzo.com/blog/police-impersonation-scam-phone-call",
    "http://monzo.com/blog/how-to-check-if-a-websites-safe-before-you-shop-online",
    "http://monzo.com/blog/current-account-guides/how-long-should-you-keep-bank-statements/",
    "http://monzo.com/blog/budget-for-your-small-business",
    "http://monzo.com/blog/authors/roxy-alexander/2",
    "http://monzo.com/blog/pivot-your-business-online",
    "http://monzo.com/blog/current-account-guides/how-long-does-a-transfer-take/"
  ],
  "http://monzo.com/legal/plus/terms-and-conditions/version-1-4/": [
    "http://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.4.pdf"
  ],
  "http://monzo.com/legal/premium/fee-information/version-1-1/": [
    "http://monzo.com/legal/files/premium/monzo-premium-fee-information-1.1.pdf",
    "http://monzo.com/legal/files/fee-information/fee-glossary.pdf"
  ],
  "https://monzo.com/blog/support-gambling-self-exclusion": [
    "https://monzo.com/blog/authors/ts-anil",
    "https://monzo.com/blog/banking-and-regulation"
  ],
  "https://monzo.com/blog/what-to-do-if-you-miss-a-loan-repayment": [
    "https://monzo.com/blog/authors/naji-esiri",
    "https://monzo.com/help/overdrafts-loans/notice-of-sums-in-arrears",
    "https://monzo.com/blog/credit-scores/how-to-improve-your-credit-score"
  ],
  "https://monzo.com/help/us-transferring-money": [
    "https://monzo.com/help/us-transferring-money/us-transferring-money-to-other-bank-accounts/",
    "https://monzo.com/help/us-transferring-money/us-sending-money-to-other-monzo-users/",
    "https://monzo.com/help/us-transferring-money/us-how-long-do-bank-transfers-take/",
    "https://monzo.com/help/us-transferring-money/us-how-do-i-link-my-other-bank-accounts-to-monzo/",
    "https://monzo.com/help/us-transferring-money/us-using-monzo-with-third-party-p2p/",
    "https://monzo.com/help/us-transferring-money/us-can-i-send-a-check-with-monzo/",
    "https://monzo.com/help/us-transferring-money/us-can-monzo-send-or-recieve-wire-transfers/"
  ],
  "https://monzo.com/blog/2017/11/03/simple-signup-KYC/": [
    "https://monzo.com/blog/authors/natasha-vernier",
    "https://monzo.com/blog/2017/10/10/current-accounts-are-coming/",
    "https://monzo.com/features/android-pay/"
  ],
  "https://monzo.com/blog/2018/05/22/big-news-about-small-print/": [
    "https://monzo.com/privacy/",
    "https://monzo.com/cookies/",
    "https://monzo.com/blog/2018/03/27/tone-of-voice/"
  ],
  "https://monzo.com/blog/authors/samantha-davies": [
    "https://monzo.com/blog/2020/11/05/lessons-learnt-scaling-research",
    "https://monzo.com/blog/2018/02/02/user-research",
    "https://monzo.com/blog/2019/02/11/user-research-analysis",
    "https://monzo.com/blog/2018/08/07/understanding-how-young-people-manage-money"
  ],
  "https://monzo.com/blog/2016/08/05/spending-on-mondo-update": [
    "https://monzo.com/blog/2016/07/08/where-in-the-world-has-mondo-been/",
    "https://monzo.com/blog/2016/04/29/mondo-spending/"
  ],
  "http://monzo.com/blog/product-updates/5": [
    "http://monzo.com/blog/2018/12/11/christmas-gift",
    "http://monzo.com/blog/2019/02/04/pay-anyone-link",
    "http://monzo.com/blog/2018/12/13/shared-tabs",
    "http://monzo.com/blog/2019/02/05/savings-pots-paused",
    "http://monzo.com/blog/2019/01/31/flux-monzo-launch",
    "http://monzo.com/blog/2018/11/21/deposit-cash",
    "http://monzo.com/blog/2018/12/10/joint-pots",
    "http://monzo.com/blog/2018/11/22/business-banking",
    "http://monzo.com/blog/2018/11/20/why-we-are-lending",
    "http://monzo.com/blog/2018/12/21/android-app-icons",
    "http://monzo.com/blog/2018/12/13/locked-pots",
    "http://monzo.com/blog/2019/01/29/2019-features",
    "http://monzo.com/blog/2019/02/07/joint-account-switching"
  ],
  "https://monzo.com/blog/how-to-avoid-scams-about-coronavirus": [
    "https://monzo.com/i/coronavirus-faq"
  ],
  "https://monzo.com/blog/2016/06/07/ethical-banking": [
    "https://monzo.com/blog/2015/10/22/the-hidden-costs-of-free-banking/",
    "https://monzo.com/ethics/",
    "https://monzo.com/blog/2016/05/27/transparent-product-roadmap/"
  ],
  "https://monzo.com/blog/2018/02/14/android-pulse": [
    "https://monzo.com/blog/authors/tas-morfopoulos",
    "https://monzo.com/blog/2018/01/11/2018-plans/"
  ],
  "http://monzo.com/blog/2023/03/29/were-helping-you-build-a-safety-net": [
    "http://monzo.com/blog/authors/buki-sule"
  ],
  "https://monzo.com/blog/monzo-us-blog/3": [
    "https://monzo.com/blog/24/01/2020/monzo-us-blog-us-product-roadmap",
    "https://monzo.com/blog/2019/06/13/monzo-us-blog-monzo-usa",
    "https://monzo.com/blog/2020/12/16/monzo-us-blog-personalized-cards-have-landed",
    "https://monzo.com/blog/2020/01/15/monzo-us-blog-pots-us-beta",
    "https://monzo.com/blog/2020/05/15/monzo-us-blog-you-can-now-hide-your-pots-and-change-the-order-theyre-in-us",
    "https://monzo.com/blog/2021/05/18/monzo-us-blog-updating-our-product-roadmap-for-2021",
    "https://monzo.com/blog/2021/08/24/monzo-us-blog-move-money-to-and-from-your-other-accounts-now-in-beta-testing",
    "https://monzo.com/blog/2020/01/14/monzo-us-blog-contactless",
    "https://monzo.com/blog/2021/07/19/meet-richard-a-monzo-us-backend-engineer",
    "https://monzo.com/blog/2020/03/18/monzo-us-blog-coronavirus-update",
    "https://monzo.com/blog/2020/03/11/monzo-us-blog-us-update-waitlist",
    "https://monzo.com/blog/2019/12/30/us-update-2019"
  ],
  "https://monzo.com/blog/lets-talk-business/2": [
    "https://monzo.com/blog/staring-a-business-from-home-what-you-need-to-know",
    "https://monzo.com/blog/celebrating-one-year-of-monzo-business",
    "https://monzo.com/blog/make-your-side-hustle-your-main-hustle",
    "https://monzo.com/blog/young-family-start-a-new-business",
    "https://monzo.com/blog/2021/05/12/new-improved-invoices",
    "https://monzo.com/blog/how-to-support-local-businesses-coming-out-of-lockdown",
    "https://monzo.com/blog/good-start-new-tax-year"
  ],
  "https://monzo.com/blog/2018/04/27/introducing-monzo-labs": [
    "https://monzo.com/blog/2017/10/17/atm-limits-announcement/",
    "https://monzo.com/blog/2018/03/01/marketplace-beta/"
  ],
  "https://monzo.com/blog/2018/07/13/joints-accounts-in-labs": [
    "https://monzo.com/blog/authors/jordan-fish"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-1/": [
    "http://monzo.com/legal/files/premium/monzo-premium-assurant-terms-and-conditions.pdf",
    "http://monzo.com/legal/files/premium/monzo-premium-axa-terms-and-conditions.pdf"
  ],
  "http://monzo.com/blog/2019/08/01/my-ex-racked-up-thousands-of-pounds-of-debt-in-my-name": [
    "http://monzo.com/blog/money-in-love"
  ],
  "https://monzo.com/blog/savings-account-guides/": [
    "https://monzo.com/blog/2019/11/15/saving-for-your-grandchildren",
    "https://monzo.com/blog/2019/08/07/what-is-a-regular-savings-account",
    "https://monzo.com/blog/2018/09/11/student-budgeting-tips",
    "https://monzo.com/blog/2019/10/05/savings-account",
    "https://monzo.com/blog/2019/09/18/tax-free-savings-allowance",
    "https://monzo.com/blog/2019/11/14/how-much-money-should-i-save",
    "https://monzo.com/blog/cost-of-a-baby/"
  ],
  "http://monzo.com/blog/authors/natalie-gil/5": [
    "http://monzo.com/blog/buy-now-pay-later-schemes",
    "http://monzo.com/blog/i-was-out-of-work-for-18-months",
    "http://monzo.com/blog/monzo-pots-robs-story",
    "http://monzo.com/blog/my-income-halved-accountant-turned-freelance-yoga-teacher",
    "http://monzo.com/blog/i-paid-off-gbp5k-debt-and-saved-gbp8k-for-my-dream-home-deposit",
    "http://monzo.com/blog/monzo-pots-amys-story",
    "http://monzo.com/blog/digital-cash-stuffing-with-monzo-pots-save-money",
    "http://monzo.com/blog/the-extra-cost-of-being-a-woman"
  ],
  "https://monzo.com/blog/how-money-works/14": [
    "https://monzo.com/blog/2018/04/30/switching-bank-accounts-overdraft",
    "https://monzo.com/blog/2018/08/09/what-is-a-credit-score",
    "https://monzo.com/blog/2018/08/09/what-kind-of-credit-should-i-use",
    "https://monzo.com/blog/how-money-works/12",
    "https://monzo.com/blog/how-money-works/13",
    "https://monzo.com/blog/2018/06/11/lost-or-stolen-card",
    "https://monzo.com/blog/2018/06/14/what-is-open-banking",
    "https://monzo.com/blog/2018/08/10/earning-money-explained"
  ],
  "https://monzo.com/blog/authors/kate-hollowood": [
    "https://monzo.com/blog/2019/08/14/money-in-love-will-and-max",
    "https://monzo.com/blog/how-monzos-gambling-block-helped-me-beat-my-gambling-addiction-and-pay-off-my-debt",
    "https://monzo.com/blog/2019/05/08/money-in-love-rosie-alex",
    "https://monzo.com/blog/2019/05/22/daily-saving-with-monzo",
    "https://monzo.com/blog/authors/kate-hollowood/3",
    "https://monzo.com/blog/2019/07/18/money-in-love-fuminori-and-jake",
    "https://monzo.com/blog/2019/08/01/my-ex-racked-up-thousands-of-pounds-of-debt-in-my-name",
    "https://monzo.com/blog/authors/kate-hollowood/2",
    "https://monzo.com/blog/2019/04/25/money-in-love-rob-vic",
    "https://monzo.com/blog/2019/04/18/money-in-love-sian-matt",
    "https://monzo.com/blog/2019/08/22/money-in-love-craig-and-nichola",
    "https://monzo.com/blog/2019/09/03/money-in-love-michael-and-dan",
    "https://monzo.com/blog/2019/07/09/money-in-love-russell-and-richard"
  ],
  "https://monzo.com/help/switching-to-monzo": [
    "https://monzo.com/help/switching-to-monzo/overdraft-cass/",
    "https://monzo.com/help/switching-to-monzo/cass-cancel-how-to/",
    "https://monzo.com/help/switching-to-monzo/reasons-to-switch/",
    "https://monzo.com/help/switching-to-monzo/cass-status-update/",
    "https://monzo.com/help/switching-to-monzo/cass-full-switch-what/",
    "https://monzo.com/help/switching-to-monzo/cass-what/"
  ],
  "https://monzo.com/blog/youll-be-able-to-make-contactless-payments-up-to-gbp100-to-make-paying-more": [
    "https://monzo.com/blog/authors/milo-thompson"
  ],
  "https://monzo.com/legal/investments/key-features": [
    "https://monzo.com/legal/investments/key-features/",
    "https://monzo.com/legal/files/investments/key-features-1.0.pdf",
    "https://monzo.com/legal/investments/key-features/version-1-0/"
  ],
  "https://monzo.com/blog/product-updates/4": [
    "https://monzo.com/blog/2019/02/11/business-banking-alpha",
    "https://monzo.com/blog/2019/07/08/accounting-tools-monzo-business-account",
    "https://monzo.com/blog/2019/05/02/shawbrook-savings-pots",
    "https://monzo.com/blog/product-updates/6",
    "https://monzo.com/blog/2019/04/23/introducing-monzo-plus",
    "https://monzo.com/blog/2019/07/18/remortgaging-test",
    "https://monzo.com/blog/2019/07/04/monzo-plus-july-update",
    "https://monzo.com/blog/2019/07/10/the-evolution-of-monzo-chat",
    "https://monzo.com/blog/2019/04/26/savings-marketplace",
    "https://monzo.com/blog/2019/05/15/monzo-plus-the-road-ahead",
    "https://monzo.com/blog/2019/03/18/custom-pot-images",
    "https://monzo.com/blog/2019/04/04/launching-isas",
    "https://monzo.com/blog/2019/04/11/custom-pot-images-android"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/3": [
    "http://monzo.com/blog/2018/06/05/monzo-exchange-rate",
    "http://monzo.com/blog/2019/10/24/15-features-thatll-turn-monzo-sceptics-into-monzo-obsessives",
    "http://monzo.com/blog/authors/beatrice-borbon/5",
    "http://monzo.com/blog/how-to-open-a-monzo-account",
    "http://monzo.com/blog/2019/11/11/10-monzo-features-your-old-bank-doesnt-have-yet",
    "http://monzo.com/blog/2019/10/24/9-monzo-features-and-why-you-need-them",
    "http://monzo.com/blog/10-magical-monzo-features",
    "http://monzo.com/blog/monzo-is-the-uks-most-recommended-brand",
    "http://monzo.com/blog/authors/beatrice-borbon/4",
    "http://monzo.com/blog/2019/10/23/9-questions-to-ask-yourself-before-you-borrow-money",
    "http://monzo.com/blog/why-having-more-than-one-bank-account-might-be-useful",
    "http://monzo.com/blog/2019/10/11/10-things-to-say-to-your-friend-who-still-refuses-to-get-monzo",
    "http://monzo.com/blog/10-times-you-hated-monzo",
    "http://monzo.com/blog/2019/10/11/4-ways-monzo-makes-payday-even-better",
    "http://monzo.com/blog/2019/10/28/more-people-are-switching-to-monzo-and-away-from-legacy-banks"
  ],
  "https://monzo.com/help/us-pots/us-credit-card-pot-supported/": [
    "https://monzo.com/-deeplinks/feedback"
  ],
  "http://monzo.com/blog/monzo-us-blog/": [
    "http://monzo.com/us/careers",
    "http://monzo.com/blog/monzo-us-blog/get-paid-early",
    "http://monzo.com/blog/monzo-us-blog/3",
    "http://monzo.com/blog/monzo-us-blog/trends-category-targets",
    "http://monzo.com/blog/monzo-us-blog",
    "http://monzo.com/us/money/spend-confidently",
    "http://monzo.com/us/personal-account",
    "http://monzo.com/blog/monzo-us-blog/auto-salary-sorter",
    "http://monzo.com/blog/monzo-us-blog/emergency-fund-pot",
    "http://monzo.com/blog/monzo-us-blog/joint-accounts-beta",
    "http://monzo.com/us/joint-account",
    "http://monzo.com/blog/monzo-us-blog/new-home-screen",
    "http://monzo.com/us/money/save-more",
    "http://monzo.com/blog/monzo-us-blog/pot-goals",
    "http://monzo.com/us/money/see-it-all",
    "http://monzo.com/blog/monzo-us-blog/2",
    "http://monzo.com/blog/monzo-us-blog/pots-envelope-budget",
    "http://monzo.com/us",
    "http://monzo.com/blog/monzo-us-blog/joint-account-perks",
    "http://monzo.com/blog/monzo-us-blog/pay-from-pots",
    "http://monzo.com/blog/monzo-us-blog/credit-card-pot",
    "http://monzo.com/blog/monzo-us-blog/trends",
    "http://monzo.com/blog/monzo-us-blog/joint-accounts-get-started"
  ],
  "https://monzo.com/us/careers/": [
    "https://monzo.com/blog/our-2021-diversity-and-inclusion-report/",
    "https://monzo.com/blog/monzo-us-blog/first-six-months-android-engineer-backend-engineer/",
    "https://monzo.com/blog/monzo-us-blog/supporting-mental-health-and-wellbeing/",
    "https://monzo.com/blog/monzo-us-blog/working-to-build-more-empathetic-workplace/",
    "https://monzo.com/blog/monzo-us-blog/interviewing-at-monzo/"
  ],
  "http://monzo.com/blog/product-updates/10": [
    "http://monzo.com/blog/2017/03/28/i-forgot-my-pin",
    "http://monzo.com/blog/2017/02/24/monzome-on-android",
    "http://monzo.com/blog/2017/09/25/android-progress-update",
    "http://monzo.com/blog/2017/08/23/preview-distance-signup",
    "http://monzo.com/blog/2017/05/08/android-pay-on-monzome",
    "http://monzo.com/blog/2017/08/07/current-account-android",
    "http://monzo.com/blog/2017/06/13/identity-verification-upgrade",
    "http://monzo.com/blog/2017/02/09/launching-settings-android",
    "http://monzo.com/blog/2017/01/16/app-shortcuts-android",
    "http://monzo.com/blog/2017/04/05/profile-pictures-update",
    "http://monzo.com/blog/2017/03/31/budget-targets",
    "http://monzo.com/blog/2017/05/22/top-up-with-android-pay",
    "http://monzo.com/blog/2017/04/11/search-on-android"
  ],
  "https://monzo.com/blog/2019/06/13/monzo-us-blog-monzo-usa": [
    "https://monzo.com/blog/2019/05/20/two-million/",
    "https://monzo.com/usa",
    "https://monzo.com/blog/2018/11/01/savings-pots/"
  ],
  "https://monzo.com/blog/monzo-hq/2": [
    "https://monzo.com/blog/2019/10/18/watchdog-response",
    "https://monzo.com/blog/2019/06/27/monzo-2019-annual-report",
    "https://monzo.com/blog/cash-withdrawals-in-the-european-economic-area-eea-are-now-free",
    "https://monzo.com/blog/monzo-in-2020-looking-back",
    "https://monzo.com/blog/2019/06/20/why-bank-transfers-failed-on-30th-may-2019"
  ],
  "https://monzo.com/help/travelling/fees-charges-abroad": [
    "https://monzo.com/help/monzo-card-pin/what-is-magstripe",
    "https://monzo.com/features/joint-accounts/",
    "https://monzo.com/help/travelling/web-my-limits",
    "https://monzo.com/help/travelling/converting-balance-to-another-currency",
    "https://monzo.com/help/travelling/monzo-card-accepted-everywhere",
    "https://monzo.com/help/travelling/reasons-travel-is-better-with-monzo",
    "https://monzo.com/isa/"
  ],
  "https://monzo.com/blog/2017/03/09/emma-profile": [
    "https://monzo.com/blog/2016/09/29/android/",
    "https://monzo.com/blog/2017/02/09/launching-settings-android/",
    "https://monzo.com/blog/authors/zainab-khan",
    "https://monzo.com/blog/2016/12/06/payments-android"
  ],
  "https://monzo.com/help/emergencies": [
    "https://monzo.com/help/emergencies/take-out-cash-atm-locator/",
    "https://monzo.com/help/emergencies/found-monzo-card-web/",
    "https://monzo.com/help/emergencies/monzo-card-lost-damaged-stolen/"
  ],
  "http://monzo.com/help/cashback": [
    "http://monzo.com/help/cashback/cashback-data/",
    "http://monzo.com/help/cashback/marketing-permissions/",
    "http://monzo.com/help/cashback/cashback-offers/",
    "http://monzo.com/help/cashback/cashback-refunds-disputes/",
    "http://monzo.com/help/cashback/cashback-feedback/",
    "http://monzo.com/help/cashback/cashback-terms-conditions/",
    "http://monzo.com/help/cashback/cashback-opt-out/",
    "http://monzo.com/help/cashback/what-is-cashback/"
  ],
  "https://monzo.com/blog/business-banking/a-guide-to-purchase-orders": [
    "https://monzo.com/blog/business-banking/what-is-cashflow",
    "https://monzo.com/blog/business-banking/how-to-write-a-business-plan"
  ],
  "https://monzo.com/blog/2022-02-24/scaling-our-on-call-process": [
    "https://monzo.com/blog/authors/luke-briscoe"
  ],
  "http://monzo.com/help/us-travel-with-Monzo": [
    "http://monzo.com/help/us-travel-with-Monzo/us-using-your-monzo-card-at-an-atm/",
    "http://monzo.com/help/us-travel-with-Monzo/us-using-your-monzo-card-outside-the-us/"
  ],
  "https://monzo.com/blog/authors/natalie-gil/3": [
    "https://monzo.com/blog/monzo-pots-for-pets-cats",
    "https://monzo.com/blog/2023/05/04/i-only-got-monzo-for-holidays-now-i-use-it-for-everything-and-have-saved",
    "https://monzo.com/blog/financially-supporting-family-bank-of-mum-and-dad",
    "https://monzo.com/blog/2023/03/23/no-spend-year-challenge",
    "https://monzo.com/blog/managing-money-with-pets",
    "https://monzo.com/blog/save-money-for-eurovision-monzo-pots",
    "https://monzo.com/blog/spending-money-on-pets",
    "https://monzo.com/blog/spontaneity-fund-travel-saving-tips",
    "https://monzo.com/blog/2023/03/24/how-to-do-a-no-spend-challenge"
  ],
  "http://monzo.com/us/joint-account/": [
    "http://monzo.com/blog/us-joint-accounts"
  ],
  "https://monzo.com/blog/2017/05/15/intro-to-cops/": [
    "https://monzo.com/blog/authors/emma-northcott"
  ],
  "https://monzo.com/blog/2021/11/29/get-paid-with-apple-pay-and-google-pay": [
    "https://monzo.com/blog/authors/maja-bayyoud"
  ],
  "http://monzo.com/help/us-using-your-card/us-new-account-add-to-apple-pay-general/": [
    "http://monzo.com/help/us-using-your-card/"
  ],
  "https://monzo.com/blog/2018/08/30/manage-your-bills/": [
    "https://monzo.com/blog/2018/06/14/bill-tracker/",
    "https://monzo.com/blog/2018/08/15/manage-your-bills-with-monzo/"
  ],
  "https://monzo.com/help/business-accounts-signup/business-verifying-persons-of-significant-control": [
    "https://monzo.com/i/shared-tabs-more/",
    "https://monzo.com/i/coronavirus-update/",
    "https://monzo.com/i/supporting-all-our-customers/",
    "https://monzo.com/i/accessibility/",
    "https://monzo.com/help/business-accounts-signup/monzo-business-signup-existing-personal-account",
    "https://monzo.com/help/business-accounts-signup/business-account-signup-start-on-web",
    "https://monzo.com/i/switch/",
    "https://monzo.com/help/business-accounts-signup/eligible-businesses",
    "https://monzo.com/i/pots/",
    "https://monzo.com/help/business-accounts-signup/business-account-signup-no-personal-account",
    "https://monzo.com/i/savingwithmonzo/"
  ],
  "https://monzo.com/blog/moving-monzo-com": [
    "http://monzo.com",
    "https://monzo.com/blog/authors/tris-tolliday"
  ],
  "https://monzo.com/blog/2021/11/23/monzo-flex-ways-to-pay-later": [
    "https://monzo.com/blog/authors/adam-little",
    "https://monzo.com/help/monzo-flex/monzo-flex-and-section-75-claims"
  ],
  "https://monzo.com/blog/2019/01/29/2019-features": [
    "https://monzo.com/blog/authors/lindsey-jayne",
    "https://monzo.com/blog/2018/11/20/why-we-are-lending/"
  ],
  "https://monzo.com/blog/small-change-manage": [
    "https://monzo.com/-deeplinks/smallchange-scheduledpayments",
    "https://monzo.com/blog/small-change-save",
    "https://monzo.com/-deeplinks/trends-personal-uk-targets",
    "https://monzo.com/-deeplinks/smallchange-pots",
    "https://monzo.com/blog/small-change"
  ],
  "http://monzo.com/blog/current-account-guides/how-much-can-you-withdraw-from-an-atm/": [
    "http://monzo.com/blog/authors/georgia-johnson"
  ],
  "https://monzo.com/help/us": [
    "https://monzo.com/help/us-safety-and-security",
    "https://monzo.com/help/us-trends",
    "https://monzo.com/help/us-adding-money",
    "https://monzo.com/help/us-general-info",
    "https://monzo.com/help/us-travel-with-Monzo",
    "https://monzo.com/help/us-using-your-card",
    "https://monzo.com/help/us-updating-your-profile",
    "https://monzo.com/help/us-budgeting-with-monzo",
    "https://monzo.com/help/us-transferring-money",
    "https://monzo.com/help/us-signing-up",
    "https://monzo.com/help/us-joint-accounts",
    "https://monzo.com/help/us-saving-with-monzo",
    "https://monzo.com/help/us-pots",
    "https://monzo.com/help/us-monzo-with-friends"
  ],
  "https://monzo.com/help/monzo-premium/qover-travel-insurance-pre-existing/": [
    "https://monzo.com/help/monzo-premium/",
    "https://monzo.com/help/monzo-premium/premium-travel-covered-web/"
  ],
  "http://monzo.com/help/payments-paying-monzobusiness": [
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-paynow/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-no-account/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-protection/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-paymentlinks/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-easy-bank-transfer/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-email/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-receipt/",
    "http://monzo.com/help/payments-paying-monzobusiness/paying-business-fees/"
  ],
  "https://monzo.com/careers": [
    "https://monzo.com/docs/candidate-notice.pdf",
    "https://monzo.com/blog/team/",
    "https://monzo.com/blog/diversity-and-inclusion/",
    "https://monzo.com/blog/2017/03/10/transparent-by-default/",
    "https://monzo.com/community"
  ],
  "https://monzo.com/blog/2019/06/05/can-i-get-monzo-if-i-already-have-a-bank-account": [
    "https://monzo.com/blog/2018/04/25/switch-to-monzo/"
  ],
  "https://monzo.com/blog/9": [
    "https://monzo.com/blog/11",
    "https://monzo.com/blog/2022/12/28/whats-so-unique-about-design-and-research-at-monzo"
  ],
  "https://monzo.com/help/business-accounts-signup/": [
    "https://monzo.com/help/business-accounts-signup/monzo-business-signup-existing-personal-account/",
    "https://monzo.com/help/business-accounts-signup/add-and-manage-members/",
    "https://monzo.com/help/business-accounts-signup/business-account-signup-no-personal-account/",
    "https://monzo.com/help/business-accounts-signup/eligible-businesses/",
    "https://monzo.com/help/business-accounts-signup/business-verifying-persons-of-significant-control-at-sign-up/",
    "https://monzo.com/help/business-accounts-signup/business-account-signup-start-on-web/",
    "https://monzo.com/help/business-accounts-signup/business-card-delivery-address/",
    "https://monzo.com/help/business-accounts-signup/business-banking-cass/",
    "https://monzo.com/help/business-accounts-signup/multiple-business-accounts/",
    "https://monzo.com/help/business-accounts-signup/business-account-getting-in-after-submitting-application/",
    "https://monzo.com/help/business-accounts-signup/using-current-account-for-business/"
  ],
  "https://monzo.com/legal/fscs-information/version-1-1/": [
    "https://monzo.com/legal/files/fscs-information/fscs-information-1.1.pdf"
  ],
  "http://monzo.com/blog/authors/roxy-alexander/4": [
    "http://monzo.com/blog/2019/09/10/reasons-not-to-get-monzo",
    "http://monzo.com/blog/2019/10/05/savings-account",
    "http://monzo.com/blog/2019/10/09/how-to-save-money-on-food",
    "http://monzo.com/blog/2019/10/29/winter-savings-challenge",
    "http://monzo.com/blog/2019/09/30/what-is-locktober",
    "http://monzo.com/blog/2019/10/22/how-to-save-money-in-london",
    "http://monzo.com/blog/2019/10/24/how-to-save-money-on-your-wedding",
    "http://monzo.com/blog/2019/10/03/joint-account-death",
    "http://monzo.com/blog/2019/10/10/joint-account-tax",
    "http://monzo.com/blog/2019/10/02/joint-bank-account"
  ],
  "https://monzo.com/blog/2021/10/14/an-introduction-to-monzos-data-stack": [
    "https://monzo.com/blog/authors/luke-singham"
  ],
  "http://monzo.com/blog/receive-international-payments": [
    "http://monzo.com/blog/authors/kushal-babla",
    "http://monzo.com/blog/product-updates"
  ],
  "https://monzo.com/blog/11-reasons-to-get-monzo-business": [
    "https://monzo.com/i/business/features/24-7-customer-support",
    "https://monzo.com/blog/2018/06/07/is-monzo-a-bank",
    "https://monzo.com/i/business/features/integrated-accounting",
    "https://monzo.com/i/business/business-switch"
  ],
  "http://monzo.com/blog/how-money-works/12": [
    "http://monzo.com/blog/2018/11/23/how-to-save-for-a-house-deposit",
    "http://monzo.com/blog/2018/11/23/what-is-crowdfunding",
    "http://monzo.com/blog/2018/12/18/your-rights-flight-delays-cancellations",
    "http://monzo.com/blog/2019/01/18/how-to-budget",
    "http://monzo.com/blog/2018/11/27/how-to-save-for-retirement",
    "http://monzo.com/blog/2018/11/14/isas-explained",
    "http://monzo.com/blog/2018/12/14/your-rights-returning-goods",
    "http://monzo.com/blog/how-money-works/11",
    "http://monzo.com/blog/how-money-works/10",
    "http://monzo.com/blog/2018/12/12/christmas-shopping-sales",
    "http://monzo.com/blog/2018/12/06/find-your-saving-style",
    "http://monzo.com/blog/2018/11/28/how-to-save-for-a-wedding"
  ],
  "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions": [
    "https://monzo.com/legal/files/decisions-using-open-banking/terms-and-conditions/version-1-2.pdf",
    "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-0/",
    "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-2/"
  ],
  "http://monzo.com/blog/tech-ops-hiring-monzo": [
    "http://monzo.com/blog/authors/denise-wong"
  ],
  "http://monzo.com/blog/authors/tristan-thomas": [
    "http://monzo.com/blog/2018/05/29/getting-bank-account-immigrant",
    "http://monzo.com/blog/2018/05/30/getting-bank-account-refugee",
    "http://monzo.com/blog/2018/10/31/big-news",
    "http://monzo.com/blog/2018/01/18/future-of-prepaid",
    "http://monzo.com/blog/2019/05/30/faster-payments-issue",
    "http://monzo.com/blog/authors/tristan-thomas/2",
    "http://monzo.com/blog/2017/11/23/2017-todo-list",
    "http://monzo.com/blog/2018/04/27/introducing-monzo-labs",
    "http://monzo.com/blog/2018/07/10/making-quarterly-goals-public",
    "http://monzo.com/blog/2018/05/29/financial-inclusion",
    "http://monzo.com/blog/2018/01/10/golden-tickets-are-back",
    "http://monzo.com/blog/authors/tristan-thomas/3"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-5/": [
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.5.pdf"
  ],
  "https://monzo.com/business-banking/features/": [
    "https://monzo.com/business-banking/features/multi-user-access/",
    "https://monzo.com/business-banking/features/integrated-accounting/",
    "https://monzo.com/business-banking/features/mobile-and-web-access/",
    "https://monzo.com/business-banking/features/tax-pots/",
    "https://monzo.com/business-banking/get-paid/",
    "https://monzo.com/business-banking/features/24-7-customer-support/"
  ],
  "https://monzo.com/blog/2020/05/puppy-and-kitten-deposit-scams-are-on-the-rise": [
    "https://monzo.com/i/fraud",
    "https://monzo.com/blog/authors/ofelia-botella"
  ],
  "https://monzo.com/blog/travel-scams-protect-yourself": [
    "https://monzo.com/help/monzo-card-pin/freezing-defrosting",
    "https://monzo.com/help/emergencies/report-fraud"
  ],
  "http://monzo.com/blog/women-in-finance-charter-update": [
    "http://monzo.com/blog/authors/jacquetta-bridge"
  ],
  "https://monzo.com/blog/2019/04/01/big-issue-monzo-pay-it-forward": [
    "https://monzo.com/blog/2018/06/01/getting-bank-account-no-fixed-address/"
  ],
  "http://monzo.com/legal/fee-information": [
    "http://monzo.com/legal/fee-information/version-1-2/",
    "http://monzo.com/legal/files/fee-information/version-1-6/fee-information-1.6.pdf",
    "http://monzo.com/legal/fee-information/",
    "http://monzo.com/legal/fee-information/version-1-3/",
    "http://monzo.com/legal/fee-information/version-1-4/",
    "http://monzo.com/legal/fee-information/version-1-0/",
    "http://monzo.com/legal/fee-information/version-1-5/",
    "http://monzo.com/legal/fee-information/version-1-6/",
    "http://monzo.com/legal/fee-information/version-1-1/"
  ],
  "https://monzo.com/blog/authors/roxy-alexander/3": [
    "https://monzo.com/blog/2019/11/15/how-to-save-money-on-car-insurance",
    "https://monzo.com/blog/2019/11/07-save-money-for-your-kids",
    "https://monzo.com/blog/saving-tips-from-year-in-monzo",
    "https://monzo.com/blog/29-ways-save-money-household-bills/"
  ],
  "https://monzo.com/pots/": [
    "https://monzo.com/-deeplinks/create_pot/",
    "https://monzo.com/blog/2023/03/29/were-helping-you-build-a-safety-net",
    "https://monzo.com/blog/pots",
    "https://monzo.com/blog/1p-savings-challenge-2021",
    "https://monzo.com/blog/introducing-feed-and-manage",
    "https://monzo.com/blog/instant-access-savings-are-here",
    "https://monzo.com/blog/spenders-guide-to-saving-money",
    "https://monzo.com/blog/52-week-savings-challenge-2021",
    "https://monzo.com/-deeplinks/create_pot"
  ],
  "https://monzo.com/i/supporting-customers": [
    "https://monzo.com/blog/monzo-101",
    "https://monzo.com/i/share-with-us",
    "https://monzo.com/help/payments-getting-started/cash-deposit-how-to",
    "https://monzo.com/i/money-worries/",
    "https://monzo.com/blog/2018/11/21/deposit-cash"
  ],
  "http://monzo.com/accessibility": [
    "http://monzo.com/i/our-social-programme/",
    "http://monzo.com/i/supporting-customers"
  ],
  "http://monzo.com/blog/monzo-parents": [
    "http://monzo.com/blog/authors/ria-patel"
  ],
  "http://monzo.com/blog/2020/06/27/pride-remembering-our-history-and-looking-towards-the-fight-ahead": [
    "http://monzo.com/blog/authors/brad-corrigan",
    "http://monzo.com/blog/team"
  ],
  "https://monzo.com/blog/2022/02/17/my-first-6-months-at-monzo-as-a-backend-engineer": [
    "https://monzo.com/blog/authors/bee-skerritt"
  ],
  "https://monzo.com/blog/2018/08/22/end-of-the-big-list": [
    "https://monzo.com/blog/2018/08/17/pin-lock-update/",
    "https://monzo.com/blog/2018/05/25/improving-merchant-acceptance/"
  ],
  "http://monzo.com/blog/lets-talk-business/2": [
    "http://monzo.com/blog/good-start-new-tax-year",
    "http://monzo.com/blog/young-family-start-a-new-business",
    "http://monzo.com/blog/how-to-support-local-businesses-coming-out-of-lockdown",
    "http://monzo.com/blog/make-your-side-hustle-your-main-hustle",
    "http://monzo.com/blog/2021/05/12/new-improved-invoices",
    "http://monzo.com/blog/celebrating-one-year-of-monzo-business",
    "http://monzo.com/blog/staring-a-business-from-home-what-you-need-to-know"
  ],
  "https://monzo.com/help/overdrafts-loans/Managing-your-money/": [
    "https://monzo.com/blog/2021/01/21/financial-education-spending-and-budgeting",
    "https://monzo.com/blog/how-to-get-out-of-your-overdraft"
  ],
  "https://monzo.com/blog/2019/02/11/internal-product-design": [
    "https://monzo.com/blog/authors/anthea-jackson",
    "https://monzo.com/blog/2018/07/30/scaling-our-customer-support/"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-2-3/": [
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.3.pdf",
    "https://monzo.com/legal/audio/apr-2023-terms-conditions-audio-2-3.mp3",
    "https://monzo.com/legal/fscs-information",
    "https://monzo.com/help/account-and-profile/accountlimits"
  ],
  "https://monzo.com/invest/": [
    "https://monzo.com/blog/2018/12/05/crowdfunding-closes/"
  ],
  "https://monzo.com/blog/dont-get-monzo": [
    "https://monzo.com/i/refer-a-friend/"
  ],
  "https://monzo.com/legal/fee-information": [
    "https://monzo.com/legal/fee-information/version-1-0/",
    "https://monzo.com/legal/fee-information/version-1-6/",
    "https://monzo.com/legal/fee-information/version-1-4/",
    "https://monzo.com/legal/fee-information/version-1-1/",
    "https://monzo.com/legal/fee-information/version-1-2/",
    "https://monzo.com/legal/files/fee-information/fee-glossary.pdf",
    "https://monzo.com/legal/files/fee-information/version-1-6/fee-information-1.6.pdf",
    "https://monzo.com/legal/fee-information/version-1-5/",
    "https://monzo.com/legal/fee-information/version-1-3/"
  ],
  "http://monzo.com/blog/2016/03/17/beta": [
    "http://monzo.com/blog/2015/10/30/we-are-ready/"
  ],
  "http://monzo.com/blog/4": [
    "http://monzo.com/blog/2023/08/10/my-path-from-intern-to-staff-engineer-at-monzo",
    "http://monzo.com/blog/2023/08/03/how-we-launch-new-products-at-monzo",
    "http://monzo.com/blog/6",
    "http://monzo.com/blog/2023/07/18/five-lessons-from-my-first-year-at-monzo"
  ],
  "https://monzo.com/legal/referral-scheme/terms-and-conditions/version-1-0/": [
    "https://monzo.com/legal/privacy-policy/",
    "https://monzo.com/legal/files/referral-scheme/monzo-referral-scheme-1.0.pdf"
  ],
  "https://monzo.com/blog/monzo-us-blog/2": [
    "https://monzo.com/blog/monzo-us-blog/manage-multiple-bank-accounts",
    "https://monzo.com/blog/2021/11/11/monzo-us-blog-meet-nathan-our-head-of-engineering",
    "https://monzo.com/blog/monzo-us-blog/first-six-months-android-engineer-backend-engineer",
    "https://monzo.com/blog/2022/04/05/monzo-us-blog-2022-survey-insights",
    "https://monzo.com/blog/monzo-us-blog/scheduled-payments",
    "https://monzo.com/blog/monzo-us-blog/new-year-new-budget",
    "https://monzo.com/blog/2022/02/01/monzo-us-blog-monzo-moves-from-beta-to-public-launch-in-the-us",
    "https://monzo.com/blog/monzo-us-blog/interviewing-at-monzo",
    "https://monzo.com/blog/2021/11/15/monzo-us-blog-october-virtual-community-event-recap",
    "https://monzo.com/blog/monzo-us-blog/supporting-mental-health-and-wellbeing",
    "https://monzo.com/blog/monzo-us-blog/tip-tracker"
  ],
  "https://monzo.com/blog/2021/09/15/how-we-measure-software-excellence": [
    "https://monzo.com/blog/authors/joe-ellis"
  ],
  "http://monzo.com/blog/how-to-live-on-20-less-money-furlough": [
    "http://monzo.com/blog/coronavirus"
  ],
  "http://monzo.com/blog/authors/stepchange": [
    "http://monzo.com/blog/what-if-im-stressed-about-debt",
    "http://monzo.com/blog/helping-friends-with-money-worries",
    "http://monzo.com/blog/relying-on-credit-to-get-by"
  ],
  "https://monzo.com/blog/10-things-they-didnt-teach-you-about-money-in-school": [
    "https://monzo.com/blog/2019/08/15/loans-the-monzo-way"
  ],
  "https://monzo.com/blog/2019/04/17/shoud-i-get-a-credit-card": [
    "https://monzo.com/blog/2018/12/14/your-rights-returning-goods/",
    "https://monzo.com/blog/2018/08/09/things-to-consider-before-you-borrow-money/",
    "https://monzo.com/blog/2019/01/28/cashback/",
    "https://monzo.com/blog/2018/10/12/what-is-a-good-credit-score/"
  ],
  "https://monzo.com/blog/2019/03/15/use-monzo-with-housemates": [
    "https://monzo.com/blog/2018/08/23/schedule-payments-out-of-pots/"
  ],
  "https://monzo.com/blog/74": [
    "https://monzo.com/blog/2015/10/01/the-first-mondo-hackathon",
    "https://monzo.com/blog/2015/06/01/welcome-to-mondo",
    "https://monzo.com/blog/72"
  ],
  "https://monzo.com/blog/2017/07/07/working-with-backend-services-on-ios": [
    "https://monzo.com/static/docs/model-services-RFC.pdf"
  ],
  "http://monzo.com/blog/how-to-avoid-scams-about-coronavirus": [
    "http://monzo.com/blog/authors/lizzie-morgan"
  ],
  "https://monzo.com/business-banking/sign-up-for-business/": [
    "https://monzo.com/i/business/business-switch/"
  ],
  "https://monzo.com/blog/2017/12/01/cardiff/": [
    "https://monzo.com/blog/authors/bobbi-nicholson"
  ],
  "https://monzo.com/blog/product-updates/8": [
    "https://monzo.com/blog/2018/05/17/apple-pay-is-here",
    "https://monzo.com/blog/2018/04/25/switch-to-monzo",
    "https://monzo.com/blog/2018/05/25/improving-merchant-acceptance",
    "https://monzo.com/blog/2018/04/18/payment-reactions",
    "https://monzo.com/blog/2018/05/09/new-categories",
    "https://monzo.com/blog/2018/05/24/no-more-monzo-waiting-list",
    "https://monzo.com/blog/2018/06/07/summary-update-predicting-committed-spending",
    "https://monzo.com/blog/2018/07/03/the-big-list-update"
  ],
  "http://monzo.com/blog/2019/07/18/remortgaging-test": [
    "http://monzo.com/blog/authors/will-stolerman"
  ],
  "https://monzo.com/legal/plus/fee-information/version-1-0/": [
    "https://monzo.com/legal/files/plus/monzo-plus-fee-information-1.0.pdf"
  ],
  "https://monzo.com/blog/authors/max-white": [
    "https://monzo.com/blog/authors/max-white/2",
    "https://monzo.com/blog/2019/07/23/the-pink-bank-card-you-keep-seeing-what-it-is-and-how-to-get-one",
    "https://monzo.com/blog/2019/06/14/monzo-manage-money-at-a-festival"
  ],
  "http://monzo.com/blog/how-we-unified-our-customers-activity-on-the-new-home-screen": [
    "http://monzo.com/blog/authors/james-mcdonagh"
  ],
  "https://monzo.com/monzo-plus": [
    "https://monzo.com/legal/plus/terms-and-conditions",
    "https://monzo.com/legal/plus/terms-and-conditions/"
  ],
  "http://monzo.com/blog/diversity-and-inclusion/": [
    "http://monzo.com/blog/2023/01/31/an-update-on-our-gender-pay-gap-jan-2023",
    "http://monzo.com/blog/adhd-women-money-impulse-spending",
    "http://monzo.com/blog/our-2021-diversity-and-inclusion-report",
    "http://monzo.com/blog/2019/05/16/global-accessibility-awareness",
    "http://monzo.com/blog/our-2020-diversity-and-inclusion-report",
    "http://monzo.com/blog/2022/02/23/mutual-mentoring-at-monzo",
    "http://monzo.com/blog/pride-season-2020",
    "http://monzo.com/blog/2022-diversity-and-inclusion-report",
    "http://monzo.com/blog/adhd-women-managing-money-dopamine-friendly",
    "http://monzo.com/blog/an-update-on-our-gender-pay-gap-2023",
    "http://monzo.com/blog/diversity-and-inclusion/2",
    "http://monzo.com/blog/2019/03/21/diversity-and-inclusion",
    "http://monzo.com/blog/an-update-on-the-women-in-finance-charter-2020",
    "http://monzo.com/blog/2022/06/30/were-launching-in-app-charity-donations"
  ],
  "https://monzo.com/blog/authors/team-monzo/2": [
    "https://monzo.com/blog/2018/08/07/money-and-our-younger-selves",
    "https://monzo.com/blog/2018/09/24/one-million-monzo-customers",
    "https://monzo.com/blog/2018/05/21/monzo-2.0-launch",
    "https://monzo.com/blog/2018/12/05/crowdfunding-starts",
    "https://monzo.com/blog/2017/07/17/current-account-preview",
    "https://monzo.com/blog/2016/08/11/we-are-now-a-bank"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon": [
    "http://monzo.com/blog/8-ways-monzo-plus-can-power-up-your-budgeting-and-supercharge-your-savings",
    "http://monzo.com/blog/current-account-guides/more-than-one-bank-account/",
    "http://monzo.com/blog/how-to-live-on-20-less-money-furlough",
    "http://monzo.com/blog/authors/beatrice-borbon/11",
    "http://monzo.com/blog/2022/11/29/budgeting-for-things-that-bring-me-joy-helped-me-pay-off-debt-and-start",
    "http://monzo.com/blog/everything-you-need-to-know-about-monzos-holographic-debit-card",
    "http://monzo.com/blog/we-sent-our-house-deposit-to-a-fraudster-who-posed-as-our-lawyer",
    "http://monzo.com/blog/dont-get-monzo",
    "http://monzo.com/blog/11-reasons-to-get-monzo-business",
    "http://monzo.com/blog/is-monzo-safe",
    "http://monzo.com/blog/authors/beatrice-borbon/3",
    "http://monzo.com/blog/current-account-guides/monzo-fscs-protection/",
    "http://monzo.com/blog/2022/12/05how-to-balance-spending-and-saving",
    "http://monzo.com/blog/authors/beatrice-borbon/2"
  ],
  "https://monzo.com/blog/how-money-works/12": [
    "https://monzo.com/blog/2018/12/14/your-rights-returning-goods",
    "https://monzo.com/blog/2018/12/18/your-rights-flight-delays-cancellations",
    "https://monzo.com/blog/2018/12/12/christmas-shopping-sales",
    "https://monzo.com/blog/2018/12/06/find-your-saving-style",
    "https://monzo.com/blog/2018/11/28/how-to-save-for-a-wedding",
    "https://monzo.com/blog/2018/11/23/what-is-crowdfunding",
    "https://monzo.com/blog/how-money-works/10",
    "https://monzo.com/blog/how-money-works/11",
    "https://monzo.com/blog/2018/11/23/how-to-save-for-a-house-deposit"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/10": [
    "http://monzo.com/blog/2018/04/05/april-update",
    "http://monzo.com/blog/2017/11/16/monzo-marketplace",
    "http://monzo.com/blog/2017/12/18/why-upgrade",
    "http://monzo.com/blog/2017/12/18/using-monzo-over-christmas",
    "http://monzo.com/blog/2018/02/07/upgrade-overdrafts",
    "http://monzo.com/blog/2018/02/28/march-update",
    "http://monzo.com/blog/2018/01/26/upgrade-credit-score"
  ],
  "https://monzo.com/blog/2019/05/16/global-accessibility-awareness": [
    "https://monzo.com/tone-of-voice",
    "https://monzo.com/blog/2018/09/25/share-with-us/",
    "https://monzo.com/blog/2019/05/13/supporting-vulnerable-customers/",
    "https://monzo.com/blog/2019/03/21/diversity-and-inclusion/"
  ],
  "https://monzo.com/legal/fee-information/version-1-3/": [
    "https://monzo.com/legal/files/fee-information/version-1-3/fee-information-1.3.pdf"
  ],
  "https://monzo.com/blog/how-to-open-a-business-bank-account-with-just-your-phone": [
    "https://monzo.com/i/current-account/",
    "https://monzo.com/blog/authors/beatrice-borbon",
    "https://monzo.com/i/business",
    "https://monzo.com/i/switch"
  ],
  "http://monzo.com/blog/2022/12/05how-to-balance-spending-and-saving": [
    "http://monzo.com/blog/how-to-save-money"
  ],
  "http://monzo.com/us/careers/": [
    "http://monzo.com/blog/our-2021-diversity-and-inclusion-report/",
    "http://monzo.com/blog/monzo-us-blog/working-to-build-more-empathetic-workplace/",
    "http://monzo.com/blog/monzo-us-blog/interviewing-at-monzo/",
    "http://monzo.com/blog/monzo-us-blog/supporting-mental-health-and-wellbeing/",
    "http://monzo.com/blog/monzo-us-blog/first-six-months-android-engineer-backend-engineer/"
  ],
  "https://monzo.com/help/travelling": [
    "https://monzo.com/help/travelling/web-my-limits/",
    "https://monzo.com/help/travelling/monzo-card-accepted-everywhere/",
    "https://monzo.com/help/travelling/Tipping-in-the-USA/",
    "https://monzo.com/help/travelling/converting-balance-to-another-currency/",
    "https://monzo.com/help/travelling/reasons-travel-is-better-with-monzo/",
    "https://monzo.com/help/travelling/fees-abroad/",
    "https://monzo.com/help/travelling/understanding-fees/"
  ],
  "https://monzo.com/blog/monzo-premium": [
    "https://monzo.com/blog/2020/09/24/amex-in-monzo-plus"
  ],
  "https://monzo.com/blog/2018/09/11/student-budgeting-tips": [
    "https://monzo.com/blog/2019/02/21/piggy-bank-saving",
    "https://monzo.com/blog/2018/08/30/manage-your-bills/"
  ],
  "http://monzo.com/blog/authors/naji-esiri": [
    "http://monzo.com/blog/managing-my-universal-credit-payments",
    "http://monzo.com/blog/debt-borrowing-money-making-repayments-coronavirus-stepchange",
    "http://monzo.com/blog/your-questions-about-universal-credit-and-government-support-answered-by",
    "http://monzo.com/blog/what-to-do-if-youre-worried-about-paying-rent-or-losing-your-home-because-of-coronavirus",
    "http://monzo.com/blog/2018/11/05/monzo-community",
    "http://monzo.com/blog/authors/naji-esiri/2",
    "http://monzo.com/blog/access-universal-credit",
    "http://monzo.com/blog/2018/05/25/monzo-2.0-events-roundup/",
    "http://monzo.com/blog/how-to-recognise-financial-abuse-and-get-support",
    "http://monzo.com/blog/2019/12/03/understanding-universal-credit",
    "http://monzo.com/blog/how-to-get-support-if-youre-a-refugee-or-asylum-seeker-during-coronavirus",
    "http://monzo.com/blog/authors/naji-esiri/3",
    "http://monzo.com/blog/2018/05/09/sneak-peeks",
    "http://monzo.com/blog/8-things-we-learnt-at-the-futureofmonzo",
    "http://monzo.com/blog/what-to-do-if-you-miss-a-loan-repayment"
  ],
  "https://monzo.com/blog/authors/roxy-alexander/5": [
    "https://monzo.com/blog/2019/08/01/august-no-spend-challenge",
    "https://monzo.com/blog/2019/05/30/micro-saving-with-monzo",
    "https://monzo.com/blog/2019/06/14/monzo-most-asked-questions",
    "https://monzo.com/blog/2019/08/22/get-paid-early-twitter",
    "https://monzo.com/blog/2019/04/10/1p-savings-challenge-chart",
    "https://monzo.com/blog/2019/07/01/how-much-are-we-spending-on-going-out",
    "https://monzo.com/blog/2019/06/20/summer-savings-challenge",
    "https://monzo.com/blog/2019/06/07/save-the-date-challenge",
    "https://monzo.com/blog/2019/08/30/what-is-no-spendtember"
  ],
  "http://monzo.com/blog/fraud": [
    "http://monzo.com/blog/fraud/2",
    "http://monzo.com/blog/card-scams",
    "http://monzo.com/blog/2020/05/puppy-and-kitten-deposit-scams-are-on-the-rise",
    "http://monzo.com/blog/fraud-scam-text-or-email-about-coronavirus-from-the-government",
    "http://monzo.com/blog/2020/06/23/money-mules",
    "http://monzo.com/blog/2019/12/23/how-well-contact-you",
    "http://monzo.com/blog/2020/12/08/christmas-shopping-scams-what-to-look-out-for"
  ],
  "http://monzo.com/blog/investments": [
    "http://monzo.com/blog/2023/09/12/6-common-investing-myths-and-the-truths",
    "http://monzo.com/blog/2023/09/12/4-things-to-know-when-investing",
    "http://monzo.com/blog/2023/09/12/staying-calm-when-your-investment-value-dips"
  ],
  "http://monzo.com/help/us-safety-and-security": [
    "http://monzo.com/help/us-safety-and-security/us-fraud-raising-a-dispute/",
    "http://monzo.com/help/us-safety-and-security/us-reporting-and-issue-raising-a-dispute/",
    "http://monzo.com/help/us-safety-and-security/us-is-my-money-safe-with-monzo/",
    "http://monzo.com/help/us-safety-and-security/us-is-monzo-a-bank/",
    "http://monzo.com/help/us-safety-and-security/us-is-my-information-safe-with-monzo/",
    "http://monzo.com/help/us-safety-and-security/us-why-is-monzo-asking-me-to-take-a-video-during-signup/"
  ],
  "http://monzo.com/blog/authors/naji-esiri/3": [
    "http://monzo.com/blog/2016/09/20/monzo-journals-philippines",
    "http://monzo.com/blog/2016/10/19/target-practice"
  ],
  "http://monzo.com/blog/authors/roxy-alexander/5": [
    "http://monzo.com/blog/2019/06/20/summer-savings-challenge",
    "http://monzo.com/blog/2019/04/10/1p-savings-challenge-chart",
    "http://monzo.com/blog/2019/06/07/save-the-date-challenge",
    "http://monzo.com/blog/2019/08/01/august-no-spend-challenge",
    "http://monzo.com/blog/2019/05/30/micro-saving-with-monzo",
    "http://monzo.com/blog/2019/06/14/monzo-most-asked-questions",
    "http://monzo.com/blog/2019/08/30/what-is-no-spendtember",
    "http://monzo.com/blog/2019/07/01/how-much-are-we-spending-on-going-out",
    "http://monzo.com/blog/2019/08/22/get-paid-early-twitter"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/4": [
    "https://monzo.com/blog/2019/07/29/reclaim-mis-sold-ppi-and-get-compensation-free",
    "https://monzo.com/blog/2019/08/02/taking-cash-out-on-holiday",
    "https://monzo.com/blog/2019/10/10/how-to-save-money-according-to-people-who-actually-manage-it",
    "https://monzo.com/blog/authors/beatrice-borbon/6",
    "https://monzo.com/blog/2019/06/27/trending-spending-east-london",
    "https://monzo.com/blog/2019/06/27/trending-spending-west-london"
  ],
  "https://monzo.com/blog/technology": [
    "https://monzo.com/blog/technology/2",
    "https://monzo.com/blog/technology/8",
    "https://monzo.com/blog/technology/3"
  ],
  "https://monzo.com/blog/2019/04/09/how-can-i-start-saving": [
    "https://monzo.com/blog/2019/03/13/sell-stuff-online-with-monzo/",
    "https://monzo.com/blog/2019/03/08/getting-a-pay-rise/",
    "https://monzo.com/blog/2019/02/21/piggy-bank-saving/",
    "https://monzo.com/blog/2018/12/06/find-your-saving-style/"
  ],
  "https://monzo.com/blog/bereavments-how-we-can-help-if-someone-with-a-monzo-account-dies": [
    "https://monzo.com/documents/bereavement-guide.pdf",
    "https://monzo.com/blog/authors/aongola-victor-simuyemba"
  ],
  "https://monzo.com/blog/2019/06/14/monzo-most-asked-questions": [
    "https://monzo.com/blog/2019/04/17/shoud-i-get-a-credit-card/",
    "https://monzo.com/blog/2019/02/04/pay-anyone-link/",
    "https://monzo.com/blog/2018/07/24/receiving-international-payments/",
    "https://monzo.com/blog/2019/05/10/should-i-get-monzo/",
    "https://monzo.com/blog/2018/08/21/budget-with-monzo/",
    "https://monzo.com/blog/2019/06/13/monzo-usa/",
    "https://monzo.com/blog/2018/09/03/is-monzo-free/",
    "https://monzo.com/blog/2018/12/13/shared-tabs/",
    "https://monzo.com/blog/2019/02/01/bill-splitting/",
    "https://monzo.com/blog/2019/05/02/shawbrook-savings-pots/"
  ],
  "https://monzo.com/blog/2018/05/25/monzo-2.0-events-roundup/": [
    "https://monzo.com/blog/2017/12/01/cardiff/",
    "https://monzo.com/blog/authors/stuart-mcfadden/",
    "https://monzo.com/blog/authors/hugo-cornejo/"
  ],
  "https://monzo.com/blog/introducing-monzo-premium": [
    "https://monzo.com/i/monzo-premium",
    "https://monzo.com/static/docs/premium/monzo-premium-assurant-terms-and-conditions.pdf"
  ],
  "http://monzo.com/blog/monzo-hq": [
    "http://monzo.com/blog/open-palm-tech-donate",
    "http://monzo.com/blog/2020/08/17/were-the-best-bank-for-overall-service-quality-and-online-and-mobile-banking",
    "http://monzo.com/blog/how-to-avoid-scams-about-coronavirus",
    "http://monzo.com/blog/monzo-hq/2",
    "http://monzo.com/blog/are-you-an-ally-or-an-advocate-for-lgbtq-inclusion",
    "http://monzo.com/blog/more-people-switched-their-bank-accounts-to-monzo",
    "http://monzo.com/blog/withdrawal-and-card-delivery-fees",
    "http://monzo.com/blog/monzo-among-the-uks-most-recommended-brands-february-2020",
    "http://monzo.com/blog/year-in-monzo-2020",
    "http://monzo.com/blog/supporting-neurodiversity-at-monzo",
    "http://monzo.com/blog/monzo-hq/3",
    "http://monzo.com/blog/plans-cancelled-because-of-coronavirus-find-out-if-you-can-get-your-money",
    "http://monzo.com/blog/monzo-hq/8",
    "http://monzo.com/blog/were-here-to-support-you-with-your-money-and-your-monzo-account-during-the"
  ],
  "https://monzo.com/blog/2022/06/23/our-mobile-release-process-an-illustrated-story": [
    "https://monzo.com/blog/authors/anastasios-morfopoulos"
  ],
  "http://monzo.com/annual-report/2022/": [
    "http://monzo.com/static/docs/monzo-annual-report-2022.pdf",
    "http://monzo.com/static/docs/monzo-pillar-3-2022.pdf",
    "http://monzo.com/pots",
    "http://monzo.com/isa"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/6": [
    "https://monzo.com/blog/2019/06/03/vegan-on-a-budget",
    "https://monzo.com/blog/2019/05/09/giving-to-charity",
    "https://monzo.com/blog/2019/05/23/save-money-to-afford-a-holiday",
    "https://monzo.com/blog/2019/04/11/monzo-features-you-need-to-know-about",
    "https://monzo.com/blog/2019/05/23/nudge-theory-and-money",
    "https://monzo.com/blog/2019/05/01/save-little-and-often",
    "https://monzo.com/blog/2019/05/16/saving-money-going-vegetarian"
  ],
  "https://monzo.com/blog/7": [
    "https://monzo.com/blog/2023/10/03/how-to-start-talking-about-money-overspending",
    "https://monzo.com/blog/9"
  ],
  "https://monzo.com/blog/authors/team-monzo": [
    "https://monzo.com/blog/how-to-save-money-as-you-run-walk-or-cycle",
    "https://monzo.com/blog/2019/01/17/2018-year-in-monzo",
    "https://monzo.com/blog/2019/06/25/monzos-latest-funding-round",
    "https://monzo.com/blog/2019/09/16/three-million",
    "https://monzo.com/blog/authors/team-monzo/2",
    "https://monzo.com/blog/2019/05/20/two-million",
    "https://monzo.com/blog/2019/01/08/your-year-in-monzo",
    "https://monzo.com/blog/save-money-when-you-tweet",
    "https://monzo.com/blog/2019/07/30/we-had-issues-with-monzo-yesterday",
    "https://monzo.com/blog/2019/08/05/weve-fixed-an-issue-storing-some-customers-pins",
    "https://monzo.com/blog/how-to-save-the-spare-change-with-round-ups"
  ],
  "http://monzo.com/our-social-programme": [
    "http://monzo.com/blog/weve-improved-our-gambling-block",
    "http://monzo.com/blog/5-practical-tips-for-feeling-less-lonely-in-lockdown",
    "http://monzo.com/blog/the-extra-costs-of-living-with-adhd",
    "http://monzo.com/blog/2021/05/13/supporting-our-customers-through-mental-health-problems",
    "http://monzo.com/blog/3-practical-tips-to-reduce-daily-anxiety",
    "http://monzo.com/blog/mental-health",
    "http://monzo.com/blog/how-monzos-gambling-block-and-self-exclusion-helped-me-beat-gambling-addiction-and-pay-off-debt"
  ],
  "https://monzo.com/blog/2018/04/27/backend-engineer-bonus": [
    "https://monzo.com/blog/authors/chris-lees",
    "https://monzo.com/blog/2017/06/07/referral-bonus/"
  ],
  "https://monzo.com/blog/2017/06/30/tried-and-tested": [
    "https://monzo.com/blog/authors/priscila-minks-zanuzzo"
  ],
  "http://monzo.com/blog/2017/03/09/diversity-and-inclusion": [
    "http://monzo.com/blog/authors/maria-campbell"
  ],
  "https://monzo.com/blog/business-banking/how-to-get-unpaid-invoices-paid": [
    "https://monzo.com/blog/what-is-cashflow",
    "https://monzo.com/blog/business-basics"
  ],
  "https://monzo.com/blog/11": [
    "https://monzo.com/blog/13",
    "https://monzo.com/blog/great-holidays-great-spending-memories"
  ],
  "http://monzo.com/blog/authors/natalie-gil/3": [
    "http://monzo.com/blog/monzo-pots-for-pets-cats",
    "http://monzo.com/blog/2023/05/04/i-only-got-monzo-for-holidays-now-i-use-it-for-everything-and-have-saved",
    "http://monzo.com/blog/financially-supporting-family-bank-of-mum-and-dad",
    "http://monzo.com/blog/spontaneity-fund-travel-saving-tips",
    "http://monzo.com/blog/managing-money-with-pets",
    "http://monzo.com/blog/2023/03/23/no-spend-year-challenge",
    "http://monzo.com/blog/save-money-for-eurovision-monzo-pots",
    "http://monzo.com/blog/spending-money-on-pets",
    "http://monzo.com/blog/2023/03/24/how-to-do-a-no-spend-challenge"
  ],
  "https://monzo.com/blog/4": [
    "https://monzo.com/blog/2023/08/10/my-path-from-intern-to-staff-engineer-at-monzo",
    "https://monzo.com/blog/2023/07/18/five-lessons-from-my-first-year-at-monzo",
    "https://monzo.com/blog/friendship-money-wealth-income-gap",
    "https://monzo.com/blog/2023/08/03/how-we-launch-new-products-at-monzo"
  ],
  "https://monzo.com/blog/2017/03/10/transparent-by-default/": [
    "https://monzo.com/blog/2017/03/09/diversity-and-inclusion/",
    "https://monzo.com/blog/monzo-hq",
    "https://monzo.com/blog/2017/03/06/transparency-dashboard/",
    "https://monzo.com/blog/authors/jonas-templestein"
  ],
  "https://monzo.com/blog/2018/10/31/big-news": [
    "https://monzo.com/blog/2018/08/21/savings-update/"
  ],
  "https://monzo.com/blog/2019/04/11/custom-pot-images-android": [
    "https://monzo.com/blog/2019/03/18/custom-pot-images/"
  ],
  "https://monzo.com/legal/cashback-on-your-loan": [
    "https://monzo.com/help/legal-stuff/privacy-policy",
    "https://monzo.com/legal/cashback-on-your-loan/version-1-1/",
    "https://monzo.com/legal/cashback-on-your-loan/version-1-0/"
  ],
  "https://monzo.com/blog/2021/08/12/monzo-business-invoicing": [
    "https://monzo.com/help/business-accounts/change-business-account-tier-web"
  ],
  "http://monzo.com/help/us-adding-money": [
    "http://monzo.com/help/us-adding-money/us-how-long-do-bank-transfers-take/",
    "http://monzo.com/help/us-adding-money/us-can-deposit-a-check-into-monzo/",
    "http://monzo.com/help/us-adding-money/us-getting-paid-2-days-early/",
    "http://monzo.com/help/us-adding-money/us-can-i-receive-my-paycheck-in-my-account/",
    "http://monzo.com/help/us-adding-money/us-can-i-deposit-cash-into-monzo/",
    "http://monzo.com/help/us-adding-money/us-how-can-i-add-money-to-my-account/"
  ],
  "https://monzo.com/blog/data": [
    "https://monzo.com/blog/2021/10/28/machine-learning-at-monzo-in-2021",
    "https://monzo.com/blog/2022/04/26/monzos-machine-learning-stack",
    "https://monzo.com/blog/2022/05/13/moving-from-data-science-into-machine-learning",
    "https://monzo.com/blog/2022/05/18/joining-monzo-as-a-data-scientist",
    "https://monzo.com/blog/data/2",
    "https://monzo.com/blog/2023/02/15/using-topic-modelling-to-understand-customer-saving-goals",
    "https://monzo.com/blog/2022/02/04/how-we-validated-our-handling-time-data",
    "https://monzo.com/blog/2021/12/22/how-to-think-about-the-roi-of-data-work"
  ],
  "http://monzo.com/help/us-budgeting-with-monzo/us-what-are-pots/": [
    "http://monzo.com/help/us-budgeting-with-monzo/"
  ],
  "https://monzo.com/blog/2017/12/12/meet-jordan": [
    "https://monzo.com/blog/2017/12/06/upgrades-for-all/",
    "https://monzo.com/blog/2017/01/31/fincrime-and-security-week-introduction/",
    "https://monzo.com/blog/2017/11/03/simple-signup-KYC/"
  ],
  "http://monzo.com/blog/2015/10/30/we-are-ready": [
    "http://monzo.com/blog/authors/tom-blomfield"
  ],
  "https://monzo.com/blog/2017/04/06/meet-dan": [
    "https://monzo.com/blog/2017/02/08/meet-irina/",
    "https://monzo.com/blog/2016/02/09/meet-leah/",
    "https://monzo.com/blog/2016/04/11/crowdsourcing-merchant-data/"
  ],
  "http://monzo.com/blog/authors/team-monzo": [
    "http://monzo.com/blog/2019/07/30/we-had-issues-with-monzo-yesterday",
    "http://monzo.com/blog/2019/01/08/your-year-in-monzo",
    "http://monzo.com/blog/2019/05/20/two-million",
    "http://monzo.com/blog/how-to-save-money-as-you-run-walk-or-cycle",
    "http://monzo.com/blog/save-money-when-you-tweet",
    "http://monzo.com/blog/authors/team-monzo/2",
    "http://monzo.com/blog/save-gbp667-95-a-year-with-the-1p-saving-challenge",
    "http://monzo.com/blog/2019/06/25/monzos-latest-funding-round",
    "http://monzo.com/blog/2019/09/16/three-million",
    "http://monzo.com/blog/2019/08/05/weve-fixed-an-issue-storing-some-customers-pins",
    "http://monzo.com/blog/2019/01/17/2018-year-in-monzo",
    "http://monzo.com/blog/how-to-save-the-spare-change-with-round-ups"
  ],
  "https://monzo.com/help/monzo-flex": [
    "https://monzo.com/help/monzo-flex/Two-ways-to-flex/",
    "https://monzo.com/help/monzo-flex/How-to-add-to-Apple-Pay-Google-Pay/",
    "https://monzo.com/help/monzo-flex/Choosing-an-instalment-plan/",
    "https://monzo.com/help/monzo-flex/where-you-can-use-the-Flex-card/",
    "https://monzo.com/help/monzo-flex/applying-for-monzo-flex-and-credit-scores/",
    "https://monzo.com/help/monzo-flex/eligible-transactions-for-monzo-flex/"
  ],
  "https://monzo.com/blog/2023/03/28/what-we-learned-from-43-experiments-in-12-months": [
    "https://monzo.com/blog/authors/shnay-chohan",
    "https://monzo.com/blog/2022/05/24/pellets-not-cannonballs-how-we-experiment-at-monzo"
  ],
  "https://monzo.com/information-about-current-account-services/": [
    "https://monzo.com/blog/2019/08/28/how-to-open-a-monzo-account",
    "https://monzo.com/legal/complaints-data/"
  ],
  "https://monzo.com/blog/how-money-works/13": [
    "https://monzo.com/blog/2018/10/30/what-is-inflation",
    "https://monzo.com/blog/2018/09/13/student-loans-northern-ireland",
    "https://monzo.com/blog/2018/08/30/manage-your-bills",
    "https://monzo.com/blog/2018/10/04/guarantors-how-and-why",
    "https://monzo.com/blog/2018/10/11/how-to-check-your-credit-score-report",
    "https://monzo.com/blog/2018/10/12/what-is-a-good-credit-score",
    "https://monzo.com/blog/2018/11/09/national-living-minimum-wage",
    "https://monzo.com/blog/2018/09/10/renting-student-accommodation"
  ],
  "http://monzo.com/blog/user-research-insight-to-impact-the-art-of-scaling-impact-and-crafting-goal": [
    "http://monzo.com/blog/authors/hayley-camille-morgan"
  ],
  "http://monzo.com/blog/current-account-guides/monzo-fscs-protection/": [
    "http://monzo.com/help/legal-stuff/"
  ],
  "https://monzo.com/modern-slavery-statements/": [
    "https://monzo.com/static/docs/modern-slavery-statement/modern-slavery-statement-2023_updated.pdf",
    "https://monzo.com/static/docs/modern-slavery-statement/modern-slavery-statement-2021.pdf",
    "https://monzo.com/static/docs/modern-slavery-statement/modern-slavery-statement-2020.pdf"
  ],
  "https://monzo.com/features/travel": [
    "https://monzo.com/help/emergencies/monzo-card-lost-damaged-stolen",
    "https://monzo.com/legal/files/premium/monzo-premium-zurich-terms-and-conditions.pdf",
    "https://monzo.com/monzo-premium/",
    "https://monzo.com/apply-for-monzo-flex-desktop/",
    "https://monzo.com/features/travel/",
    "https://monzo.com/monzo-premium/worldwide-travel-insurance"
  ],
  "http://monzo.com/legal/plus/fee-information": [
    "http://monzo.com/legal/plus/fee-information/version-1-1/",
    "http://monzo.com/legal/plus/fee-information/version-1-0/",
    "http://monzo.com/legal/plus/fee-information/version-1-2/",
    "http://monzo.com/legal/files/plus/monzo-plus-fee-information-1.4.pdf",
    "http://monzo.com/legal/plus/fee-information/version-1-4/",
    "http://monzo.com/legal/plus/fee-information/version-1-3/"
  ],
  "https://monzo.com/blog/monzo-hq/7": [
    "https://monzo.com/blog/2017/03/14/12000000",
    "https://monzo.com/blog/2017/05/19/future-of-cops",
    "https://monzo.com/blog/2017/05/16/200k-250m"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-8/": [
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.8.pdf"
  ],
  "https://monzo.com/blog/2019/07/10/the-evolution-of-monzo-chat": [
    "https://monzo.com/blog/authors/julio-lopes"
  ],
  "https://monzo.com/features/savings": [
    "https://monzo.com/features/savings/past-interest-rates/",
    "https://monzo.com/-deeplinks/create_savings_pot/"
  ],
  "http://monzo.com/blog/5": [
    "http://monzo.com/blog/2023/07/10/how-we-do-product-management-in-the-financial-difficulties-space",
    "http://monzo.com/blog/7"
  ],
  "https://monzo.com/blog/your-fund-and-etfs": [
    "https://monzo.com/blog/authors/sayjal-mistry",
    "https://monzo.com/-deeplinks/investments_education",
    "http://monzo.com/"
  ],
  "https://monzo.com/blog/2018/10/25/interest-explained": [
    "https://monzo.com/blog/authors/peggy-mcgregor",
    "https://monzo.com/blog/2018/08/09/what-kind-of-credit-should-i-use/",
    "https://monzo.com/blog/2018/10/05/secured-unsecured-credit/"
  ],
  "https://monzo.com/monzo-premium": [
    "https://monzo.com/legal/files/premium/monzo-premium-assurant-terms-and-conditions-v2.pdf",
    "https://monzo.com/legal/files/premium/monzo-premium-zurich-terms-and-conditions-1.1.pdf",
    "https://monzo.com/monzo-premium/worldwide-mobile-phone-insurance/",
    "https://monzo.com/monzo-premium/worldwide-travel-insurance/",
    "https://monzo.com/legal/premium/terms-and-conditions",
    "https://monzo.com/blog/monzo-premium-travel-insurance-provider-update",
    "https://monzo.com/legal/premium/terms-and-conditions/",
    "https://monzo.com/blog/is-monzo-premium-worth-it",
    "https://monzo.com/-deeplinks/premium_signup"
  ],
  "https://monzo.com/blog/2018/11/06/how-to-name-something": [
    "https://monzo.com/documents/naming.pdf"
  ],
  "https://monzo.com/help/us-travel-with-Monzo/us-using-your-monzo-card-at-an-atm/": [
    "https://monzo.com/help/us-travel-with-Monzo/"
  ],
  "https://monzo.com/legal/plus/fee-information/version-1-3/": [
    "https://monzo.com/legal/files/plus/monzo-plus-fee-information-1.3.pdf"
  ],
  "https://monzo.com/blog/authors/kate-hollowood/3": [
    "https://monzo.com/blog/2018/12/13/throw-achristmas-party-on-a-budget",
    "https://monzo.com/blog/2018/12/20/self-care-mental-health"
  ],
  "http://monzo.com/blog/how-we-built-the-new-home-screen": [
    "http://monzo.com/blog/authors/max-white"
  ],
  "http://monzo.com/blog/business-basics": [
    "http://monzo.com/blog/outsourcing-parts-of-your-business",
    "http://monzo.com/blog/business-basics/2"
  ],
  "https://monzo.com/blog/2018/10/16/making-monzo-better": [
    "https://monzo.com/blog/2018/08/08/making-bills-easier-to-manage/"
  ],
  "http://monzo.com/help/us-budgeting-with-monzo": [
    "http://monzo.com/help/us-budgeting-with-monzo/us-what-is-an-emergency-fund-pot/",
    "http://monzo.com/help/us-budgeting-with-monzo/us-what-is-trends/",
    "http://monzo.com/help/us-budgeting-with-monzo/us-what-are-pots/",
    "http://monzo.com/help/us-budgeting-with-monzo/us-what-is-a-credit-card-pot/",
    "http://monzo.com/help/us-budgeting-with-monzo/us-setting-a-goal-on-a-pot/",
    "http://monzo.com/help/us-budgeting-with-monzo/us-setting-spending-targets/"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/11": [
    "https://monzo.com/blog/2017/09/01/open-office-august",
    "https://monzo.com/blog/authors/beatrice-borbon/9",
    "https://monzo.com/blog/authors/beatrice-borbon/10"
  ],
  "http://monzo.com/help/us-joint-accounts": [
    "http://monzo.com/help/us-joint-accounts/us-joint-account-limits/",
    "http://monzo.com/help/us-joint-accounts/uk-joint-account-limits/",
    "http://monzo.com/help/us-joint-accounts/us-joint-accounts-on-monzo/",
    "http://monzo.com/help/us-joint-accounts/uk-can-i-open-a-joint-account-with-a-us-monzo-customer/",
    "http://monzo.com/help/us-joint-accounts/us-reporting-and-issue-raising-a-dispute/",
    "http://monzo.com/help/us-joint-accounts/us-opening-a-monzo-joint-account/",
    "http://monzo.com/help/us-joint-accounts/us-fraud-raising-a-dispute/",
    "http://monzo.com/help/us-joint-accounts/us-can-i-open-a-joint-account-with-a-uk-monzo-customer/"
  ],
  "https://monzo.com/legal/business-overdraft-information": [
    "https://monzo.com/legal/business-overdraft-information/version-1-0/",
    "https://monzo.com/legal/files/business-overdraft-information/overdraft-information-1.0.pdf"
  ],
  "https://monzo.com/our-social-programme": [
    "https://monzo.com/i/our-business-practices",
    "https://monzo.com/i/protecting-the-environment",
    "https://monzo.com/i/accessibility",
    "https://monzo.com/blog/financial-inclusion/",
    "https://monzo.com/i/supporting-all-our-customers",
    "https://monzo.com/blog/support-gambling-self-exclusion",
    "https://monzo.com/i/helping-everyone-belong-at-monzo",
    "https://monzo.com/blog/support-gambling-self-exclusion/"
  ],
  "http://monzo.com/help/payments-troubleshooting/3ds-fail-online-payment/": [
    "http://monzo.com/help/payments-troubleshooting/"
  ],
  "http://monzo.com/features/travel": [
    "http://monzo.com/help/emergencies/monzo-card-lost-damaged-stolen",
    "http://monzo.com/apply-for-monzo-flex-desktop/",
    "http://monzo.com/monzo-premium/",
    "http://monzo.com/features/travel/",
    "http://monzo.com/ecb-rates/"
  ],
  "http://monzo.com/blog/diversity-and-inclusion/2": [
    "http://monzo.com/blog/2018/03/22/diversity-and-inclusion",
    "http://monzo.com/blog/2015/11/16/diversity-debt",
    "http://monzo.com/blog/2018/11/20/women-in-finance-update",
    "http://monzo.com/blog/2017/03/09/diversity-and-inclusion"
  ],
  "https://monzo.com/investments": [
    "https://monzo.com/blog/monzo-investments-is-here-leave-the-hard-work-to-us",
    "https://monzo.com/blog/investments",
    "https://monzo.com/blog/2023/09/12/how-do-i-know-if-investing-is-for-me",
    "https://monzo.com/-deeplinks/investments_home",
    "https://monzo.com/blog/your-fund-and-etfs",
    "https://monzo.com/investments/"
  ],
  "http://monzo.com/blog/how-we-built-year-in-monzo-unlocking-the-data-magic": [
    "http://monzo.com/blog/authors/shervin-rad",
    "http://monzo.com/blog/data",
    "http://monzo.com/blog/authors/pan-hu"
  ],
  "https://monzo.com/blog/2018/03/20/terms-and-conditions-monzo": [
    "https://monzo.com/blog/authors/dean-nash",
    "https://monzo.com/terms"
  ],
  "https://monzo.com/help/account-and-profile/closed-account-refund/": [
    "https://monzo.com/legal/remaining-balance-terms-and-conditions"
  ],
  "https://monzo.com/blog/weve-improved-our-gambling-block": [
    "https://monzo.com/share-with-us/",
    "https://monzo.com/gambling-block/",
    "https://monzo.com/blog/authors/gamcare"
  ],
  "https://monzo.com/blog/business-banking/what-is-cashflow": [
    "https://monzo.com/blog/business-banking/business-bank-account"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon": [
    "https://monzo.com/blog/11-reasons-to-get-monzo-business",
    "https://monzo.com/blog/authors/beatrice-borbon/2",
    "https://monzo.com/blog/dont-get-monzo",
    "https://monzo.com/blog/8-ways-monzo-plus-can-power-up-your-budgeting-and-supercharge-your-savings",
    "https://monzo.com/blog/we-sent-our-house-deposit-to-a-fraudster-who-posed-as-our-lawyer",
    "https://monzo.com/blog/2022/12/05how-to-balance-spending-and-saving",
    "https://monzo.com/blog/how-to-live-on-20-less-money-furlough",
    "https://monzo.com/blog/current-account-guides/more-than-one-bank-account/",
    "https://monzo.com/blog/is-monzo-safe",
    "https://monzo.com/blog/authors/beatrice-borbon/3",
    "https://monzo.com/blog/2022/11/29/budgeting-for-things-that-bring-me-joy-helped-me-pay-off-debt-and-start",
    "https://monzo.com/blog/current-account-guides/monzo-fscs-protection/",
    "https://monzo.com/blog/authors/beatrice-borbon/11",
    "https://monzo.com/blog/everything-you-need-to-know-about-monzos-holographic-debit-card"
  ],
  "https://monzo.com/blog/77": [
    "https://monzo.com/blog/75",
    "https://monzo.com/blog/76"
  ],
  "https://monzo.com/help/payments-troubleshooting/offline-payments/": [
    "https://monzo.com/help/payments-troubleshooting/",
    "https://monzo.com/help/payments-troubleshooting/my-card-payment-declined/",
    "https://monzo.com/help/payments-troubleshooting/card-payment-declined-still-been-charged/",
    "https://monzo.com/help/payments-troubleshooting/unrecognised-payment-web/",
    "https://monzo.com/help/payments-troubleshooting/monzo-card-blocked/",
    "https://monzo.com/help/payments-troubleshooting/why-are-my-contactless-card-payments-being-declined/"
  ],
  "http://monzo.com/blog/2020/01/17/weve-started-reporting-to-experian": [
    "http://monzo.com/blog/authors/theo-gibson"
  ],
  "https://monzo.com/blog/3-practical-tips-to-reduce-daily-anxiety": [
    "https://monzo.com/blog/authors/will-allen-mersh"
  ],
  "http://monzo.com/blog/make-your-side-hustle-your-main-hustle": [
    "http://monzo.com/blog/authors/elizabeth-hibbert"
  ],
  "https://monzo.com/blog/monzo-me": [
    "https://monzo.com/blog/monzo-me/3",
    "https://monzo.com/blog/monzo-me/2"
  ],
  "http://monzo.com/blog/mental-health": [
    "http://monzo.com/blog/mental-health/2",
    "http://monzo.com/blog/2019/05/15/national-numeracy-challenge",
    "http://monzo.com/blog/2019/05/15/supporting-mental-health",
    "http://monzo.com/blog/2019/05/13/supporting-vulnerable-customers",
    "http://monzo.com/blog/2019/01/30/mental-health/",
    "http://monzo.com/blog/2018/06/19/gambling-block-self-exclusion",
    "http://monzo.com/blog/mental-health-coronavirus"
  ],
  "https://monzo.com/blog/monzo-business-how-to-add-information-to-transactions": [
    "https://monzo.com/-deeplinks/upgrade-to-pro/",
    "https://monzo.com/-deeplinks/fallback/app_home_qr_fallback/",
    "https://monzo.com/blog/business-banking"
  ],
  "http://monzo.com/blog/authors/beatrice-borbon/9": [
    "http://monzo.com/blog/2018/06/08/adding-money-to-monzo",
    "http://monzo.com/blog/2018/05/11/coin-jar-update",
    "http://monzo.com/blog/authors/beatrice-borbon/7",
    "http://monzo.com/blog/2018/05/04/may-update",
    "http://monzo.com/blog/2018/06/04/june-update",
    "http://monzo.com/blog/2018/06/13/how-to-get-online-in-an-emergency",
    "http://monzo.com/blog/2018/06/07/is-monzo-a-bank",
    "http://monzo.com/blog/2018/06/22/why-doesnt-monzo-have-branches",
    "http://monzo.com/blog/authors/beatrice-borbon/8"
  ],
  "https://monzo.com/blog/2022/01/28/keep-your-phone-and-monzo-app-up-to-date": [
    "https://monzo.com/blog/whats-new-in-monzo-october-2021/",
    "https://monzo.com/blog/authors/emma-vanbrabant"
  ],
  "http://monzo.com/blog/2021/10/12/getting-paid-with-monzo-business": [
    "http://monzo.com/blog/authors/sheri-farsani"
  ],
  "https://monzo.com/blog/how-money-works/4": [
    "https://monzo.com/blog/how-money-works/6"
  ],
  "https://monzo.com/legal/premium/savings-summary": [
    "https://monzo.com/legal/premium/savings-summary/version-1-1/",
    "https://monzo.com/legal/files/premium/monzo-premium-savings-summary-1.2.pdf",
    "https://monzo.com/legal/premium/savings-summary/version-1-0/",
    "https://monzo.com/legal/premium/savings-summary/version-1-2/"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-1-8/": [
    "https://monzo.com/help/payments-troubleshooting/authorising-different-payments",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-1.8.pdf",
    "https://monzo.com/help/payments-getting-started/how-to-pay-someone",
    "https://monzo.com/legal/audio/nov-2019-terms-conditions-audio.mp3"
  ],
  "http://monzo.com/blog/2021/11/11/monzo-us-blog-meet-nathan-our-head-of-engineering": [
    "http://monzo.com/blog/authors/dillon-van-auken"
  ],
  "https://monzo.com/blog/2019/04/26/savings-marketplace": [
    "https://monzo.com/blog/authors/ankit-kumar"
  ],
  "http://monzo.com/blog/authors/sheri-farsani/2": [
    "http://monzo.com/blog/2019/23/07/monzo-quarterly-update-q3-2019",
    "http://monzo.com/blog/2019/07/31/how-we-experiment-at-monzo",
    "http://monzo.com/blog/2019/01/09/january-monthly-update",
    "http://monzo.com/blog/2019/04/05/april-monthly-update",
    "http://monzo.com/blog/2019/02/13/february-monthly-update",
    "http://monzo.com/blog/2019/03/06/march-monthly-update",
    "http://monzo.com/blog/2019/12/11/monzo-main-bank-account",
    "http://monzo.com/blog/2019/12/05/what-you-need-to-know-about-going-full-monzo"
  ],
  "https://monzo.com/blog/10-magical-monzo-features": [
    "https://monzo.com/blog/2017/11/14/nfc-card-activation",
    "https://monzo.com/blog/2018/05/08/nearby-friends/"
  ],
  "https://monzo.com/annual-report/2020/": [
    "https://monzo.com/annual-report/2021",
    "https://monzo.com/annual-report/2018",
    "https://monzo.com/static/docs/monzo-annual-report-2020.pdf",
    "https://monzo.com/annual-report/2020",
    "https://monzo.com/annual-report/2019",
    "https://monzo.com/annual-report/2017"
  ],
  "https://monzo.com/blog/business-banking": [
    "https://monzo.com/blog/business-banking/3",
    "https://monzo.com/blog/business-banking/2"
  ],
  "https://monzo.com/blog/cost-of-living": [
    "https://monzo.com/blog/cost-of-living-quick-update"
  ],
  "https://monzo.com/blog/2018/08/03/august-update": [
    "https://monzo.com/blog/2018/07/13/joints-accounts-in-labs/"
  ],
  "https://monzo.com/legal/business-referral-scheme/terms-and-conditions": [
    "https://monzo.com/legal/business-referral-scheme/terms-and-conditions/version-1-1/",
    "https://monzo.com/legal/files/business-referral-scheme/monzo-business-referral-scheme-1.2.pdf",
    "https://monzo.com/legal/business-referral-scheme/terms-and-conditions/version-1-0/",
    "https://monzo.com/legal/business-referral-scheme/terms-and-conditions/version-1-2/"
  ],
  "http://monzo.com/blog/money-in-love": [
    "http://monzo.com/blog/money-in-love/2"
  ],
  "https://monzo.com/blog/2019/06/25/monzos-latest-funding-round": [
    "http://monzo.com/usa",
    "https://monzo.com/blog/2019/06/24/business-banking-update/",
    "https://monzo.com/blog/2019/05/08/switch-energy-supplier-through-monzo/",
    "https://monzo.com/blog/2019/05/15/monzo-plus-the-road-ahead/"
  ],
  "http://monzo.com/blog/2018/05/18/mindfulness-and-wellbeing": [
    "http://monzo.com/blog/authors/beth-toms"
  ],
  "https://monzo.com/i/pay-a-monzo-business": [
    "https://monzo.com/help/payments-paying-monzobusiness/"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-2-0/": [
    "https://monzo.com/legal/audio/sep-2020-terms-conditions-audio.mp3",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.0.pdf"
  ],
  "http://monzo.com/blog/authors/rore-erica-okoh": [
    "http://monzo.com/blog/2022/10/13/becoming-a-product-marketing-manager-at-monzo"
  ],
  "http://monzo.com/pots/": [
    "http://monzo.com/blog/1p-savings-challenge-2021",
    "http://monzo.com/blog/introducing-feed-and-manage",
    "http://monzo.com/blog/2023/03/29/were-helping-you-build-a-safety-net",
    "http://monzo.com/blog/instant-access-savings-are-here",
    "http://monzo.com/blog/52-week-savings-challenge-2021",
    "http://monzo.com/blog/pots",
    "http://monzo.com/blog/spenders-guide-to-saving-money"
  ],
  "https://monzo.com/blog/2018/07/18/our-company-finances": [
    "https://monzo.com/blog/2018/07/11/working-towards-company-goals/",
    "https://monzo.com/blog/authors/julie-oey"
  ],
  "http://monzo.com/annual-report/2019/": [
    "http://monzo.com/annual-report/2019",
    "http://monzo.com/annual-report/2017",
    "http://monzo.com/annual-report/2020",
    "http://monzo.com/annual-report/2018",
    "http://monzo.com/static/docs/annual-report-2019.pdf",
    "http://monzo.com/annual-report/2021"
  ],
  "https://monzo.com/help/us-monzo-with-friends": [
    "https://monzo.com/help/us-monzo-with-friends/us-i-sent-a-referral-before-you-started-your-current-promo-can-i-still-earn-the-reward/",
    "https://monzo.com/help/us-monzo-with-friends/us-referrals-changes-in-the-terms/",
    "https://monzo.com/help/us-monzo-with-friends/us-is-there-a-limit-to-the-number-of-people-i-can-refer/",
    "https://monzo.com/help/us-monzo-with-friends/us-how-can-i-check-if-i-used-a-referral-link-correctly/",
    "https://monzo.com/help/us-monzo-with-friends/us-i-live-in-the-us-can-i-invite-someone-outside-the-us-to-join-monzo/",
    "https://monzo.com/help/us-monzo-with-friends/us-i-signed-up-with-a-referral-link-how-come-i-havent-gotten-my-reward/",
    "https://monzo.com/help/us/",
    "https://monzo.com/help/us-monzo-with-friends/us-how-can-refer-friends-to-monzo/",
    "https://monzo.com/help/us-monzo-with-friends/us-how-do-i-know-if-im-able-to-refer-friends-to-monzo/",
    "https://monzo.com/help/us-monzo-with-friends/us-i-signed-up-with-a-referral-link-what-types-of-purchases-count-towards-earning-my-reward/",
    "https://monzo.com/help/us-monzo-with-friends/us-i-signed-up-with-a-referral-link-how-can-i-add-money-to-my-account-to-earn-my-reward/",
    "https://monzo.com/help/us-monzo-with-friends/us-referral-general-info/",
    "https://monzo.com/help/us-monzo-with-friends/us-referrals-friends-cant-add-to-apple-pay/",
    "https://monzo.com/help/us-monzo-with-friends/us-new-account-add-to-apple-pay-general/",
    "https://monzo.com/help/us-monzo-with-friends/us-can-someone-with-a-monzo-account-in-the-uk-invite-their-friends-and-family-in-the-us/",
    "https://monzo.com/help/us-monzo-with-friends/us-i-referred-a-friend-how-come-i-havent-gotten-my-reward/"
  ],
  "https://monzo.com/blog/2018/08/22/launching-3d-secure/": [
    "https://monzo.com/blog/authors/rika",
    "https://monzo.com/blog/2018/08/13/test-3d-secure/"
  ],
  "http://monzo.com/help/us-transferring-money": [
    "http://monzo.com/help/us-transferring-money/us-using-monzo-with-third-party-p2p/",
    "http://monzo.com/help/us-transferring-money/us-transferring-money-to-other-bank-accounts/",
    "http://monzo.com/help/us-transferring-money/us-how-long-do-bank-transfers-take/",
    "http://monzo.com/help/us-transferring-money/us-can-monzo-send-or-recieve-wire-transfers/",
    "http://monzo.com/help/us-transferring-money/us-sending-money-to-other-monzo-users/",
    "http://monzo.com/help/us-transferring-money/us-how-do-i-link-my-other-bank-accounts-to-monzo/",
    "http://monzo.com/help/us-transferring-money/us-can-i-send-a-check-with-monzo/"
  ],
  "http://monzo.com/help/us-travel-with-Monzo/us-using-your-monzo-card-at-an-atm/": [
    "http://monzo.com/help/us-travel-with-Monzo/"
  ],
  "https://monzo.com/blog/monzo-us-blog/interviewing-at-monzo/": [
    "https://monzo.com/blog/2022/03/21/data-hiring-at-monzo",
    "https://monzo.com/blog/2022/03/22/preparing-for-mobile-interviews-at-monzo",
    "https://monzo.com/blog/2017/03/10/transparent-by-default"
  ],
  "http://monzo.com/blog/envelope-method-budgeting": [
    "http://monzo.com/blog/authors/peggy-mcgregor"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-7/": [
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.7.pdf"
  ],
  "https://monzo.com/blog/authors/natalie-gil": [
    "https://monzo.com/blog/friendship-money-wealth-gap-tips",
    "https://monzo.com/blog/relationship-money-income-gap",
    "https://monzo.com/blog/authors/natalie-gil/6",
    "https://monzo.com/blog/emotional-spending-debt",
    "https://monzo.com/blog/budgeting-saving-wedding-guest",
    "https://monzo.com/blog/authors/natalie-gil/3",
    "https://monzo.com/blog/travel-scams-protect-yourself",
    "https://monzo.com/blog/authors/natalie-gil/2",
    "https://monzo.com/blog/budgeting-tips-wedding-season",
    "https://monzo.com/blog/emotional-spending-tips"
  ],
  "https://monzo.com/annual-report/2019/": [
    "https://monzo.com/static/docs/annual-report-2019.pdf"
  ],
  "https://monzo.com/blog/2021/01/05/self-employed-tax-basics": [
    "https://monzo.com/blog/authors/taxscouts"
  ],
  "http://monzo.com/blog/product-updates": [
    "http://monzo.com/blog/how-we-built-the-new-home-screen",
    "http://monzo.com/blog/product-updates/3",
    "http://monzo.com/blog/the-new-and-improved-home-screen",
    "http://monzo.com/blog/2023/08/01/see-into-the-future-of-monzo",
    "http://monzo.com/blog/2021/12/16/customise-contactless-limits",
    "http://monzo.com/blog/product-updates/11",
    "http://monzo.com/blog/monzo-reports-to-all-credit-reference-agencies-cras-equifax-experian-transunion",
    "http://monzo.com/blog/balance-in-trends",
    "http://monzo.com/blog/2022/05/04/view-cvc-in-app",
    "http://monzo.com/blog/monzo-premium-travel-insurance-provider-update",
    "http://monzo.com/blog/product-updates/2",
    "http://monzo.com/blog/is-monzo-premium-worth-it",
    "http://monzo.com/blog/targets-in-trends/"
  ],
  "https://monzo.com/help/investments/choosing-investment-type/": [
    "https://monzo.com/help/investments/"
  ],
  "https://monzo.com/blog/monzo-reports-to-all-credit-reference-agencies-cras-equifax-experian-transunion": [
    "https://monzo.com/blog/authors/leanne-kelsall",
    "https://monzo.com/blog/2020/01/17/weve-started-reporting-to-experian"
  ],
  "http://monzo.com/blog/authors/jack-cully": [
    "http://monzo.com/blog/2019/12/05/secured-loan",
    "http://monzo.com/blog/loans-help/car-finance-option/",
    "http://monzo.com/blog/2019/06/24/business-banking-update",
    "http://monzo.com/blog/loans-help/pay-off-credit-card/",
    "http://monzo.com/blog/2020/02/24/credit-scores"
  ],
  "https://monzo.com/blog/coronavirus": [
    "https://monzo.com/blog/coronavirus/2"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-1-7/": [
    "http://monzo.com/legal/audio/may-2019-terms-conditions-audio.m4a",
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-1.7.pdf"
  ],
  "http://monzo.com/legal/referral-scheme/terms-and-conditions": [
    "http://monzo.com/legal/referral-scheme/terms-and-conditions/version-3-0/",
    "http://monzo.com/legal/referral-scheme/terms-and-conditions/version-2-0/",
    "http://monzo.com/legal/files/referral-scheme/monzo-referral-scheme-3.0.pdf",
    "http://monzo.com/legal/referral-scheme/terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/blog/2017/11/29/very-robust-etcd": [
    "https://monzo.com/blog/authors/filipe-varela"
  ],
  "https://monzo.com/help/us-updating-your-profile": [
    "https://monzo.com/help/us-updating-your-profile/us-opting-out-of-marketing-emails/",
    "https://monzo.com/help/us-updating-your-profile/us-updating-your-legal-or-preferred-name-web/",
    "https://monzo.com/help/us-updating-your-profile/us-updating-your-address-web/"
  ],
  "https://monzo.com/blog/monzo-business-banking": [
    "https://monzo.com/i/business/features/tax-pots",
    "https://monzo.com/i/business/features/mobile-and-web-access",
    "https://monzo.com/i/business/testimonials",
    "https://monzo.com/i/business/features/multi-user-access"
  ],
  "https://monzo.com/help/us-travel-with-Monzo": [
    "https://monzo.com/help/us-travel-with-Monzo/us-using-your-monzo-card-at-an-atm/",
    "https://monzo.com/help/us-travel-with-Monzo/us-using-your-monzo-card-outside-the-us/"
  ],
  "http://monzo.com/blog/2023/09/06/making-it-clear-when-were-on-a-call-with-you": [
    "http://monzo.com/blog/authors/priyesh-patel",
    "http://monzo.com/blog/how-we-protect-you"
  ],
  "https://monzo.com/blog/monzo-us-blog/emergency-fund-pot": [
    "https://monzo.com/-deeplinks/trends-personal-usa-spending",
    "https://monzo.com/-deeplinks/create-pot/"
  ],
  "https://monzo.com/blog/2019/03/08/getting-a-pay-rise/": [
    "https://monzo.com/blog/2017/11/20/share-options/",
    "https://monzo.com/blog/2018/11/09/national-living-minimum-wage/"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-3/": [
    "http://monzo.com/legal/plus/fee-information/",
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.3.pdf",
    "http://monzo.com/legal/plus/savings-summary/"
  ],
  "https://monzo.com/blog/2018/09/25/share-with-us": [
    "https://monzo.com/blog/2018/06/19/gambling-block-self-exclusion/",
    "https://monzo.com/blog/2018/05/15/meet-vulnerable-customers-team/"
  ],
  "http://monzo.com/help/us-updating-your-profile": [
    "http://monzo.com/help/us-updating-your-profile/us-updating-your-address-web/",
    "http://monzo.com/help/us/",
    "http://monzo.com/help/us-updating-your-profile/us-opting-out-of-marketing-emails/",
    "http://monzo.com/help/us-updating-your-profile/us-updating-your-legal-or-preferred-name-web/"
  ],
  "https://monzo.com/blog/monzo-101/3": [
    "https://monzo.com/blog/2019/02/01/bill-splitting",
    "https://monzo.com/blog/2019/08/09/what-do-i-need-to-set-up-a-monzo-account",
    "https://monzo.com/blog/2019/01/16/monzo-plan-ahead",
    "https://monzo.com/blog/2019/07/03/money-at-university",
    "https://monzo.com/blog/2019/07/22/monzo-reviews",
    "https://monzo.com/blog/2019/03/15/use-monzo-with-housemates",
    "https://monzo.com/blog/2018/09/04/move-your-salary-to-monzo",
    "https://monzo.com/blog/2019/08/05/how-do-i-get-a-monzo-account",
    "https://monzo.com/blog/2018/09/03/is-monzo-free",
    "https://monzo.com/blog/2018/08/23/seven-day-switch"
  ],
  "https://monzo.com/blog/weve-had-a-little-makeover": [
    "https://monzo.com/blog/authors/jesse-cogswell"
  ],
  "https://monzo.com/blog/2018/12/13/locked-pots/": [
    "https://monzo.com/blog/authors/jami-welch"
  ],
  "https://monzo.com/blog/2018/07/16/schedule-payments-into-pots/": [
    "https://monzo.com/blog/authors/vuokko-aro"
  ],
  "https://monzo.com/blog/authors/oliver-beattie": [
    "https://monzo.com/blog/2018/07/25/monzo-reliability-report",
    "https://monzo.com/blog/2018/06/29/engineering-principles"
  ],
  "https://monzo.com/blog/2018/12/11/las-vegas-office": [
    "https://monzo.com/blog/2018/07/31/monzo-las-vegas/"
  ],
  "https://monzo.com/help/us-transferring-money/us-transferring-money-to-other-bank-accounts/": [
    "https://monzo.com/help/us-transferring-money/"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-1/": [
    "https://monzo.com/legal/files/premium/monzo-premium-axa-terms-and-conditions.pdf"
  ],
  "https://monzo.com/blog/2021/02/09/borrowing-data-at-monzo": [
    "https://monzo.com/blog/authors/ben-molyneaux"
  ],
  "https://monzo.com/blog/2017/05/19/future-of-cops": [
    "https://monzo.com/blog/2017/05/16/200k-250m/",
    "https://monzo.com/blog/2017/05/17/meet-tapas/"
  ],
  "https://monzo.com/help/overdrafts-loans/notice-of-sums-in-arrears/": [
    "https://monzo.com/help/overdrafts-loans/nosia-snosia-payment-arrangement"
  ],
  "http://monzo.com/help/service-quality-results/service-quality-results/": [
    "http://monzo.com/help/service-quality-results/"
  ],
  "https://monzo.com/blog/whats-new-in-monzo-october-2021/": [
    "https://monzo.com/blog/trends",
    "https://monzo.com/blog/pay-on-card-from-a-pot/",
    "https://monzo.com/blog/2021/09/16/monzo-flex",
    "https://monzo.com/blog/2019/09/20/the-monzo-app-is-changing"
  ],
  "https://monzo.com/blog/small-change-control": [
    "https://monzo.com/-deeplinks/smallchange-addsalary",
    "https://monzo.com/-deeplinks/smallchange-sharedtab",
    "https://monzo.com/-deeplinks/smallchange-targets"
  ],
  "https://monzo.com/blog/2021/11/11/monzo-us-blog-meet-nathan-our-head-of-engineering": [
    "https://monzo.com/usa/careers"
  ],
  "https://monzo.com/blog/2022/06/24/redefining-our-microservice-development-process": [
    "https://monzo.com/blog/authors/tony-di-nucci"
  ],
  "http://monzo.com/blog/2020/04/03/tips-for-being-extra-safe-on-monzo-business-for-web": [
    "http://monzo.com/blog/authors/monique-pattison"
  ],
  "https://monzo.com/blog/2019/01/14/crowdfunding-technology-backend-architecture/": [
    "https://monzo.com/blog/2017/11/29/very-robust-etcd/",
    "https://monzo.com/blog/2017/04/20/crowdfunding-in-numbers/"
  ],
  "https://monzo.com/blog/migrating-vaults-storage-with-no-downtime": [
    "https://monzo.com/blog/2019/10/11/how-our-security-team-handle-secrets/"
  ],
  "https://monzo.com/blog/2018/05/30/getting-bank-account-refugee": [
    "https://monzo.com/blog/no-barriers-to-banking"
  ],
  "https://monzo.com/blog/2018/05/18/mindfulness-and-wellbeing": [
    "https://monzo.com/blog/authors/beth-toms",
    "https://monzo.com/blog/2018/03/19/500k-customers/"
  ],
  "http://monzo.com/legal/cookie-notice/": [
    "http://monzo.com/legal/cookie-notice/version-1-6/",
    "http://monzo.com/legal/cookie-notice/version-1-3/",
    "http://monzo.com/legal/cookie-notice/version-1-11/",
    "http://monzo.com/legal/cookie-notice/version-1-4/",
    "http://monzo.com/legal/cookie-notice/version-1-9/",
    "http://monzo.com/legal/cookie-notice/version-1-5/",
    "http://monzo.com/legal/cookie-notice/version-1-8/",
    "http://monzo.com/legal/cookie-notice/version-1-10/",
    "http://monzo.com/legal/cookie-notice/version-1-7/"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-3/": [
    "https://monzo.com/legal/plus/fee-information/",
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.3.pdf",
    "https://monzo.com/legal/plus/credit-tracker-terms-and-conditions/",
    "https://monzo.com/legal/plus/savings-summary/",
    "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/",
    "https://monzo.com/static/docs/premium/monzo-premium-axa-terms-and-conditions.pdf"
  ],
  "http://monzo.com/help/us-signing-up": [
    "http://monzo.com/help/us-signing-up/us-opening-a-monzo-account/",
    "http://monzo.com/help/us-signing-up/us-i-signed-up-with-a-referral-link-how-come-i-havent-gotten-my-reward/",
    "http://monzo.com/help/us-signing-up/us-card-delivery-times/",
    "http://monzo.com/help/us-signing-up/us-how-do-i-know-if-im-able-to-refer-friends-to-monzo/",
    "http://monzo.com/help/us-signing-up/us-referral-general-info/",
    "http://monzo.com/help/us-signing-up/us-why-is-monzo-asking-me-to-take-a-video-during-signup/",
    "http://monzo.com/help/us-signing-up/us-how-can-i-check-if-i-used-a-referral-link-correctly/",
    "http://monzo.com/help/us-signing-up/us-i-referred-a-friend-how-come-i-havent-gotten-my-reward/"
  ],
  "https://monzo.com/help/investments/investment-pot-fund-details/": [
    "https://monzo.com/legal/files/investments/kiids/blk-mymap-3-select-esg-s-acc-gbp.pdf",
    "https://monzo.com/legal/files/investments/kiids/blk-mymap-5-select-esg-s-acc-gbp.pdf",
    "https://monzo.com/legal/files/investments/kiids/blk-mymap-7-select-esg-s-acc-gbp.pdf"
  ],
  "https://monzo.com/legal/privacy-notice/version-1-3/": [
    "https://monzo.com/legal/cookies/"
  ],
  "https://monzo.com/blog/monzo-hq/3": [
    "https://monzo.com/blog/2018/12/05/crowdfunding-closes",
    "https://monzo.com/blog/2019/01/04/monzo-in-2019",
    "https://monzo.com/blog/2019/02/07/building-progression-frameworks",
    "https://monzo.com/blog/2019/01/07/progression",
    "https://monzo.com/blog/monzo-hq/5",
    "https://monzo.com/blog/2019/05/22/monzo-tv-ads",
    "https://monzo.com/blog/2018/12/06/crowdfunding-in-numbers",
    "https://monzo.com/blog/2019/03/27/tone-of-voice-birthday",
    "https://monzo.com/blog/2019/03/06/engineering-with-no-degree",
    "https://monzo.com/blog/monzo-hq/4",
    "https://monzo.com/blog/2019/02/26/5-a-side-football"
  ],
  "https://monzo.com/blog/2018/06/07/monzo-on-ifttt/": [
    "https://monzo.com/blog/2018/03/07/coin-jar/"
  ],
  "http://monzo.com/blog/authors/roxy-alexander/2": [
    "http://monzo.com/blog/how-to-spot-a-bank-scam",
    "http://monzo.com/blog/business-banking/how-to-write-a-business-plan",
    "http://monzo.com/blog/hmrc-scam",
    "http://monzo.com/blog/save-at-home",
    "http://monzo.com/blog/credit-scores/what-is-a-good-credit-score/",
    "http://monzo.com/blog/credit-scores/check-your-score",
    "http://monzo.com/blog/credit-scores/credit-checks"
  ],
  "https://monzo.com/blog/building-year-in-monzo-as-told-by-engineering": [
    "https://monzo.com/blog/authors/phill-taylor",
    "https://monzo.com/blog/authors/boris-kach",
    "https://monzo.com/blog/authors/kieran-palmer",
    "https://monzo.com/blog/authors/nuno-mota"
  ],
  "http://monzo.com/tone-of-voice/": ["http://monzo.com/privacy"],
  "https://monzo.com/blog/2019/02/11/building-monzo-chat-on-android/": [
    "https://monzo.com/blog/2018/11/02/monzo-chat/"
  ],
  "https://monzo.com/blog/2019/04/09/dear-monzo-frustrated-in-debt": [
    "https://monzo.com/blog/dear-monzo",
    "https://monzo.com/blog/authors/laura-whateley"
  ],
  "https://monzo.com/i/business/get-paid/": [
    "https://monzo.com/i/business/features/invoices/",
    "https://monzo.com/business/accept-contactless"
  ],
  "https://monzo.com/blog/2019/11/12/what-are-unsecured-loans/": [
    "https://monzo.com/i/loans",
    "https://monzo.com/blog/how-money-works",
    "https://monzo.com/blog/2020/02/24/credit-scores/",
    "https://monzo.com/blog/2018/10/25/interest-explained"
  ],
  "https://monzo.com/blog/money-in-love": [
    "https://monzo.com/blog/money-in-love/2"
  ],
  "https://monzo.com/help/business-accounts-signup/using-current-account-for-business/": [
    "https://monzo.com/business"
  ],
  "https://monzo.com/legal/referral-scheme/terms-and-conditions/version-2-0/": [
    "https://monzo.com/legal/files/referral-scheme/monzo-referral-scheme-2.0.pdf"
  ],
  "https://monzo.com/blog/2022/04/04/my-first-3-months-at-monzo-as-an-engineering-manager": [
    "https://monzo.com/blog/authors/jarryd-trokis"
  ],
  "https://monzo.com/savingwithmonzo/": [
    "https://monzo.com/-deeplinks/create_pot/savings/",
    "https://monzo.com/blog/savings-account-guides/"
  ],
  "https://monzo.com/blog/2018/11/21/deposit-cash": [
    "https://monzo.com/blog/authors/david-brandon",
    "https://monzo.com/blog/2018/06/22/why-doesnt-monzo-have-branches/"
  ],
  "http://monzo.com/blog/monzo-us-blog/3": [
    "http://monzo.com/blog/2021/07/19/meet-richard-a-monzo-us-backend-engineer",
    "http://monzo.com/blog/2019/06/13/monzo-us-blog-monzo-usa",
    "http://monzo.com/blog/2020/03/18/monzo-us-blog-coronavirus-update",
    "http://monzo.com/blog/2020/03/11/monzo-us-blog-us-update-waitlist",
    "http://monzo.com/blog/2019/12/30/us-update-2019",
    "http://monzo.com/blog/2020/05/15/monzo-us-blog-you-can-now-hide-your-pots-and-change-the-order-theyre-in-us",
    "http://monzo.com/blog/2020/12/16/monzo-us-blog-personalized-cards-have-landed",
    "http://monzo.com/blog/2021/08/24/monzo-us-blog-move-money-to-and-from-your-other-accounts-now-in-beta-testing",
    "http://monzo.com/blog/2020/01/14/monzo-us-blog-contactless",
    "http://monzo.com/blog/24/01/2020/monzo-us-blog-us-product-roadmap",
    "http://monzo.com/blog/2020/01/15/monzo-us-blog-pots-us-beta",
    "http://monzo.com/blog/2021/05/18/monzo-us-blog-updating-our-product-roadmap-for-2021"
  ],
  "https://monzo.com/blog/authors/monzo-business-team": [
    "https://monzo.com/blog/four-essential-monthly-tasks-for-every-small-business-owner",
    "https://monzo.com/blog/start-planning-your-business-again",
    "https://monzo.com/blog/why-getting-paid-on-time-really-really-matters",
    "https://monzo.com/blog/business-banking/how-to-get-unpaid-invoices-paid",
    "https://monzo.com/blog/12-essential-interview-questions-to-help-find-your-next-hire",
    "https://monzo.com/blog/what-to-look-for-in-your-first-employee",
    "https://monzo.com/blog/business-banking/what-is-an-invoice",
    "https://monzo.com/blog/authors/monzo-business-team/2",
    "https://monzo.com/blog/business-banking/a-guide-to-purchase-orders",
    "https://monzo.com/blog/holding-onto-improved-financial-habits",
    "https://monzo.com/blog/business-banking/gross-profit-net-profit-and-profit-margins-what-are-they-how-to-calculate",
    "https://monzo.com/blog/seven-steps-to-validate-your-business-idea"
  ],
  "https://monzo.com/blog/2018/05/25/improving-merchant-acceptance": [
    "https://monzo.com/documents/one_minute_guide_to_monzo_for_merchants.pdf",
    "https://monzo.com/blog/authors/louis-cox"
  ],
  "https://monzo.com/blog/cash-stuffing-and-other-old-school-ways-to-save-money-with-monzo": [
    "https://monzo.com/help/budgeting-overdrafts-savings/web-salary-sorter",
    "https://monzo.com/help/budgeting-overdrafts-savings/create-pot-app",
    "https://monzo.com/blog/authors/james-de-souza",
    "https://monzo.com/help/budgeting-overdrafts-savings/hide-pots"
  ],
  "https://monzo.com/year-in-monzo/": [
    "https://monzo.com/-deeplinks/year-in-monzo-2023/"
  ],
  "https://monzo.com/help/us-monzo-with-friends/us-how-can-refer-friends-to-monzo/": [
    "https://monzo.com/help/us-monzo-with-friends/"
  ],
  "https://monzo.com/blog/2021/01/13/self-employed-tips-for-self-assessment": [
    "https://monzo.com/blog/authors/xero"
  ],
  "https://monzo.com/blog/2017/02/24/monzome-on-android": [
    "https://monzo.com/blog/2017/02/22/1-9-3-update/"
  ],
  "http://monzo.com/blog/2019/12/09/our-overdrafts-are-changing": [
    "http://monzo.com/blog/authors/ofelia-botella"
  ],
  "http://monzo.com/blog/2019/07/24/market-leading-interest-rate-on-monzo-savings-pots": [
    "http://monzo.com/blog/authors/max-winston"
  ],
  "https://monzo.com/help/us-using-your-card": [
    "https://monzo.com/help/us-using-your-card/us-reporting-and-issue-raising-a-dispute/",
    "https://monzo.com/help/us-using-your-card/us-new-account-add-to-apple-pay-general/",
    "https://monzo.com/help/us-using-your-card/us-where-can-i-use-my-monzo-card/",
    "https://monzo.com/help/us-using-your-card/us-fraud-raising-a-dispute/",
    "https://monzo.com/help/us-using-your-card/us-using-your-monzo-card-outside-the-us/",
    "https://monzo.com/help/us-using-your-card/us-can-i-deposit-cash-into-monzo/",
    "https://monzo.com/help/us-using-your-card/us-using-monzo-with-apple-pay-and-google-wallet/",
    "https://monzo.com/help/us-using-your-card/us-using-your-monzo-card-at-an-atm/"
  ],
  "http://monzo.com/blog/moving-monzo-com": [
    "http://monzo.com/blog/authors/tris-tolliday",
    "http://monzo.com/blog/technology"
  ],
  "https://monzo.com/annual-report/2017/": [
    "https://monzo.com/static/docs/annual-report-2017.pdf"
  ],
  "https://monzo.com/blog/2017/02/03/fighting-fraud-with-machine-learning": [
    "https://monzo.com/blog/2017/01/24/100000th-user/"
  ],
  "https://monzo.com/blog/2023/04/28/payday-tips-while-treating-yourself": [
    "https://monzo.com/blog/2023/03/09/sinking-fund-future-you-pots"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-2-1/": [
    "https://monzo.com/legal/audio/mar-2021-terms-conditions-audio.mp3",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.1.pdf"
  ],
  "https://monzo.com/blog/2018/05/15/meet-vulnerable-customers-team/": [
    "https://monzo.com/blog/2017/01/27/designing-product-mental-health-mind/"
  ],
  "http://monzo.com/blog/how-to-create-a-customer-segmentation-choosing-the-right-segmentation": [
    "http://monzo.com/blog/authors/vincent-hao"
  ],
  "https://monzo.com/blog/15": ["https://monzo.com/blog/17"],
  "http://monzo.com/blog/authors/leanne-kelsall": [
    "http://monzo.com/blog/2021/09/16/monzo-flex"
  ],
  "https://monzo.com/legal/overdraft-information/version-1-0/": [
    "https://monzo.com/legal/files/overdraft-information/overdraft-information-1.0.pdf"
  ],
  "https://monzo.com/legal/fscs-information/version-1-2/": [
    "https://monzo.com/legal/files/fscs-information/fscs-information-1.2.pdf"
  ],
  "http://monzo.com/help/us-trends": [
    "http://monzo.com/help/us-trends/us-setting-spending-targets/",
    "http://monzo.com/help/us-trends/us-what-is-trends/",
    "http://monzo.com/help/us-trends/us-how-do-i-link-my-other-bank-accounts-to-monzo/"
  ],
  "https://monzo.com/blog/authors/jami-welch": [
    "https://monzo.com/blog/authors/jami-welch/2",
    "https://monzo.com/blog/2018/07/19/set-savings-goals",
    "https://monzo.com/blog/2018/10/16/making-monzo-better",
    "https://monzo.com/blog/2018/08/08/making-bills-easier-to-manage",
    "https://monzo.com/blog/2018/08/22/end-of-the-big-list",
    "https://monzo.com/blog/2018/11/20/flexible-budgeting",
    "https://monzo.com/blog/2018/07/05/set-a-spending-budget",
    "https://monzo.com/blog/2018/08/14/launching-joint-accounts",
    "https://monzo.com/blog/2018/08/02/pots-goals",
    "https://monzo.com/blog/2018/08/23/schedule-payments-out-of-pots"
  ],
  "http://monzo.com/blog/authors/natalie-gil/6": [
    "http://monzo.com/blog/authors/natalie-gil/4",
    "http://monzo.com/blog/authors/natalie-gil/5",
    "http://monzo.com/blog/tax-money-2019-general-election"
  ],
  "https://monzo.com/blog/monzo-101/4": [
    "https://monzo.com/blog/2018/08/16/automate-your-finances",
    "https://monzo.com/blog/2018/06/22/why-doesnt-monzo-have-branches",
    "https://monzo.com/blog/2018/08/15/manage-your-bills-with-monzo",
    "https://monzo.com/blog/2018/06/08/adding-money-to-monzo"
  ],
  "https://monzo.com/blog/current-account-guides": [
    "https://monzo.com/blog/2018/09/07/open-a-uk-bank-account",
    "https://monzo.com/blog/2018/09/05/monzo-bank-statements"
  ],
  "http://monzo.com/blog/authors/kate-hollowood/3": [
    "http://monzo.com/blog/2018/12/13/throw-achristmas-party-on-a-budget",
    "http://monzo.com/blog/2018/12/20/self-care-mental-health"
  ],
  "https://monzo.com/blog/are-you-an-ally-or-an-advocate-for-lgbtq-inclusion": [
    "https://monzo.com/blog/authors/matt-measor"
  ],
  "https://monzo.com/legal/privacy-notice/version-1-9/": [
    "https://monzo.com/legal/plus/other-accounts-in-monzo-privacy-notice/",
    "https://monzo.com/-webviews/content/p2p/ios/",
    "https://monzo.com/legal/business-account-privacy-policy/",
    "https://monzo.com/legal/plus/credit-tracker-privacy-notice/"
  ],
  "http://monzo.com/help/service-quality-results": [
    "http://monzo.com/help/service-quality-results/service-quality-results/"
  ],
  "https://monzo.com/blog/2019/02/06/50-20-30-budgeting": [
    "https://monzo.com/blog/2018/11/07/pensions-explained/"
  ],
  "https://monzo.com/blog/monzo-us-blog/trends": [
    "https://monzo.com/-deeplinks/trends-personal-usa-balance"
  ],
  "https://monzo.com/help/business-getpaid/business-getpaid-pricing": [
    "https://monzo.com/help/business-getpaid/",
    "https://monzo.com/help/business-getpaid/business-getpaid-paymentlinks-createandshare/"
  ],
  "https://monzo.com/legal/business-referral-scheme/terms-and-conditions/version-1-1/": [
    "https://monzo.com/legal/files/business-referral-scheme/monzo-business-referral-scheme-1.1.pdf"
  ],
  "http://monzo.com/legal/plus/credit-tracker-terms-and-conditions": [
    "http://monzo.com/legal/plus/credit-tracker-terms-and-conditions/version-1-0/",
    "http://monzo.com/legal/files/plus/monzo-plus-credit-tracker-terms-and-conditions.pdf"
  ],
  "https://monzo.com/blog/2018/09/04/september-update": [
    "https://monzo.com/blog/how-money-works/"
  ],
  "http://monzo.com/blog/2019/03/27/tone-of-voice-birthday": [
    "http://monzo.com/blog/authors/harry-ashbridge",
    "http://monzo.com/blog/2018/11/06/how-to-name-something"
  ],
  "https://monzo.com/legal/investments/summary-of-conflicts-of-interest": [
    "https://monzo.com/legal/investments/summary-of-conflicts-of-interest/version-1-0/",
    "https://monzo.com/legal/files/investments/summary-of-conflicts-of-interest-1.0.pdf"
  ],
  "https://monzo.com/blog/how-we-wrote-5-million-years-in-monzo": [
    "https://monzo.com/blog/marketing-team",
    "https://monzo.com/year-in-monzo/"
  ],
  "http://monzo.com/blog/2017/09/01/open-office-august": [
    "http://monzo.com/blog/community"
  ],
  "https://monzo.com/legal/plus/terms-and-conditions/version-1-2/": [
    "https://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.2.pdf"
  ],
  "http://monzo.com/help/monzo-with-friends/split-bill/": [
    "http://monzo.com/help/monzo-with-friends/"
  ],
  "http://monzo.com/blog/celebrating-one-year-of-monzo-business": [
    "http://monzo.com/blog/authors/jordan-shwide"
  ],
  "https://monzo.com/blog/2017/05/11/api-update/": [
    "https://monzo.com/blog/2016/04/21/mondohack-iv/",
    "https://monzo.com/blog/2015/10/01/the-first-mondo-hackathon/",
    "https://monzo.com/blog/authors/jonas-huckestein"
  ],
  "https://monzo.com/help/us-safety-and-security": [
    "https://monzo.com/help/us-safety-and-security/us-why-is-monzo-asking-me-to-take-a-video-during-signup/",
    "https://monzo.com/help/us-safety-and-security/us-fraud-raising-a-dispute/",
    "https://monzo.com/help/us-safety-and-security/us-is-my-money-safe-with-monzo/",
    "https://monzo.com/help/us-safety-and-security/us-reporting-and-issue-raising-a-dispute/",
    "https://monzo.com/help/us-safety-and-security/us-is-monzo-a-bank/",
    "https://monzo.com/help/us-safety-and-security/us-is-my-information-safe-with-monzo/"
  ],
  "http://monzo.com/blog/cash-withdrawals-in-the-european-economic-area-eea-are-now-free": [
    "http://monzo.com/blog/authors/russell-smith"
  ],
  "http://monzo.com/blog/authors/maria-campbell": [
    "http://monzo.com/blog/2016/11/04/living-wage"
  ],
  "https://monzo.com/blog/2021/05/13/supporting-our-customers-through-mental-health-problems": [
    "https://monzo.com/blog/authors/natalie-ledward",
    "https://monzo.com/blog/2018/06/19/gambling-block-self-exclusion",
    "https://monzo.com/blog/2018/09/25/share-with-us"
  ],
  "http://monzo.com/blog/business-banking": [
    "http://monzo.com/blog/business-banking/2",
    "http://monzo.com/blog/business-banking/3"
  ],
  "https://monzo.com/blog/2018/07/02/publishing-our-2018-annual-report": [
    "https://monzo.com/transparency"
  ],
  "https://monzo.com/blog/lets-talk-business/5": [
    "https://monzo.com/blog/business-banking/how-to-start-a-business-in-the-uk",
    "https://monzo.com/blog/monzo-business-banking",
    "https://monzo.com/blog/lets-talk-business/4",
    "https://monzo.com/blog/business-banking/fundraising-for-your-business/"
  ],
  "https://monzo.com/help/business-accounts/change-business-account-tier-web/": [
    "https://monzo.com/i/business/features"
  ],
  "https://monzo.com/blog/authors/richard-dingwall": [
    "https://monzo.com/blog/2018/05/25/just-landed"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-7/": [
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.7.pdf",
    "https://monzo.com/legal/files/premium/monzo-premium-assurant-terms-and-conditions.pdf"
  ],
  "https://monzo.com/blog/2018/09/21/protect-yourself-against-fraud-identity-theft/": [
    "https://monzo.com/blog/2018/06/11/lost-or-stolen-card/"
  ],
  "https://monzo.com/blog/2019/04/17/how-to-get-a-mortgage": [
    "https://monzo.com/blog/2018/09/05/monzo-bank-statements/"
  ],
  "https://monzo.com/legal/business-referral-scheme/terms-and-conditions/version-1-0/": [
    "https://monzo.com/legal/files/business-referral-scheme/monzo-business-referral-scheme-1.0.pdf",
    "https://monzo.com/legal/referral-scheme/terms-and-conditions/"
  ],
  "http://monzo.com/blog/monzo-us-blog/manage-multiple-bank-accounts": [
    "http://monzo.com/blog/authors/thomas-miller"
  ],
  "https://monzo.com/blog/2021/10/12/getting-paid-with-monzo-business": [
    "https://monzo.com/blog/authors/sheri-farsani",
    "https://monzo.com/i/pay-a-monzo-business",
    "https://monzo.com/i/business/features/integrated-accounting/"
  ],
  "https://monzo.com/us/personal-account/": [
    "https://monzo.com/-deeplinks/home/"
  ],
  "https://monzo.com/blog/2022/11/29/budgeting-for-things-that-bring-me-joy-helped-me-pay-off-debt-and-start": [
    "https://monzo.com/blog/i-paid-off-gbp5k-debt-and-saved-gbp8k-for-my-dream-home-deposit"
  ],
  "https://monzo.com/blog/credit-scores/check-your-score": [
    "https://monzo.com/blog/what-is-a-good-credit-score",
    "https://monzo.com/blog/how-to-improve-your-credit-score"
  ],
  "https://monzo.com/blog/2019/04/10/1p-savings-challenge-chart": [
    "https://monzo.com/download"
  ],
  "https://monzo.com/overdrafts/": [
    "https://monzo.com/-deeplinks/overdrafts/",
    "https://monzo.com/i/overdrafts/"
  ],
  "https://monzo.com/blog/emotional-spending-tips": [
    "https://monzo.com/help/budgeting-overdrafts-savings/what-are-locked-pots",
    "https://monzo.com/blog/what-is-deinfluencing-tiktok-save-money",
    "https://monzo.com/blog/2023/03/17/deinfluencing-mindful-shopping-tips",
    "https://monzo.com/help/budgeting-overdrafts-savings/targets-in-trends-web"
  ],
  "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-1/": [
    "http://monzo.com/legal/files/decisions-using-open-banking/terms-and-conditions/version-1-1.pdf"
  ],
  "https://monzo.com/blog/how-money-works/5": [
    "https://monzo.com/blog/2019/01/28/cashback",
    "https://monzo.com/blog/how-money-works/7"
  ],
  "http://monzo.com/legal/plus/terms-and-conditions/version-1-1/": [
    "http://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.1.pdf"
  ],
  "https://monzo.com/blog/authors/beatrice-borbon/7": [
    "https://monzo.com/blog/2018/11/12/november-update",
    "https://monzo.com/blog/2019/02/21/dear-monzo",
    "https://monzo.com/blog/2018/12/11/december-update",
    "https://monzo.com/blog/2018/10/01/october-update"
  ],
  "https://monzo.com/legal/business-account-fee-information/version-1-5/": [
    "https://monzo.com/legal/files/business-account-fee-information/fee-information-1-5.pdf"
  ],
  "https://monzo.com/blog/2019/12/03/understanding-universal-credit": [
    "https://monzo.com/blog/banking-101",
    "https://monzo.com/blog/2018/06/01/getting-bank-account-no-fixed-address"
  ],
  "https://monzo.com/blog/user-research-insight-to-impact-the-art-of-scaling-impact-and-crafting-goal": [
    "https://monzo.com/blog/technology",
    "https://monzo.com/blog/authors/hayley-camille-morgan"
  ],
  "https://monzo.com/blog/authors/emma-vanbrabant": [
    "https://monzo.com/blog/2018/06/26/monzo-time",
    "https://monzo.com/blog/2017/08/01/bottom-nav-bar"
  ],
  "http://monzo.com/help/business-accounts-signup/eligible-businesses/": [
    "http://monzo.com/help/business-accounts-signup/"
  ],
  "http://monzo.com/legal/premium/savings-summary": [
    "http://monzo.com/legal/premium/savings-summary/version-1-0/",
    "http://monzo.com/legal/premium/savings-summary/version-1-1/",
    "http://monzo.com/legal/files/premium/monzo-premium-savings-summary-1.2.pdf",
    "http://monzo.com/legal/premium/savings-summary/version-1-2/"
  ],
  "https://monzo.com/blog/14": [
    "https://monzo.com/blog/16",
    "https://monzo.com/blog/2022/03/08/international-womens-day-2022"
  ],
  "https://monzo.com/blog/how-to-live-on-20-less-money-furlough": [
    "https://monzo.com/blog/2018/09/26/how-to-read-your-payslip/",
    "https://monzo.com/blog/2019/10/08/get-out-of-debt",
    "https://monzo.com/blog/2018/08/10/student-loans-explained/",
    "https://monzo.com/blog/2018/10/25/interest-explained/"
  ],
  "https://monzo.com/blog/how-money-works/2": [
    "https://monzo.com/blog/how-money-works/4",
    "https://monzo.com/blog/2021/01/03/origins-of-money-superstitions",
    "https://monzo.com/blog/2023/02/23/manage-your-money-minimal-effort",
    "https://monzo.com/blog/cash-stuffing-and-other-old-school-ways-to-save-money-with-monzo",
    "https://monzo.com/blog/2023/02/21/build-confidence-managing-money",
    "https://monzo.com/blog/2020/11/24/big-guide-to-borrowing-and-debt"
  ],
  "https://monzo.com/help/legal-stuff/make-complaint-web/": [
    "https://monzo.com/help/legal-stuff/legal-complaint-business-account-web"
  ],
  "https://monzo.com/help/us-budgeting-with-monzo": [
    "https://monzo.com/help/us-budgeting-with-monzo/us-setting-a-goal-on-a-pot/",
    "https://monzo.com/help/us-budgeting-with-monzo/us-what-is-trends/",
    "https://monzo.com/help/us-budgeting-with-monzo/us-what-is-an-emergency-fund-pot/",
    "https://monzo.com/help/us-budgeting-with-monzo/us-what-is-a-credit-card-pot/",
    "https://monzo.com/help/us-budgeting-with-monzo/us-setting-spending-targets/",
    "https://monzo.com/help/us-budgeting-with-monzo/us-what-are-pots/"
  ],
  "https://monzo.com/blog/engineering-culture": [
    "https://monzo.com/blog/2018/06/25/monzos-transparent-engineering-progression-framework",
    "https://monzo.com/blog/2018/06/28/joining-monzo-engineer-onboarding",
    "https://monzo.com/blog/2018/06/27/engineering-management-at-monzo",
    "https://monzo.com/blog/an-engineering-managers-guide-to-the-one-to-one"
  ],
  "https://monzo.com/help/switching-to-monzo/reasons-to-switch/": [
    "https://monzo.com/blog/2019/01/30/tell-your-friends-to-sign-up/"
  ],
  "https://monzo.com/blog/2019/07/24/market-leading-interest-rate-on-monzo-savings-pots": [
    "https://monzo.com/blog/2018/10/22/monzo-fscs-protection/",
    "https://monzo.com/blog/2019/07/24/fixed-term-savings-pot-account",
    "https://monzo.com/blog/authors/max-winston"
  ],
  "https://monzo.com/legal/fee-information/version-1-2/": [
    "https://monzo.com/legal/files/fee-information/version-1-2/fee-information-1.2.pdf"
  ],
  "https://monzo.com/blog/2018/11/30/setting-record-straight": [
    "https://monzo.com/invest/"
  ],
  "http://monzo.com/blog/2022/02/01/monzo-us-blog-monzo-moves-from-beta-to-public-launch-in-the-us": [
    "http://monzo.com/blog/authors/thomas-george"
  ],
  "https://monzo.com/blog/2015/10/30/we-are-ready/": [
    "https://monzo.com/blog/2015/07/03/challenge-session/",
    "https://monzo.com/docs/"
  ],
  "http://monzo.com/legal/overdraft-information/version-1-1/": [
    "http://monzo.com/legal/files/overdraft-information/overdraft-information-1.1.pdf"
  ],
  "http://monzo.com/blog/2020/09/30/mental-health-self-employed": [
    "http://monzo.com/blog/authors/matthew-knight"
  ],
  "http://monzo.com/annual-report/2021/": [
    "http://monzo.com/static/docs/monzo-pillar-3-2021.pdf",
    "http://monzo.com/refer-a-friend/",
    "http://monzo.com/static/docs/monzo-annual-report-2021.pdf",
    "http://monzo.com/i/business"
  ],
  "https://monzo.com/blog/monzo-us-blog/get-paid-early": [
    "https://monzo.com/-deeplinks/add_money"
  ],
  "https://monzo.com/blog/2018/04/05/april-update": [
    "https://monzo.com/blog/2018/03/15/fingerprint-unlock/",
    "https://monzo.com/blog/2018/04/03/switch-to-monzo-current-account-switch-service/"
  ],
  "http://monzo.com/help/app-help/turn-on-biometrics-face-fingerprint-id-web/": [
    "http://monzo.com/help/app-help/"
  ],
  "http://monzo.com/blog/authors/jamie-mcdonald": [
    "http://monzo.com/blog/2022/03/22/preparing-for-mobile-interviews-at-monzo"
  ],
  "http://monzo.com/blog/authors/dani-shipp": [
    "http://monzo.com/blog/2022/11/28/our-borrowing-principles"
  ],
  "http://monzo.com/blog/how-we-built-a-queue-on-top-of-kafka": [
    "http://monzo.com/blog/authors/constantijn-schepens"
  ],
  "http://monzo.com/blog/2023/10/12/protecting-our-platform-from-spikes-in-usage-by-reducing-load-from-the-monzo": [
    "http://monzo.com/blog/authors/jacob"
  ],
  "https://monzo.com/blog/2019/08/22/money-in-love-craig-and-nichola": [
    "https://monzo.com/blog/money-in-love"
  ],
  "https://monzo.com/help/business-accounts-signup/business-verifying-persons-of-significant-control-at-sign-up/": [
    "https://monzo.com/help/opening-an-account/add-and-manage-members"
  ],
  "https://monzo.com/blog/research-findings-at-monzo": [
    "https://monzo.com/blog/authors/samantha-davies"
  ],
  "https://monzo.com/help/business-accounts-signup/monzo-business-signup-existing-personal-account/": [
    "https://monzo.com/help/opening-an-account/business-banking-cass"
  ],
  "https://monzo.com/blog/71": [
    "https://monzo.com/blog/2017/01/31/fincrime-and-security-week-introduction",
    "https://monzo.com/blog/69"
  ],
  "https://monzo.com/blog/2017/05/05/why-payments-are-declined": [
    "https://monzo.com/blog/authors/kieran-leblanc",
    "https://monzo.com/blog/2015/12/02/3-second-sandwich/"
  ],
  "http://monzo.com/features/savings": [
    "http://monzo.com/-deeplinks/create_savings_pot/",
    "http://monzo.com/features/savings/past-interest-rates/"
  ],
  "http://monzo.com/blog/monzo-hq/8": [
    "http://monzo.com/blog/monzo-hq/6",
    "http://monzo.com/blog/monzo-hq/7",
    "http://monzo.com/blog/2015/06/01/welcome-to-mondo"
  ],
  "https://monzo.com/blog/2018/11/20/why-we-are-lending": [
    "https://monzo.com/blog/authors/richard-cadman"
  ],
  "https://monzo.com/blog/2022/10/04/product-management-at-monzo-the-interview-process": [
    "https://monzo.com/blog/authors/eleni-pavlovic"
  ],
  "https://monzo.com/blog/authors/natasha-vernier": [
    "https://monzo.com/blog/2017/11/03/simple-signup-KYC"
  ],
  "http://monzo.com/blog/2019/06/20/why-bank-transfers-failed-on-30th-may-2019": [
    "http://monzo.com/blog/authors/nicholas-robinson-wall"
  ],
  "https://monzo.com/blog/2018/07/06/celebrating-pride": [
    "https://monzo.com/blog/2018/03/22/diversity-and-inclusion/",
    "https://monzo.com/blog/authors/angus-preston"
  ],
  "https://monzo.com/blog/2019/10/08/get-out-of-debt": [
    "https://monzo.com/blog/2018/10/05/secured-unsecured-credit",
    "https://monzo.com/blog/2019/04/09/dear-monzo-frustrated-in-debt",
    "https://monzo.com/blog/2018/08/08/better-credit-score"
  ],
  "https://monzo.com/blog/monzo-us-blog/manage-multiple-bank-accounts": [
    "https://monzo.com/blog/authors/thomas-miller"
  ],
  "https://monzo.com/blog/first-three-months-product-designer": [
    "https://monzo.com/blog/authors/heldiney-pereira"
  ],
  "https://monzo.com/blog/2019/01/21/get-fit-on-a-budget": [
    "https://monzo.com/blog/2018/12/20/self-care-mental-health/"
  ],
  "https://monzo.com/blog/2018/07/11/working-towards-company-goals": [
    "https://monzo.com/blog/2018/04/24/help-tab/"
  ],
  "https://monzo.com/blog/2018/05/09/new-categories": [
    "https://monzo.com/blog/authors/hugo-cornejo"
  ],
  "https://monzo.com/legal/business-account-decisions-using-open-banking/terms-and-conditions": [
    "https://monzo.com/legal/business-account-decisions-using-open-banking/terms-and-conditions/version-1-0/",
    "https://monzo.com/legal/files/business-account-decisions-using-open-banking/terms-and-conditions/version-1-0.pdf"
  ],
  "http://monzo.com/blog/dont-get-monzo": ["http://monzo.com/blog/monzo-101"],
  "https://monzo.com/blog/an-update-on-our-gender-pay-gap-2023": [
    "https://monzo.com/blog/authors/kirsten-doherty"
  ],
  "https://monzo.com/blog/women-in-finance-charter-update": [
    "https://monzo.com/blog/authors/jacquetta-bridge"
  ],
  "https://monzo.com/blog/authors/laura-whateley": [
    "https://monzo.com/blog/2019/06/18/dear-monzo-debt-and-credit-scores",
    "https://monzo.com/blog/dear-monzo-wheres-the-best-place-to-put-my-savings",
    "https://monzo.com/blog/2019/08/29/dear-monzo-should-i-pay-off-my-student-loan-early",
    "https://monzo.com/blog/2019/05/22/dear-monzo-first-time-buyer"
  ],
  "http://monzo.com/supporting-all-our-customers/": [
    "http://monzo.com/i/gambling-block",
    "http://monzo.com/i/share-with-us/",
    "http://monzo.com/i/money-worries"
  ],
  "https://monzo.com/blog/how-we-moved-our-faster-payments-connection-in-house": [
    "https://monzo.com/blog/authors/wayne-tsai"
  ],
  "http://monzo.com/help/us-saving-with-monzo/us-do-pots-earn-interest/": [
    "http://monzo.com/help/us-saving-with-monzo/"
  ],
  "https://monzo.com/blog/2022/02/15/securely-delegating-trust-with-digital-signatures-and-secret-storage-systems": [
    "https://monzo.com/blog/authors/awn-umar"
  ],
  "http://monzo.com/blog/2019/05/15/gender-pay-gap": [
    "http://monzo.com/blog/authors/tara-mansfield"
  ],
  "http://monzo.com/help/us-updating-your-profile/us-updating-your-legal-or-preferred-name-web/": [
    "http://monzo.com/help/us-updating-your-profile/"
  ],
  "https://monzo.com/business-banking/help/": [
    "https://monzo.com/help/business-accounts-signup/",
    "https://monzo.com/help/business-accounts/",
    "https://monzo.com/help/business-accounts"
  ],
  "http://monzo.com/legal/premium/fee-information": [
    "http://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap/",
    "http://monzo.com/legal/premium/fee-information/version-1-0/",
    "http://monzo.com/legal/premium/fee-information/version-1-2/",
    "http://monzo.com/legal/files/premium/monzo-premium-fee-information-1.3.pdf",
    "http://monzo.com/legal/premium/fee-information/version-1-1/",
    "http://monzo.com/legal/premium/fee-information/version-1-3/"
  ],
  "https://monzo.com/blog/authors/jack-cully": [
    "https://monzo.com/blog/2020/02/24/credit-scores",
    "https://monzo.com/blog/2019/06/24/business-banking-update"
  ],
  "https://monzo.com/blog/is-monzo-premium-worth-it": [
    "https://monzo.com/i/monzo-premium/",
    "https://monzo.com/blog/authors/rore-erica-okoh"
  ],
  "https://monzo.com/blog/monzo-hq/8": [
    "https://monzo.com/blog/monzo-hq/7",
    "https://monzo.com/blog/monzo-hq/6"
  ],
  "https://monzo.com/blog/monzo-hq/6": [
    "https://monzo.com/blog/2017/07/03/monzo-mixtape",
    "https://monzo.com/blog/2017/06/23/new-beginnings-at-Monzo",
    "https://monzo.com/blog/2017/06/09/journey-of-a-card",
    "https://monzo.com/blog/2017/09/29/android-engineers",
    "https://monzo.com/blog/2017/08/09/complaints-at-monzo",
    "https://monzo.com/blog/2017/06/30/tried-and-tested",
    "https://monzo.com/blog/2017/06/07/referral-bonus"
  ],
  "https://monzo.com/help/monzo-fraud-category/stay-safe-online/": [
    "https://monzo.com/help/monzo-fraud-category/",
    "https://monzo.com/help/monzo-fraud-category/stay-safe-using-public-wifi/",
    "https://monzo.com/help/monzo-fraud-category/two-factor-authentication/",
    "https://monzo.com/help/monzo-fraud-category/keep-your-account-safe/",
    "https://monzo.com/help/monzo-fraud-category/stay-safe-working-from-home/"
  ],
  "https://monzo.com/blog/monzo-premium-travel-insurance-provider-update": [
    "https://monzo.com/legal/files/premium/monzo-premium-zurich-ipid.pdf",
    "https://monzo.com/download/"
  ],
  "https://monzo.com/blog/2016/09/20/monzo-journals-philippines": [
    "https://monzo.com/blog/2016/08/16/travel-reports/"
  ],
  "http://monzo.com/blog/2020/07/06/easy-bank-transfers": [
    "http://monzo.com/blog/authors/michael-leung",
    "http://monzo.com/blog/authors/kieran-mchugh"
  ],
  "https://monzo.com/blog/2021/07/19/meet-richard-a-monzo-us-backend-engineer": [
    "https://monzo.com/blog/authors/dillon-van-auken"
  ],
  "https://monzo.com/blog/2022/12/05how-to-balance-spending-and-saving": [
    "https://monzo.com/blog/2019/02/06/zero-sum-budgeting"
  ],
  "https://monzo.com/blog/current-account-guides/how-much-can-you-withdraw-from-an-atm/": [
    "https://monzo.com/blog/authors/georgia-johnson"
  ],
  "http://monzo.com/blog/authors/tom-davies": [
    "http://monzo.com/blog/2019/08/13/our-lending-principles"
  ],
  "https://monzo.com/blog/investments": [
    "https://monzo.com/blog/2023/09/12/4-things-to-know-when-investing",
    "https://monzo.com/blog/2023/09/12/staying-calm-when-your-investment-value-dips",
    "https://monzo.com/blog/2023/09/12/6-common-investing-myths-and-the-truths"
  ],
  "https://monzo.com/current-account/": [
    "https://monzo.com/i/monzo-plus/",
    "https://monzo.com/i/monzo-account/",
    "https://monzo.com/features/switch/"
  ],
  "http://monzo.com/help/monzo-premium/paid-interest/": [
    "http://monzo.com/help/monzo-premium/"
  ],
  "https://monzo.com/blog/product-updates": [
    "https://monzo.com/blog/product-updates/11",
    "https://monzo.com/blog/2023/08/01/see-into-the-future-of-monzo",
    "https://monzo.com/blog/targets-in-trends/",
    "https://monzo.com/blog/2022/05/04/view-cvc-in-app",
    "https://monzo.com/blog/product-updates/2",
    "https://monzo.com/blog/product-updates/3",
    "https://monzo.com/blog/monzo-reports-to-all-credit-reference-agencies-cras-equifax-experian-transunion"
  ],
  "http://monzo.com/help/investments/transfer-gia/": [
    "http://monzo.com/help/investments/"
  ],
  "https://monzo.com/blog/authors/maria-campbell": [
    "https://monzo.com/blog/2016/11/04/living-wage"
  ],
  "https://monzo.com/legal/plus/terms-and-conditions/version-1-3/": [
    "https://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.3.pdf"
  ],
  "https://monzo.com/blog/2020/09/24/amex-in-monzo-plus": [
    "https://monzo.com/-deeplinks/paid/"
  ],
  "http://monzo.com/blog/bereavments-how-we-can-help-if-someone-with-a-monzo-account-dies": [
    "http://monzo.com/blog/authors/aongola-victor-simuyemba",
    "http://monzo.com/blog/customer-support"
  ],
  "https://monzo.com/blog/2016/09/07/our-approach-to-overdrafts": [
    "https://monzo.com/blog/authors/paul-rippon"
  ],
  "https://monzo.com/blog/2017/04/05/profile-pictures-update": [
    "https://monzo.com/blog/2017/03/28/i-forgot-my-pin/"
  ],
  "https://monzo.com/blog/2019/06/20/why-bank-transfers-failed-on-30th-may-2019": [
    "https://monzo.com/blog/2018/09/20/on-call/",
    "https://monzo.com/blog/2019/05/30/faster-payments-issue/",
    "https://monzo.com/blog/authors/nicholas-robinson-wall"
  ],
  "https://monzo.com/blog/2019/07/31/how-we-experiment-at-monzo": [
    "https://monzo.com/features/energy-switching"
  ],
  "http://monzo.com/blog/2019/07/08/accounting-tools-monzo-business-account": [
    "http://monzo.com/blog/authors/hernan-dieguez"
  ],
  "http://monzo.com/blog/authors/natalie-ledward": [
    "http://monzo.com/blog/2020/11/25/how-to-cope-with-reduced-work-hours-according-to-the-experts",
    "http://monzo.com/blog/2018/09/25/share-with-us",
    "http://monzo.com/blog/2018/05/16/gambling-self-exclusion",
    "http://monzo.com/blog/2020/12/17/how-to-cope-with-being-made-redundant"
  ],
  "http://monzo.com/help/us-adding-money/us-how-can-i-add-money-to-my-account/": [
    "http://monzo.com/help/us-adding-money/"
  ],
  "http://monzo.com/blog/the-extra-costs-of-living-with-adhd": [
    "http://monzo.com/blog/authors/team-monzo"
  ],
  "http://monzo.com/help/us-monzo-with-friends/us-how-do-i-know-if-im-able-to-refer-friends-to-monzo/": [
    "http://monzo.com/help/us-monzo-with-friends/"
  ],
  "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions": [
    "http://monzo.com/legal/files/decisions-using-open-banking/terms-and-conditions/version-1-2.pdf",
    "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-2/",
    "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-0/",
    "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-1/"
  ],
  "https://monzo.com/blog/2017/11/14/nfc-card-activation": [
    "https://monzo.com/blog/authors/kavi-dhokia"
  ],
  "http://monzo.com/legal/plus/fee-information/version-1-2/": [
    "http://monzo.com/legal/files/plus/monzo-plus-fee-information-1.2.pdf"
  ],
  "https://monzo.com/blog/2019/05/07/how-to-save-money-with-monzo": [
    "https://monzo.com/blog/2019/03/18/a-trick-to-stop-you-spending-your-savings/",
    "https://monzo.com/blog/2018/06/07/monzo-on-ifttt/"
  ],
  "https://monzo.com/blog/open-palm-tech-donate": [
    "https://monzo.com/blog/authors/jess-bilcock"
  ],
  "https://monzo.com/blog/current-account-guides/how-long-should-you-keep-bank-statements/": [
    "https://monzo.com/blog/2019/09/03/how-much-can-you-withdraw-from-an-atm"
  ],
  "https://monzo.com/legal/loan-information": [
    "https://monzo.com/legal/files/loan-information/loan-information-1.0.pdf",
    "https://monzo.com/legal/loan-information/version-1-0/"
  ],
  "https://monzo.com/blog/2019/05/15/gender-pay-gap": [
    "https://monzo.com/blog/2018/04/12/gender-pay-gap/",
    "https://monzo.com/blog/authors/tara-mansfield"
  ],
  "http://monzo.com/blog/2019/09/08/why-monzo-wasnt-working-on-july-29th": [
    "http://monzo.com/blog/authors/suhail-patel",
    "http://monzo.com/blog/authors/chris-evans"
  ],
  "https://monzo.com/blog/2017/12/08/monzo-mixtape-two": [
    "https://monzo.com/blog/2017/07/03/monzo-mixtape/"
  ],
  "https://monzo.com/blog/13": [
    "https://monzo.com/blog/14",
    "https://monzo.com/blog/15"
  ],
  "https://monzo.com/blog/authors/natalie-gil/6": [
    "https://monzo.com/blog/authors/natalie-gil/5",
    "https://monzo.com/blog/tax-money-2019-general-election"
  ],
  "https://monzo.com/blog/2017/09/01/open-office-august": [
    "https://monzo.com/hotchip/",
    "https://monzo.com/blog/2017/07/17/current-account-preview/"
  ],
  "https://monzo.com/help/monzo-plus/paid-interest/": [
    "https://monzo.com/-deeplinks/paid"
  ],
  "https://monzo.com/legal/investments/order-execution-policy": [
    "https://monzo.com/legal/investments/order-execution-policy/version-1-0/",
    "https://monzo.com/legal/files/investments/order-execution-policy-1.0.pdf"
  ],
  "https://monzo.com/blog/authors/natalie-gil/2": [
    "https://monzo.com/blog/authors/natalie-gil/4"
  ],
  "http://monzo.com/help/switching-to-monzo": [
    "http://monzo.com/help/switching-to-monzo/cass-status-update/",
    "http://monzo.com/help/switching-to-monzo/cass-full-switch-what/",
    "http://monzo.com/help/switching-to-monzo/overdraft-cass/",
    "http://monzo.com/help/switching-to-monzo/cass-what/",
    "http://monzo.com/help/switching-to-monzo/cass-cancel-how-to/",
    "http://monzo.com/help/switching-to-monzo/reasons-to-switch/"
  ],
  "https://monzo.com/blog/2019/04/03/deploying-envoy-proxy": [
    "https://monzo.com/blog/2019/01/15/crowdfunding-technology-testing/",
    "https://monzo.com/blog/2016/09/19/building-a-modern-bank-backend/"
  ],
  "https://monzo.com/help/us-budgeting-with-monzo/us-what-is-a-credit-card-pot/": [
    "https://monzo.com/help/us-budgeting-with-monzo/"
  ],
  "https://monzo.com/blog/6": ["https://monzo.com/blog/8"],
  "http://monzo.com/blog/2019/05/13/supporting-vulnerable-customers": [
    "http://monzo.com/blog/authors/richard-cook"
  ],
  "https://monzo.com/blog/make-your-side-hustle-your-main-hustle": [
    "https://monzo.com/blog/authors/elizabeth-hibbert",
    "https://monzo.com/blog/business-banking/creating-a-business-plan"
  ],
  "https://monzo.com/blog/instant-access-savings-are-here": [
    "https://monzo.com/blog/authors/buki-sule"
  ],
  "https://monzo.com/blog/2019/05/23/protect-yourself-agains-app-fraud": [
    "https://monzo.com/blog/authors/mikey-morton"
  ],
  "https://monzo.com/monzo-premium/worldwide-travel-insurance/": [
    "https://monzo.com/help/monzo-premium/qover-travel-insurance-pre-existing/"
  ],
  "https://monzo.com/blog/authors/robin-bilgil": [
    "https://monzo.com/blog/2019/01/14/crowdfunding-technology-backend-architecture",
    "https://monzo.com/blog/2018/10/09/bill-splitting"
  ],
  "https://monzo.com/blog/2019/01/15/crowdfunding-technology-testing": [
    "https://monzo.com/blog/2019/01/14/crowdfunding-technology-backend-architecture/",
    "https://monzo.com/blog/2018/07/27/how-we-monitor-monzo/",
    "https://monzo.com/blog/authors/tim-radvan"
  ],
  "http://monzo.com/blog/2019/09/26/introducing-salary-sorter-and-bills-pots": [
    "http://monzo.com/blog/authors/simon-amor"
  ],
  "https://monzo.com/legal/plus/terms-and-conditions/version-1-1/": [
    "https://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.1.pdf"
  ],
  "https://monzo.com/blog/controlling-outbound-traffic-from-kubernetes": [
    "https://monzo.com/blog/authors/jack-kleeman",
    "https://monzo.com/blog/authors/jack-kleeman/"
  ],
  "http://monzo.com/blog/technology": [
    "http://monzo.com/blog/technology/3",
    "http://monzo.com/blog/technology/2",
    "http://monzo.com/blog/technology/8"
  ],
  "https://monzo.com/blog/2020/12/17/how-to-cope-with-being-made-redundant": [
    "https://monzo.com/blog/authors/william-masters",
    "https://monzo.com/blog/authors/stepchange"
  ],
  "https://monzo.com/blog/receive-international-payments": [
    "https://monzo.com/blog/product-updates",
    "https://monzo.com/blog/authors/kushal-babla"
  ],
  "https://monzo.com/blog/2017/01/27/designing-product-mental-health-mind": [
    "https://monzo.com/static/images/blog/2017-01-27-designing-mental-health-mind/1-review@2x.png",
    "https://monzo.com/static/images/blog/2017-01-27-designing-mental-health-mind/4-suggest@2x.png",
    "https://monzo.com/static/images/blog/2017-01-27-designing-mental-health-mind/3-contact@2x.png",
    "https://monzo.com/static/images/blog/2017-01-27-designing-mental-health-mind/2-alert@2x.png",
    "https://monzo.com/blog/authors/zander-brade"
  ],
  "http://monzo.com/legal/plus/savings-summary/version-1-1/": [
    "http://monzo.com/legal/files/plus/monzo-plus-savings-summary-1.1.pdf"
  ],
  "https://monzo.com/legal/fee-information/version-1-4/": [
    "https://monzo.com/legal/files/fee-information/version-1-4/fee-information-1.4.pdf"
  ],
  "https://monzo.com/blog/hmrc-scam/": [
    "https://monzo.com/blog/authors/roxy-alexander",
    "https://monzo.com/blog/fraud"
  ],
  "http://monzo.com/help/switching-to-monzo/cass-cancel-how-to/": [
    "http://monzo.com/help/switching-to-monzo/"
  ],
  "https://monzo.com/blog/2019/03/21/diversity-and-inclusion": [
    "https://monzo.com/blog/2018/11/20/women-in-finance-update/",
    "https://monzo.com/blog/mental-health/"
  ],
  "http://monzo.com/blog/monzo-101": [
    "http://monzo.com/blog/monzo-101/3",
    "http://monzo.com/blog/research-findings-at-monzo",
    "http://monzo.com/blog/monzo-101/2",
    "http://monzo.com/blog/monzo-101/4"
  ],
  "http://monzo.com/blog/monzo-premium": [
    "http://monzo.com/blog/2020/09/24/amex-in-monzo-plus"
  ],
  "http://monzo.com/blog/2": [
    "http://monzo.com/blog/how-we-wrote-5-million-years-in-monzo",
    "http://monzo.com/blog/2023/11/24/a-day-in-the-life-of-a-technical-programme-manager-at-monzo",
    "http://monzo.com/blog/building-year-in-monzo-as-told-by-engineering",
    "http://monzo.com/blog/how-we-unified-our-customers-activity-on-the-new-home-screen",
    "http://monzo.com/blog/2023/12/14/securing-admin-access-to-monzos-platform/",
    "http://monzo.com/blog/how-we-built-year-in-monzo-unlocking-the-data-magic",
    "http://monzo.com/blog/2019/07/19/should-i-pay-in-local-currency-or-pounds-gbp-when-i-use-monzo-abroad",
    "http://monzo.com/blog/4"
  ],
  "https://monzo.com/blog/2022/12/15/building-an-extension-framework-for-dbt": [
    "https://monzo.com/blog/authors/theo-windebank",
    "https://monzo.com/blog/2021/10/14/an-introduction-to-monzos-data-stack"
  ],
  "https://monzo.com/blog/2018/04/03/switch-to-monzo-current-account-switch-service": [
    "https://monzo.com/blog/authors/daniel-cannon",
    "https://monzo.com/blog/2018/02/01/upgrade-bank-accounts/"
  ],
  "https://monzo.com/help/switching-to-monzo/overdraft-cass/": [
    "https://monzo.com/help/switching-to-monzo/"
  ],
  "https://monzo.com/blog/how-monzos-gambling-block-helped-me-beat-my-gambling-addiction-and-pay-off-my-debt": [
    "https://monzo.com/blog/how-i-use-monzo"
  ],
  "https://monzo.com/blog/fraud/2": [
    "https://monzo.com/blog/protect-yourself-from-fraud-never-share-your-pin",
    "https://monzo.com/blog/2019/06/17/monzo-called-to-say-i-should-transfer-money-to-a-safe-account",
    "https://monzo.com/blog/2019/06/05/should-i-bank-transfer-money-to-a-safe-account"
  ],
  "https://monzo.com/blog/2020/11/11/customer-support-design": [
    "https://monzo.com/blog/authors/paul-blunden"
  ],
  "http://monzo.com/help/us-signing-up/us-referral-general-info/": [
    "http://monzo.com/help/us-signing-up/"
  ],
  "https://monzo.com/blog/how-weve-evolved-on-call-at-monzo": [
    "https://monzo.com/blog/authors/shubheksha-jalan"
  ],
  "http://monzo.com/blog/77": [
    "http://monzo.com/blog/76",
    "http://monzo.com/blog/75"
  ],
  "https://monzo.com/blog/2019/05/10/should-i-get-monzo": [
    "https://monzo.com/blog/how-we-protect-you/",
    "https://monzo.com/blog/2019/01/16/monzo-plan-ahead/",
    "https://monzo.com/blog/2017/02/24/cloudbleed/",
    "https://monzo.com/blog/2018/09/07/ba-data-breach/"
  ],
  "https://monzo.com/blog/2022/07/22/a-week-in-the-life-of-a-product-manager-at-monzo": [
    "https://monzo.com/blog/2022/07/05/my-first-3-months-at-monzo-as-a-product-manager",
    "https://monzo.com/blog/product-management",
    "https://monzo.com/blog/2022/05/24/pellets-not-cannonballs-how-we-experiment-at-monzo/",
    "https://monzo.com/blog/2022/07/06/researching-operations-at-monzo-building-a-product-our-customers-never-see"
  ],
  "https://monzo.com/blog/2018/08/15/manage-your-bills-with-monzo": [
    "https://monzo.com/blog/2018/07/10/making-quarterly-goals-public/"
  ],
  "https://monzo.com/blog/product-updates/6": [
    "https://monzo.com/blog/2018/08/15/split-the-bill",
    "https://monzo.com/blog/2018/09/18/ios-app-performance",
    "https://monzo.com/blog/2018/08/21/savings-update",
    "https://monzo.com/blog/2018/08/17/pin-lock-update"
  ],
  "https://monzo.com/blog/2022/03/21/data-hiring-at-monzo": [
    "https://monzo.com/blog/authors/niamh-joyce"
  ],
  "https://monzo.com/blog/2018/12/06/find-your-saving-style": [
    "https://monzo.com/blog/2018/07/19/set-savings-goals/"
  ],
  "http://monzo.com/blog/lets-talk-business/5": [
    "http://monzo.com/blog/business-banking/how-to-start-a-business-in-the-uk",
    "http://monzo.com/blog/business-banking/fundraising-for-your-business/",
    "http://monzo.com/blog/monzo-business-banking"
  ],
  "https://monzo.com/blog/2019/01/28/cashback": [
    "https://monzo.com/blog/authors/mary-sanigar",
    "https://monzo.com/features/cashback/"
  ],
  "http://monzo.com/legal/plus/terms-and-conditions/version-1-2/": [
    "http://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.2.pdf"
  ],
  "http://monzo.com/blog/2023/08/01/see-into-the-future-of-monzo": [
    "http://monzo.com/blog/authors/dani-shipp"
  ],
  "https://monzo.com/legal/fee-information/version-1-5/": [
    "https://monzo.com/legal/files/fee-information/version-1-5/fee-information-1.5.pdf"
  ],
  "https://monzo.com/blog/current-account-guides/when-did-i-open-my-account/": [
    "https://monzo.com/blog/2018/04/30/switching-bank-accounts-overdraft/",
    "https://monzo.com/blog/2019/09/05/how-long-should-you-keep-bank-statements"
  ],
  "https://monzo.com/blog/looking-for-a-budgeting-app-supercharge-your-savings-and-budget-better-with": [
    "https://monzo.com/blog/2019/11/15/how-do-i-get-out-of-my-overdraft"
  ],
  "https://monzo.com/legal/business-account-fee-information/version-1-1/": [
    "https://monzo.com/legal/files/business-account-fee-information/fee-glossary.pdf"
  ],
  "https://monzo.com/blog/2023/06/01/finding-your-fit-in-a-new-product-team/": [
    "https://monzo.com/blog/authors/carl-worricker"
  ],
  "https://monzo.com/blog/monzo-us-blog/first-six-months-android-engineer-backend-engineer/": [
    "https://monzo.com/blog/authors/ryan-simon"
  ],
  "http://monzo.com/blog/2020/11/24/big-guide-to-borrowing-and-debt": [
    "http://monzo.com/blog/authors/jacq-bridge"
  ],
  "https://monzo.com/blog/authors/monzo": [
    "https://monzo.com/blog/small-change-control",
    "https://monzo.com/blog/small-change-manage"
  ],
  "http://monzo.com/blog/2021/01/03/origins-of-money-superstitions": [
    "http://monzo.com/blog/authors/ella-moody"
  ],
  "https://monzo.com/blog/our-2020-diversity-and-inclusion-report": [
    "https://monzo.com/blog/2018/04/12/gender-pay-gap"
  ],
  "http://monzo.com/blog/year-in-monzo-2020": [
    "http://monzo.com/blog/authors/tom-davies"
  ],
  "https://monzo.com/blog/2018/06/26/monzo-time": [
    "https://monzo.com/blog/engineering-culture",
    "https://monzo.com/blog/2017/11/14/nfc-card-activation/"
  ],
  "http://monzo.com/legal/premium/fee-information/version-1-2/": [
    "http://monzo.com/legal/files/premium/monzo-premium-fee-information-1.2.pdf"
  ],
  "http://monzo.com/help/emergencies/monzo-card-blocked/": [
    "http://monzo.com/help/emergencies/monzo-card-lost-damaged-stolen/"
  ],
  "https://monzo.com/blog/monzo-101/2": [
    "https://monzo.com/blog/2019/08/30/is-monzo-a-debit-card",
    "https://monzo.com/blog/2019/10/14/39-times-you-absolutely-hated-monzo",
    "https://monzo.com/blog/2019/09/10/reasons-not-to-get-monzo",
    "https://monzo.com/blog/2019/08/28/open-a-bank-account-as-a-student-without-proof-of-address",
    "https://monzo.com/blog/2019/08/09/how-to-get-the-most-out-of-monzo"
  ],
  "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions": [
    "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-0/",
    "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-1/",
    "http://monzo.com/legal/files/plus/monzo-plus-other-accounts-in-monzo-terms-and-conditions/version-1-2.pdf",
    "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-2/",
    "http://monzo.com/legal/plus/terms-and-conditions/",
    "http://monzo.com/legal/premium/terms-and-conditions/"
  ],
  "https://monzo.com/help/cashback/cashback-offers/": [
    "https://monzo.com/-deeplinks/cashback",
    "https://monzo.com/help/cashback/"
  ],
  "https://monzo.com/business-banking/how-to-open-a-monzo-business-account/": [
    "https://monzo.com/help/business-accounts-signup/business-verifying-persons-of-significant-control"
  ],
  "https://monzo.com/blog/authors/richard-cook": [
    "https://monzo.com/blog/i-quit-smoking",
    "https://monzo.com/blog/2019/11/13/save-money-when-you-tweet-using-monzo",
    "https://monzo.com/blog/2019/08/01/meet-bekki",
    "https://monzo.com/blog/authors/richard-cook/2",
    "https://monzo.com/blog/2018/11/09/employee-social-media-guidelines"
  ],
  "http://monzo.com/help/travelling/monzo-card-accepted-everywhere/": [
    "http://monzo.com/help/travelling/"
  ],
  "https://monzo.com/blog/how-to-get-a-loan-with-bad-credit": [
    "https://monzo.com/i/current-account",
    "https://monzo.com/i/overdrafts"
  ],
  "https://monzo.com/features/16-plus/": [
    "https://monzo.com/help/travelling/fees-charges-abroad"
  ],
  "https://monzo.com/help/budgeting-overdrafts-savings/round-up-app": [
    "https://monzo.com/help/budgeting-overdrafts-savings/"
  ],
  "https://monzo.com/blog/mental-health/2": [
    "https://monzo.com/blog/2018/05/18/voluntary-disclosure",
    "https://monzo.com/blog/2018/05/15/meet-vulnerable-customers-team",
    "https://monzo.com/blog/2018/05/18/mindfulness-and-wellbeing"
  ],
  "https://monzo.com/blog/2022/03/23/demystifying-the-backend-engineering-interview-process": [
    "https://monzo.com/blog/authors/suhail-patel"
  ],
  "https://monzo.com/blog/2017/03/09/diversity-and-inclusion/": [
    "https://monzo.com/blog/2016/11/04/living-wage/",
    "https://monzo.com/blog/2017/02/03/fighting-fraud-with-machine-learning",
    "https://monzo.com/blog/authors/maria-campbell",
    "https://monzo.com/blog/2017/01/27/designing-product-mental-health-mind",
    "https://monzo.com/blog/2015/11/16/diversity-debt/"
  ],
  "https://monzo.com/blog/73": [
    "https://monzo.com/blog/2016/06/03/ask-us-anything-join-the-forum",
    "https://monzo.com/blog/2016/06/13/new-mondo-changing-our-name",
    "https://monzo.com/blog/2015/12/15/why-are-foreign-card-payments-such-a-mess",
    "https://monzo.com/blog/2016/06/23/update-on-our-name-change",
    "https://monzo.com/blog/71",
    "https://monzo.com/blog/2015/12/02/3-second-sandwich"
  ],
  "http://monzo.com/blog/2019/10/24/whats-next-for-the-new-look-monzo-app": [
    "http://monzo.com/blog/authors/jami-welch"
  ],
  "https://monzo.com/help/us-safety-and-security/us-is-monzo-a-bank/": [
    "https://monzo.com/help/us-safety-and-security/"
  ],
  "https://monzo.com/i/loans/car-loans/": ["https://monzo.com/i/loans/"],
  "https://monzo.com/legal/premium/fee-information/version-1-0/": [
    "https://monzo.com/legal/fee-information/fee-glossary.pdf"
  ],
  "http://monzo.com/blog/2015/11/16/diversity-debt": [
    "http://monzo.com/blog/authors/leah-templeman"
  ],
  "https://monzo.com/blog/authors/constantijn-schepens": [
    "https://monzo.com/blog/2018/11/01/savings-pots"
  ],
  "https://monzo.com/blog/monzo-us-blog/supporting-mental-health-and-wellbeing/": [
    "https://monzo.com/blog/monzo-us-blog/working-to-build-more-empathetic-workplace"
  ],
  "https://monzo.com/help/us-signing-up/us-referral-general-info/": [
    "https://monzo.com/help/us-signing-up/"
  ],
  "https://monzo.com/blog/2023/07/18/five-lessons-from-my-first-year-at-monzo": [
    "https://monzo.com/blog/2019/05/30/everyone-does-user-research-at-monzo",
    "https://monzo.com/blog/authors/tarah-srethwatanakul"
  ],
  "https://monzo.com/blog/bringing-our-faster-payments-connection-in-house": [
    "https://monzo.com/blog/authors/james-berry"
  ],
  "http://monzo.com/blog/how-money-works/4": [
    "http://monzo.com/blog/how-to-get-out-of-your-overdraft",
    "http://monzo.com/blog/how-money-works/6"
  ],
  "https://monzo.com/blog/2018/08/02/urgent-questions": [
    "https://monzo.com/blog/authors/sam-watkin"
  ],
  "https://monzo.com/docs/": [
    "https://monzo.com/blog/2017/05/11/api-update/",
    "https://monzo.com/cdn-cgi/l/email-protection",
    "https://monzo.com/blog/2019/01/31/flux-monzo-launch/"
  ],
  "https://monzo.com/blog/authors/zander-brade": [
    "https://monzo.com/blog/2019/01/17/monzo-product-designer-jobs",
    "https://monzo.com/blog/2018/12/11/design-files-system"
  ],
  "http://monzo.com/blog/2023/01/31/an-update-on-our-gender-pay-gap-jan-2023": [
    "http://monzo.com/blog/diversity-and-inclusion"
  ],
  "https://monzo.com/help/your-needs/mental-health": [
    "https://monzo.com/help/your-needs/"
  ],
  "https://monzo.com/help/service-quality-results/service-quality-results/": [
    "https://monzo.com/help/service-quality-results/"
  ],
  "https://monzo.com/legal/business-account-fee-information/version-1-3/": [
    "https://monzo.com/legal/files/business-account-fee-information/fee-information.pdf"
  ],
  "http://monzo.com/blog/2018/05/18/voluntary-disclosure": [
    "http://monzo.com/blog/authors/stuart-mcfadden"
  ],
  "http://monzo.com/legal/fscs-information/version-1-1/": [
    "http://monzo.com/legal/files/fscs-information/fscs-information-1.1.pdf"
  ],
  "http://monzo.com/legal/privacy-notice/version-1-3/": [
    "http://monzo.com/legal/cookies/"
  ],
  "https://monzo.com/blog/2022/11/16/how-insights-shaped-building-a-0-1-product-monzo-flex": [
    "https://monzo.com/blog/authors/kate-kerr",
    "https://monzo.com/blog/authors/antonio-angrisani"
  ],
  "https://monzo.com/blog/2023/09/12/the-skadnetwork-puzzle-using-data-to-solve-for-effective-performance/": [
    "https://monzo.com/blog/authors/david-robertson",
    "https://monzo.com/blog/data",
    "https://monzo.com/blog/authors/pan-hu"
  ],
  "https://monzo.com/blog/how-i-use-monzo": [
    "https://monzo.com/blog/how-i-use-monzo/2"
  ],
  "http://monzo.com/blog/pots": [
    "http://monzo.com/blog/2019/05/07/how-to-save-money-with-monzo",
    "http://monzo.com/blog/2019/10/15/savings-plan",
    "http://monzo.com/blog/2019/05/17/how-to-save-money",
    "http://monzo.com/blog/envelope-method-budgeting"
  ],
  "https://monzo.com/blog/2019/08/09/how-to-get-the-most-out-of-monzo": [
    "https://monzo.com/blog/2019/06/18/how-to-save-money-on-your-energy"
  ],
  "https://monzo.com/blog/savings-account-guides/lump-sum-savings-account/": [
    "https://monzo.com/blog/2019/02/06/is-monzo-safe",
    "https://monzo.com/blog/2018/10/24/types-of-savings-account"
  ],
  "https://monzo.com/blog/2020/10/15/flux-hm": [
    "https://monzo.com/blog/2019/01/31/flux-monzo-launch"
  ],
  "https://monzo.com/help/us-joint-accounts/us-joint-account-limits/": [
    "https://monzo.com/help/us-joint-accounts/"
  ],
  "https://monzo.com/legal/fee-information/version-1-0/": [
    "https://monzo.com/legal/files/fee-information/version-1-0/fee-glossary.pdf",
    "https://monzo.com/legal/files/fee-information/version-1-0/fee-information.pdf"
  ],
  "https://monzo.com/blog/2018/06/25/monzos-transparent-engineering-progression-framework/": [
    "https://monzo.com/blog/authors/chris-bond"
  ],
  "https://monzo.com/blog/access-universal-credit": [
    "https://monzo.com/blog/coronavirus"
  ],
  "https://monzo.com/help/overdrafts-loans/how-do-overdrafts-work/": [
    "https://monzo.com/help/overdrafts-loans/overdrafts-fees",
    "https://monzo.com/features/overdrafts/"
  ],
  "https://monzo.com/blog/authors/lizzie-morgan": [
    "https://monzo.com/blog/2019/04/04/why-we-block-freeze-close-monzo-accounts"
  ],
  "https://monzo.com/blog/2019/10/23/9-questions-to-ask-yourself-before-you-borrow-money": [
    "https://monzo.com/-deeplinks/loans"
  ],
  "https://monzo.com/blog/2019/10/28/more-people-are-switching-to-monzo-and-away-from-legacy-banks": [
    "https://monzo.com/blog/2019/05/10/should-i-get-monzo"
  ],
  "http://monzo.com/blog/monzo-me": [
    "http://monzo.com/blog/monzo-me/3",
    "http://monzo.com/blog/monzo-me/2"
  ],
  "https://monzo.com/blog/2017/01/31/fincrime-and-security-week-introduction/": [
    "https://monzo.com/blog/authors/gemma-rogers",
    "https://monzo.com/blog/2016/11/30/laying-the-foundation-for-a-data-team/"
  ],
  "https://monzo.com/blog/2017/12/01/top-ups-are-back": [
    "https://monzo.com/blog/2017/11/23/2017-todo-list/"
  ],
  "https://monzo.com/blog/2017/05/22/top-up-with-android-pay": [
    "https://monzo.com/blog/2017/05/08/android-pay-on-monzome/"
  ],
  "https://monzo.com/help/business-accounts/business-getpaid-stripe-signup-web/": [
    "https://monzo.com/help/business-getpaid/stripe-accept-contactless-web"
  ],
  "http://monzo.com/blog/2023/11/24/a-day-in-the-life-of-a-technical-programme-manager-at-monzo": [
    "http://monzo.com/blog/authors/morta-tyree"
  ],
  "https://monzo.com/blog/monzo-us-blog/salary-sorter": [
    "https://monzo.com/blog/authors/thomas-george",
    "https://monzo.com/blog/monzo-us-blog/frequently-asked-questions"
  ],
  "https://monzo.com/blog/2017/08/22/the-help-search-algorithm": [
    "https://monzo.com/blog/authors/nigel-null"
  ],
  "https://monzo.com/help/app-help/turn-on-biometrics-face-fingerprint-id-web/": [
    "https://monzo.com/help/app-help/"
  ],
  "https://monzo.com/help/legal-stuff/privacy-policy": [
    "https://monzo.com/privacy-bank/"
  ],
  "http://monzo.com/blog/how-i-use-monzo": [
    "http://monzo.com/blog/2019/10/01/bills-pots-images",
    "http://monzo.com/blog/how-i-use-monzo/2"
  ],
  "https://monzo.com/blog/2019/06/24/business-banking-update": [
    "http://monzo.com/business",
    "https://monzo.com/blog/2019/02/11/business-banking-alpha/"
  ],
  "http://monzo.com/help/emergencies/": [
    "http://monzo.com/help/emergencies/take-out-cash-atm-locator/",
    "http://monzo.com/help/emergencies/found-monzo-card-web/"
  ],
  "https://monzo.com/blog/2022/07/26/switching-from-customer-service-representative-to-backend-engineer": [
    "https://monzo.com/blog/2021/09/30/documenting-pull-requests-is-as-important-as-writing-good-code",
    "https://monzo.com/blog/authors/duncan-roberts",
    "https://monzo.com/blog/authors/kyle-campbell"
  ],
  "https://monzo.com/i/business/business-switch/": [
    "https://monzo.com/-deeplinks/cass/"
  ],
  "https://monzo.com/blog/engineering-management-at-monzo-technical-leadership-people-support": [
    "https://monzo.com/blog/authors/jimi-hewett"
  ],
  "https://monzo.com/blog/2018/07/25/monzo-reliability-report": [
    "https://monzo.com/blog/2018/06/29/engineering-principles/"
  ],
  "http://monzo.com/help/monzo-flex/applying-for-monzo-flex-and-credit-scores/": [
    "http://monzo.com/help/monzo-flex/"
  ],
  "http://monzo.com/legal/premium/savings-summary/version-1-1/": [
    "http://monzo.com/legal/files/premium/monzo-premium-savings-summary-1.1.pdf"
  ],
  "https://monzo.com/blog/2019/01/08/your-year-in-monzo": [
    "https://monzo.com/blog/2019/01/04/monzo-in-2019/"
  ],
  "https://monzo.com/blog/2018/10/05/secured-unsecured-credit/": [
    "https://monzo.com/blog/2018/08/08/better-credit-score/"
  ],
  "https://monzo.com/help/payments-getting-started/cop-cant-check-account/": [
    "https://monzo.com/blog/2019/05/23/protect-yourself-agains-app-fraud"
  ],
  "https://monzo.com/blog/2020/02/24/credit-scores/": [
    "https://monzo.com/i/monzo-plus",
    "https://monzo.com/blog/credit-scores"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-2-2/": [
    "http://monzo.com/legal/audio/dec-2021-terms-conditions-audio.mp3",
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.2.pdf"
  ],
  "http://monzo.com/blog/youll-be-able-to-make-contactless-payments-up-to-gbp100-to-make-paying-more": [
    "http://monzo.com/blog/authors/milo-thompson"
  ],
  "http://monzo.com/legal/cashback-on-your-loan": [
    "http://monzo.com/legal/cashback-on-your-loan/version-1-0/",
    "http://monzo.com/legal/cashback-on-your-loan/version-1-1/"
  ],
  "https://monzo.com/blog/8": ["https://monzo.com/blog/10"],
  "https://monzo.com/blog/2018/09/20/on-call": [
    "https://monzo.com/blog/2018/07/25/monzo-reliability-report/"
  ],
  "http://monzo.com/blog/authors/constantijn-schepens": [
    "http://monzo.com/blog/2018/11/01/savings-pots"
  ],
  "https://monzo.com/blog/2019/10/02/joint-bank-account": [
    "https://monzo.com/help/joint-accounts/close-joint-account-how-to"
  ],
  "https://monzo.com/blog/2019/08/09/how-were-doing-savings-accounts-differently": [
    "https://monzo.com/blog/authors/indi-pollard",
    "https://monzo.com/blog/2018/06/07/monzo-on-ifttt"
  ],
  "http://monzo.com/legal/premium/fee-information/version-1-0/": [
    "http://monzo.com/legal/fee-information/fee-glossary.pdf"
  ],
  "https://monzo.com/blog/2022/12/13/monzo-magic-hackathon": [
    "https://monzo.com/blog/authors/fernando-fanton",
    "https://monzo.com/blog/authors/bianca-trif"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-1-5/": [
    "https://monzo.com/legal/privacy-bank/"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-8/": [
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.8.pdf"
  ],
  "https://monzo.com/i/salary-sorter": [
    "http://monzo.com/features/switch",
    "https://monzo.com/-deeplinks/add_salary"
  ],
  "https://monzo.com/blog/2018/06/11/lost-or-stolen-card/": [
    "https://monzo.com/blog/2017/02/03/fighting-fraud-with-machine-learning/"
  ],
  "https://monzo.com/help/overdrafts-loans/how-to-open-overdraft/": [
    "https://monzo.com/-deeplinks/overdrafts"
  ],
  "https://monzo.com/blog/authors/dovydas-bartkevicius": [
    "https://monzo.com/blog/2018/08/13/test-3d-secure"
  ],
  "https://monzo.com/help/monzo-with-friends/how-to-pay-someone/": [
    "https://monzo.com/help/monzo-with-friends/"
  ],
  "http://monzo.com/blog/2020/03/18/monzo-us-blog-coronavirus-update": [
    "http://monzo.com/blog/authors/sarah-mathews"
  ],
  "http://monzo.com/blog/2022/06/30/were-launching-in-app-charity-donations": [
    "http://monzo.com/blog/authors/neil-mckeown"
  ],
  "https://monzo.com/blog/2019/07/08/accounting-tools-monzo-business-account": [
    "https://monzo.com/blog/authors/hernan-dieguez"
  ],
  "https://monzo.com/blog/2019/10/11/10-things-to-say-to-your-friend-who-still-refuses-to-get-monzo": [
    "https://monzo.com/transparency/",
    "https://monzo.com/blog/2018/06/28/ticketmaster-breach/"
  ],
  "https://monzo.com/features/cashback/": [
    "https://monzo.com/legal/partner-cashback-terms-and-conditions",
    "https://monzo.com/help/cashback/marketing-permissions"
  ],
  "https://monzo.com/blog/2021/12/16/customise-contactless-limits": [
    "https://monzo.com/blog/youll-be-able-to-make-contactless-payments-up-to-gbp100-to-make-paying-more",
    "https://monzo.com/blog/authors/max-white"
  ],
  "https://monzo.com/blog/how-to-save-the-spare-change-with-round-ups": [
    "https://monzo.com/legal/january-2022-campaign/terms-and-conditions/version-1-0"
  ],
  "http://monzo.com/legal/fscs-information/": [
    "http://monzo.com/legal/fscs-information/version-1-3/",
    "http://monzo.com/legal/fscs-information/version-1-1/",
    "http://monzo.com/legal/files/fscs-information/fscs-information-1.3.pdf",
    "http://monzo.com/legal/fscs-information/version-1-2/"
  ],
  "https://monzo.com/legal/investments/privacy-notice": [
    "https://monzo.com/legal/files/investments/privacy-notice-1.0.pdf",
    "https://monzo.com/legal/investments/privacy-notice/version-1-0/"
  ],
  "https://monzo.com/blog/monzo-us-blog/pots-envelope-budget": [
    "https://monzo.com/help/us-trends/us-what-is-trends",
    "https://monzo.com/help/us-pots/us-what-are-pots"
  ],
  "https://monzo.com/legal/plus/terms-and-conditions/version-1-4/": [
    "https://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.4.pdf"
  ],
  "https://monzo.com/blog/70": ["https://monzo.com/blog/68"],
  "http://monzo.com/legal/fee-information/version-1-4/": [
    "http://monzo.com/legal/files/fee-information/version-1-4/fee-information-1.4.pdf"
  ],
  "http://monzo.com/blog/gender-pay-gap-update-april-2020-and-april-2021": [
    "http://monzo.com/blog/authors/kirsten-doherty"
  ],
  "https://monzo.com/blog/2023/11/24/a-day-in-the-life-of-a-technical-programme-manager-at-monzo": [
    "https://monzo.com/blog/authors/morta-tyree"
  ],
  "https://monzo.com/help/monzo-flex/Two-ways-to-flex/": [
    "https://monzo.com/help/monzo-flex/monzo-flex-and-section-75"
  ],
  "https://monzo.com/blog/2020/03/11/monzo-us-blog-us-update-waitlist": [
    "https://monzo.com/usa/"
  ],
  "https://monzo.com/blog/2022/05/26/humans-who-can-rpc-securing-staff-access-to-microservices": [
    "https://monzo.com/blog/authors/sam-wood"
  ],
  "https://monzo.com/blog/2022/09/29/migrating-our-monorepo-seamlessly-from-dep-to-go-modules": [
    "https://monzo.com/blog/authors/tom-preston"
  ],
  "http://monzo.com/blog/2018/07/06/celebrating-pride": [
    "http://monzo.com/blog/authors/angus-preston"
  ],
  "http://monzo.com/blog/2019/08/20/monzo-now-lets-you-get-paid-a-day-early-for-free": [
    "http://monzo.com/blog/authors/jarno-wolf"
  ],
  "https://monzo.com/blog/2019/05/03/writing-clear-terms-and-conditions": [
    "https://monzo.com/blog/2018/05/22/big-news-about-small-print/",
    "https://monzo.com/blog/2018/03/20/terms-and-conditions-monzo/",
    "https://monzo.com/blog/authors/harry-ashbridge"
  ],
  "https://monzo.com/blog/authors/bradley-kemp": [
    "https://monzo.com/blog/2022/08/05/scaling-our-security-detection-pipeline-with-sigma"
  ],
  "https://monzo.com/legal/mobile-operating-system-support-policy/": [
    "https://monzo.com/blog/2022/01/28/keep-your-phone-and-monzo-app-up-to-date"
  ],
  "http://monzo.com/blog/2019/03/06/engineering-with-no-degree": [
    "http://monzo.com/blog/authors/jack-kleeman"
  ],
  "https://monzo.com/blog/cost-of-living-how-were-supporting": [
    "https://monzo.com/features/get-paid-early/",
    "https://monzo.com/blog/save-gbp667-95-a-year-with-the-1p-saving-challenge",
    "https://monzo.com/blog/authors/monzo",
    "https://monzo.com/blog/cost-of-living"
  ],
  "http://monzo.com/blog/authors/jess-bilcock": [
    "http://monzo.com/blog/extending-our-open-banking-gambling-block",
    "http://monzo.com/blog/the-appg-for-gambling-harms-joins-the-call"
  ],
  "http://monzo.com/blog/we-sent-our-house-deposit-to-a-fraudster-who-posed-as-our-lawyer": [
    "http://monzo.com/blog/fraud"
  ],
  "https://monzo.com/blog/authors/emma-northcott": [
    "https://monzo.com/blog/2017/05/15/intro-to-cops"
  ],
  "https://monzo.com/blog/2018/09/07/open-a-uk-bank-account": [
    "https://monzo.com/blog/2018/08/06/monzo-for-16-18-year-olds/"
  ],
  "https://monzo.com/blog/2022/03/02/designing-a-regional-experiment-to-measure-incrementality": [
    "https://monzo.com/blog/authors/chris-doughty"
  ],
  "https://monzo.com/blog/authors/tim-radvan": [
    "https://monzo.com/blog/2018/06/14/bill-tracker"
  ],
  "https://monzo.com/blog/2019/01/18/how-to-budget": [
    "https://monzo.com/blog/2018/11/27/how-to-save-for-retirement/",
    "https://monzo.com/blog/2018/07/05/set-a-spending-budget/",
    "https://monzo.com/blog/2018/11/23/how-to-save-for-a-house-deposit/"
  ],
  "http://monzo.com/blog/2022/11/29/budgeting-for-things-that-bring-me-joy-helped-me-pay-off-debt-and-start": [
    "http://monzo.com/blog/monzo-me"
  ],
  "https://monzo.com/help/monzo-plus/monzo-plus-ineligible/": [
    "https://monzo.com/help/monzo-plus/"
  ],
  "https://monzo.com/blog/2018/05/04/may-update": [
    "https://monzo.com/blog/2018/04/05/april-update/",
    "https://monzo.com/blog/2018/04/12/transaction-tags/",
    "https://monzo.com/blog/2018/04/18/payment-reactions/",
    "https://monzo.com/blog/2018/04/18/using-a-monzo-overdraft/"
  ],
  "http://monzo.com/help/business-accounts/connect-to-freeagent/": [
    "http://monzo.com/help/business-accounts/"
  ],
  "https://monzo.com/help/us-adding-money/us-how-long-do-bank-transfers-take/": [
    "https://monzo.com/help/us-adding-money/"
  ],
  "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-0/": [
    "https://monzo.com/legal/decisions-using-open-banking/privacy-notice/",
    "https://monzo.com/legal/files/decisions-using-open-banking/terms-and-conditions/version-1-0.pdf"
  ],
  "https://monzo.com/blog/product-management": [
    "https://monzo.com/blog/2022/10/04/product-management-at-monzo-the-interview-process"
  ],
  "https://monzo.com/help/monzo-plus/virtul-cards-apple-google-pay/": [
    "https://monzo.com/-deeplinks/virtual-card-personal-uk-create"
  ],
  "https://monzo.com/information-about-business-current-account-services/": [
    "https://monzo.com/business-banking/how-to-open-a-monzo-business-account/"
  ],
  "http://monzo.com/help/us-general-info/us-will-monzo-affect-my-credit-score/": [
    "http://monzo.com/help/us-general-info/"
  ],
  "https://monzo.com/blog/everything-you-need-to-know-about-monzos-holographic-debit-card": [
    "https://monzo.com/blog/monzo-premium"
  ],
  "http://monzo.com/blog/targets-in-trends/": [
    "http://monzo.com/blog/authors/rore-erica-okoh"
  ],
  "http://monzo.com/blog/75": [
    "http://monzo.com/blog/74",
    "http://monzo.com/blog/73"
  ],
  "https://monzo.com/blog/2022/05/24/pellets-not-cannonballs-how-we-experiment-at-monzo": [
    "https://monzo.com/blog/authors/alex-manthei"
  ],
  "https://monzo.com/blog/withdrawal-and-card-delivery-fees": [
    "http://monzo.com/i/plus/"
  ],
  "https://monzo.com/help/us-using-your-card/us-using-monzo-with-apple-pay-and-google-wallet/": [
    "https://monzo.com/help/us-using-your-card/"
  ],
  "https://monzo.com/blog/2019/06/05/should-i-bank-transfer-money-to-a-safe-account": [
    "https://monzo.com/blog/2019/02/07/authorised-push-payment-fraud/"
  ],
  "https://monzo.com/blog/2017/03/14/12000000/": [
    "https://monzo.com/blog/2017/02/23/fundraising-announcement/"
  ],
  "http://monzo.com/help/payments-getting-started/google-pay-payment-limit/": [
    "http://monzo.com/help/payments-getting-started/"
  ],
  "https://monzo.com/blog/2018/12/05/crowdfunding-starts": [
    "https://monzo.com/blog/2018/11/23/what-is-crowdfunding/"
  ],
  "http://monzo.com/legal/privacy-notice/version-1-8/": [
    "http://monzo.com/legal/business-account-privacy-policy/"
  ],
  "https://monzo.com/blog/cost-of-living-quick-update": [
    "https://monzo.com/faq/learn-more/savings-glossary/",
    "https://monzo.com/-deeplinks/create_savings_pot",
    "https://monzo.com/-deeplinks/trends-personal-uk-targets/"
  ],
  "https://monzo.com/blog/2023/04/28/speeding-up-our-balance-read-time-the-planning-phase": [
    "https://monzo.com/blog/authors/basma-taha",
    "https://monzo.com/blog/authors/nick-ng"
  ],
  "http://monzo.com/annual-report/2018/": [
    "http://monzo.com/static/docs/annual-report-2018.pdf"
  ],
  "http://monzo.com/legal/loan-information": [
    "http://monzo.com/legal/files/loan-information/loan-information-1.0.pdf",
    "http://monzo.com/legal/loan-information/version-1-0/"
  ],
  "https://monzo.com/blog/i-started-my-dream-business-and-became-my-own-boss-during-the-pandemic": [
    "https://monzo.com/help/budgeting-overdrafts-savings/round-up-app"
  ],
  "http://monzo.com/blog/authors/richard-cook/2": [
    "http://monzo.com/blog/2018/11/07/making-monzo-roadmap",
    "http://monzo.com/blog/2018/08/21/budget-with-monzo"
  ],
  "http://monzo.com/blog/how-we-wrote-5-million-years-in-monzo": [
    "http://monzo.com/blog/marketing-team"
  ],
  "http://monzo.com/blog/authors/jonas-templestein": [
    "http://monzo.com/blog/2017/03/10/transparent-by-default"
  ],
  "https://monzo.com/blog/2020/09/30/mental-health-self-employed": [
    "https://monzo.com/blog/authors/matthew-knight"
  ],
  "http://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-0/": [
    "http://monzo.com/legal/decisions-using-open-banking/privacy-notice/",
    "http://monzo.com/legal/files/decisions-using-open-banking/terms-and-conditions/version-1-0.pdf"
  ],
  "https://monzo.com/blog/loans-help/car-finance-option/": [
    "https://monzo.com/blog/authors/jack-cully"
  ],
  "https://monzo.com/blog/2016/01/08/how-does-the-wholesale-foreign-exchange-market-work": [
    "https://monzo.com/blog/authors/richard-dingwall"
  ],
  "https://monzo.com/blog/2019/02/07/building-progression-frameworks": [
    "https://monzo.com/documents/engineering-progression-framework-v2-0.pdf"
  ],
  "https://monzo.com/legal/overdraft-information/version-1-1/": [
    "https://monzo.com/legal/files/overdraft-information/overdraft-information-1.1.pdf"
  ],
  "https://monzo.com/legal/terms-and-conditions/version-1-9/": [
    "https://monzo.com/legal/audio/jan-2020-terms-conditions-audio.mp3",
    "https://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-1.9.pdf"
  ],
  "https://monzo.com/blog/2018/08/23/seven-day-switch": [
    "https://monzo.com/blog/2018/08/22/end-of-the-big-list/"
  ],
  "https://monzo.com/blog/starting-from-scratch-as-a-new-engineer-at-monzo": [
    "https://monzo.com/blog/authors/grace-simms",
    "https://monzo.com/blog/2022/03/23/demystifying-the-backend-engineering-interview-process"
  ],
  "https://monzo.com/blog/personal-details-are-compromised": [
    "https://monzo.com/blog/authors/will-bolam"
  ],
  "https://monzo.com/blog/authors/denise-wong": [
    "https://monzo.com/blog/authors/denise-wong/2"
  ],
  "https://monzo.com/blog/2018/05/29/getting-bank-account-immigrant": [
    "https://monzo.com/blog/2018/05/29/financial-inclusion/"
  ],
  "http://monzo.com/help/opening-an-account/how-to-open-a-Monzo-Joint-Account/": [
    "http://monzo.com/help/opening-an-account/"
  ],
  "https://monzo.com/help/web-logging-in-to-the-app/web-login-email-not-working/": [
    "https://monzo.com/help/web-logging-in-to-the-app/"
  ],
  "https://monzo.com/blog/2022/04/20/how-our-android-engineers-automated-the-removal-of-kotlin-synthetics": [
    "https://monzo.com/blog/authors/bradley-campbell"
  ],
  "https://monzo.com/help/payments-getting-started/cheque-how-to-pay-web-by-app/": [
    "https://monzo.com/help/business-accounts/cheque-how-to-pay-business-by-app",
    "https://monzo.com/help/payments-getting-started/cheque-how-to-pay"
  ],
  "http://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-1/": [
    "http://monzo.com/legal/files/plus/monzo-plus-other-accounts-in-monzo-terms-and-conditions/version-1-0.pdf"
  ],
  "https://monzo.com/blog/2019/06/07/save-the-date-challenge": [
    "https://monzo.com/blog/2019/06/04/wedding-guests-debt/"
  ],
  "http://monzo.com/blog/2017/05/17/meet-tapas": [
    "http://monzo.com/blog/authors/tristan-thomas"
  ],
  "https://monzo.com/blog/2018/07/03/custom-app-icons/": [
    "https://monzo.com/blog/authors/dani-garcia",
    "https://monzo.com/blog/2018/06/26/monzo-time/"
  ],
  "http://monzo.com/legal/plus/savings-summary/version-1-0/": [
    "http://monzo.com/legal/files/plus/monzo-plus-savings-summary.pdf"
  ],
  "https://monzo.com/blog/2019/08/28/open-a-bank-account-as-a-student-without-proof-of-address": [
    "https://monzo.com/blog/2019/07/30/start-spending-immediately-with-apple-pay-google-pay"
  ],
  "https://monzo.com/blog/2016/06/23/update-on-our-name-change": [
    "https://monzo.com/blog/authors/bailey-kursar"
  ],
  "https://monzo.com/business/sole-trader-overdrafts/": [
    "https://monzo.com/-deeplinks/business-overdrafts/",
    "https://monzo.com/blog/2018/08/09/what-is-a-credit-score/"
  ],
  "https://monzo.com/blog/2018/06/14/what-is-open-banking": [
    "https://monzo.com/blog/2018/01/12/api-update/"
  ],
  "https://monzo.com/blog/business-banking/fundraising-for-your-business/": [
    "https://monzo.com/blog/2018/08/09/things-to-consider-before-you-borrow-money",
    "https://monzo.com/business/",
    "https://monzo.com/blog/2019/10/15/savings-plan/"
  ],
  "https://monzo.com/blog/budgeting-tips-wedding-season": [
    "https://monzo.com/i/salary-sorter/"
  ],
  "http://monzo.com/blog/2023/04/13/business-instant-access-savings-are-here": [
    "http://monzo.com/blog/authors/candice-hardman"
  ],
  "http://monzo.com/monzo-premium": [
    "http://monzo.com/legal/premium/terms-and-conditions"
  ],
  "https://monzo.com/blog/cost-of-living-how-were-supporting-you-and-your-business": [
    "https://monzo.com/blog/2021/12/16/customise-contactless-limits",
    "https://monzo.com/i/supporting-customers-signposting",
    "https://monzo.com/blog/authors/monzo-business-team"
  ],
  "https://monzo.com/blog/2019/09/08/why-monzo-wasnt-working-on-july-29th": [
    "https://monzo.com/blog/authors/chris-evans",
    "https://monzo.com/blog/2018/09/20/on-call"
  ],
  "https://monzo.com/blog/authors/jonny-long": [
    "https://monzo.com/blog/2019/08/16/monzo-international-student"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-5/": [
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.5.pdf"
  ],
  "https://monzo.com/blog/what-are-monzos-technical-expectations-for-engineering-leaders": [
    "https://monzo.com/blog/authors/jamie-mcdonald"
  ],
  "https://monzo.com/blog/2018/08/03/our-internal-product-vision": [
    "https://monzo.com/internal-product"
  ],
  "https://monzo.com/refer-a-friend/": ["https://monzo.com/-deeplinks/invite"],
  "https://monzo.com/blog/2022/02/16/what-is-economic-abuse-and-how-to-spot-it": [
    "https://monzo.com/blog/customer-support",
    "https://monzo.com/blog/authors/kate-graham"
  ],
  "https://monzo.com/blog/monzo-us-blog/credit-card-pot": [
    "https://monzo.com/help/us-pots/us-credit-card-pot-supported/"
  ],
  "http://monzo.com/blog/2019/11/12/what-are-unsecured-loans/": [
    "http://monzo.com/blog/how-money-works",
    "http://monzo.com/blog/authors/roxy-alexander"
  ],
  "https://monzo.com/blog/card-scams": [
    "https://monzo.com/blog/authors/grace-paul"
  ],
  "https://monzo.com/blog/2023/08/23/tech-leading-as-a-mobile-engineer-at-monzo": [
    "https://monzo.com/blog/2023/03/20/what-do-app-screens-and-pedestrian-crossings-have-in-common",
    "https://monzo.com/blog/authors/mark-shipton"
  ],
  "https://monzo.com/blog/2016/12/07/monzo-me/": [
    "https://monzo.com/blog/2016/12/06/payments-android/"
  ],
  "https://monzo.com/ecb-rates": ["https://monzo.com/help/overdrafts-loans"],
  "https://monzo.com/blog/2022/05/18/joining-monzo-as-a-data-scientist": [
    "https://monzo.com/blog/authors/izak-nel"
  ],
  "http://monzo.com/blog/authors/stuart-mcfadden": [
    "http://monzo.com/blog/2017/02/16/the-richest-man-in-babylon"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-6/": [
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.6.pdf"
  ],
  "https://monzo.com/blog/lessons-from-implementing-progression-frameworks-at-scale": [
    "https://monzo.com/blog/authors/andy-smart"
  ],
  "https://monzo.com/help/us-saving-with-monzo/us-what-are-pots/": [
    "https://monzo.com/help/us-saving-with-monzo/"
  ],
  "https://monzo.com/blog/2022/06/30/were-launching-in-app-charity-donations": [
    "https://monzo.com/help/budgeting-overdrafts-savings/web-bill-pots",
    "https://monzo.com/blog/authors/neil-mckeown"
  ],
  "https://monzo.com/blog/year-in-monzo-2020": [
    "https://monzo.com/blog/authors/tom-davies"
  ],
  "http://monzo.com/blog/stepchange-what-if-campaign": [
    "http://monzo.com/blog/2020/12/03/how-to-cope-with-being-self-employed-or-working-in-the-gig-economy-during"
  ],
  "http://monzo.com/blog/cash-stuffing-and-other-old-school-ways-to-save-money-with-monzo": [
    "http://monzo.com/blog/authors/james-de-souza"
  ],
  "https://monzo.com/legal/plus/other-accounts-in-monzo-terms-and-conditions/version-1-1/": [
    "https://monzo.com/legal/files/plus/monzo-plus-other-accounts-in-monzo-terms-and-conditions/version-1-0.pdf"
  ],
  "https://monzo.com/blog/2021/11/02/net-zero-carbon-emissions": [
    "https://monzo.com/blog/authors/matthew-fisher",
    "https://monzo.com/blog/team"
  ],
  "https://monzo.com/blog/2019/06/11/should-i-start-investing": [
    "https://monzo.com/blog/2018/10/30/what-is-inflation/"
  ],
  "https://monzo.com/help/overdrafts-loans/missing-payment-loan/": [
    "https://monzo.com/help/overdrafts-loans/"
  ],
  "http://monzo.com/blog/open-palm-tech-donate": [
    "http://monzo.com/blog/authors/jess-bilcock"
  ],
  "http://monzo.com/help/monzo-card-pin/monzo-card-accepted-everywhere/": [
    "http://monzo.com/help/monzo-card-pin/"
  ],
  "https://monzo.com/blog/spending-money-to-celebrate-friends-single": [
    "https://monzo.com/blog/monzo-me"
  ],
  "https://monzo.com/blog/2023/02/15/using-topic-modelling-to-understand-customer-saving-goals": [
    "https://monzo.com/blog/authors/emma-garland"
  ],
  "https://monzo.com/blog/2020/06/27/pride-remembering-our-history-and-looking-towards-the-fight-ahead": [
    "https://monzo.com/blog/authors/brad-corrigan"
  ],
  "https://monzo.com/blog/2018/06/22/why-doesnt-monzo-have-branches/": [
    "https://monzo.com/blog/2018/06/21/paying-cheques-into-monzo/",
    "https://monzo.com/blog/2017/11/03/simple-signup-kyc/"
  ],
  "https://monzo.com/legal/fee-information/version-1-1/": [
    "https://monzo.com/legal/files/fee-information/version-1-1/fee-information-1.1.pdf"
  ],
  "https://monzo.com/blog/2022/06/22/how-to-increase-your-impact-as-a-product-designer": [
    "https://monzo.com/blog/authors/ben-strak"
  ],
  "https://monzo.com/blog/plans-cancelled-because-of-coronavirus-find-out-if-you-can-get-your-money": [
    "https://monzo.com/blog/authors/chris-wood"
  ],
  "https://monzo.com/blog/monzo-parents": [
    "https://monzo.com/blog/authors/ria-patel"
  ],
  "https://monzo.com/blog/2018/10/04/guarantors-how-and-why/": [
    "https://monzo.com/blog/2018/09/10/renting-student-accommodation/",
    "https://monzo.com/blog/2018/08/14/sharing-finances/"
  ],
  "http://monzo.com/blog/you-can-now-hide-your-pots-and-change-the-order-theyre-in": [
    "http://monzo.com/blog/authors/robin-bilgil"
  ],
  "https://monzo.com/help/overdrafts-loans/loans-monzo-business-web/": [
    "https://monzo.com/help/business-accounts/business-banking-limited-company-borrowing-web"
  ],
  "https://monzo.com/business-banking/eligibility/": [
    "https://monzo.com/legal/business-account-terms-and-conditions"
  ],
  "https://monzo.com/legal/business-account-other-accounts": [
    "https://monzo.com/legal/business-account-other-accounts/version-1-0/"
  ],
  "https://monzo.com/blog/2019/12/05/what-you-need-to-know-about-going-full-monzo": [
    "https://monzo.com/i/bills",
    "https://monzo.com/blog/2019/12/11/monzo-main-bank-account"
  ],
  "https://monzo.com/blog/2018/06/19/gambling-block-self-exclusion": [
    "https://monzo.com/blog/2018/05/16/gambling-self-exclusion/"
  ],
  "http://monzo.com/blog/weve-improved-our-gambling-block": [
    "http://monzo.com/blog/authors/gamcare"
  ],
  "http://monzo.com/legal/terms-and-conditions/version-2-3/": [
    "http://monzo.com/legal/files/terms-and-conditions/monzo-terms-and-conditions-2.3.pdf",
    "http://monzo.com/legal/audio/apr-2023-terms-conditions-audio-2-3.mp3"
  ],
  "https://monzo.com/blog/65": [
    "https://monzo.com/blog/63",
    "https://monzo.com/blog/64"
  ],
  "https://monzo.com/blog/2019/11/15/how-do-i-get-out-of-my-overdraft": [
    "https://monzo.com/blog/2019/07/24/dear-monzo-budgeting-is-hard"
  ],
  "https://monzo.com/blog/2017/02/09/launching-settings-android/": [
    "https://monzo.com/blog/2016/10/10/android-1-1-update/"
  ],
  "https://monzo.com/blog/2018/10/18/work-at-monzo": [
    "https://monzo.com/blog/authors/ella-johanny"
  ],
  "http://monzo.com/blog/2019/12/03/understanding-universal-credit": [
    "http://monzo.com/blog/banking-101"
  ],
  "https://monzo.com/blog/great-holidays-great-spending-memories": [
    "https://monzo.com/blog/authors/kate-meakin",
    "https://monzo.com/blog/travelling-with-monzo"
  ],
  "https://monzo.com/blog/2023/08/03/how-we-launch-new-products-at-monzo": [
    "https://monzo.com/blog/2018/04/27/introducing-monzo-labs",
    "https://monzo.com/blog/authors/ed-stuart-bourne"
  ],
  "https://monzo.com/blog/2020/01/17/weve-started-reporting-to-experian": [
    "https://monzo.com/blog/authors/theo-gibson"
  ],
  "https://monzo.com/blog/2016/05/27/transparent-product-roadmap/": [
    "https://monzo.com/blog/2016/05/25/android-v1/"
  ],
  "https://monzo.com/blog/2017/02/16/the-richest-man-in-babylon": [
    "https://monzo.com/blog/authors/stuart-mcfadden"
  ],
  "http://monzo.com/blog/2023/12/14/securing-admin-access-to-monzos-platform/": [
    "http://monzo.com/blog/authors/craig-ferguson"
  ],
  "http://monzo.com/legal/plus/terms-and-conditions/version-1-3/": [
    "http://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.3.pdf"
  ],
  "http://monzo.com/legal/fee-information/version-1-5/": [
    "http://monzo.com/legal/files/fee-information/version-1-5/fee-information-1.5.pdf"
  ],
  "https://monzo.com/us/joint-account/": [
    "https://monzo.com/blog/us-joint-accounts"
  ],
  "https://monzo.com/blog/business-banking/2": [
    "https://monzo.com/blog/outsourcing-parts-of-your-business"
  ],
  "https://monzo.com/i/monzo-account/": [
    "https://monzo.com/blog/current-account-guides",
    "https://monzo.com/blog/new-international-transfers/"
  ],
  "https://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap/": [
    "https://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap/version-1-0/"
  ],
  "https://monzo.com/blog/loans-help/pay-off-credit-card/": [
    "https://monzo.com/flex/",
    "https://monzo.com/blog/2019/01/18/how-to-budget"
  ],
  "https://monzo.com/-deeplinks/fallback/app_home_qr_fallback/": [
    "https://monzo.com/-deeplinks/app_home_qr_fallback"
  ],
  "https://monzo.com/blog/2019/04/02/pyramid-schemes-fractal-mandala": [
    "https://monzo.com/blog/2019/02/06/is-monzo-safe/",
    "https://monzo.com/blog/authors/matt-gilson"
  ],
  "https://monzo.com/blog/2019/06/03/vegan-on-a-budget": [
    "https://monzo.com/blog/2019/05/16/saving-money-going-vegetarian/"
  ],
  "https://monzo.com/blog/75": ["https://monzo.com/blog/73"],
  "https://monzo.com/blog/2018/04/25/switch-to-monzo": [
    "https://monzo.com/features/switch"
  ],
  "http://monzo.com/information-about-current-account-services/": [
    "http://monzo.com/legal/complaints-data/"
  ],
  "https://monzo.com/blog/2019/12/09/our-overdrafts-are-changing": [
    "https://monzo.com/i/overdraft-calculator"
  ],
  "https://monzo.com/blog/2020/04/03/tips-for-being-extra-safe-on-monzo-business-for-web": [
    "https://monzo.com/blog/authors/monique-pattison"
  ],
  "http://monzo.com/blog/coronavirus": ["http://monzo.com/blog/coronavirus/2"],
  "http://monzo.com/help/your-needs/mental-health/": [
    "http://monzo.com/help/your-needs/"
  ],
  "https://monzo.com/blog/authors/tom-davies": [
    "https://monzo.com/blog/2019/08/13/our-lending-principles"
  ],
  "https://monzo.com/blog/monzo-us-blog/working-to-build-more-empathetic-workplace/": [
    "https://monzo.com/blog/authors/denise-wong"
  ],
  "https://monzo.com/blog/2019/01/16/crowdfunding-technology-systems": [
    "https://monzo.com/blog/2018/11/26/crowdfunding/",
    "https://monzo.com/blog/2018/12/05/crowdfunding-starts/"
  ],
  "http://monzo.com/help/monzo-fraud-category/product-service-scam/": [
    "http://monzo.com/help/monzo-fraud-category/"
  ],
  "https://monzo.com/blog/2018/04/18/payment-reactions": [
    "https://monzo.com/blog/2017/10/30/monzo-to-monzo-payments/"
  ],
  "https://monzo.com/help/monzo-flex/How-do-refunds-work-in-Flex/": [
    "https://monzo.com/help/monzo-flex/Two-ways-to-flex"
  ],
  "https://monzo.com/blog/2022/12/28/whats-so-unique-about-design-and-research-at-monzo": [
    "https://monzo.com/blog/authors/monzo-design-and-research-team"
  ],
  "http://monzo.com/blog/business-basics/2": [
    "http://monzo.com/blog/business-banking/what-is-cashflow"
  ],
  "https://monzo.com/help/us-pots/us-what-are-pots": [
    "https://monzo.com/help/us-pots/"
  ],
  "http://monzo.com/legal/overdraft-information/version-1-0/": [
    "http://monzo.com/legal/files/overdraft-information/overdraft-information-1.0.pdf"
  ],
  "http://monzo.com/blog/2017/03/09/emma-profile": [
    "http://monzo.com/blog/authors/zainab-khan"
  ],
  "https://monzo.com/help/monzo-plus/plus-cancel/": [
    "https://monzo.com/-deeplinks/cancel-paid"
  ],
  "https://monzo.com/blog/community": ["https://monzo.com/blog/community/2"],
  "http://monzo.com/blog/2022/11/28/our-borrowing-principles": [
    "http://monzo.com/blog/borrowing"
  ],
  "https://monzo.com/blog/2021/08/10/spinning-up-an-analytics-engineering-team": [
    "https://monzo.com/blog/authors/martin-grayson",
    "https://monzo.com/blog/authors/borja-vazquez"
  ],
  "https://monzo.com/blog/authors/naji-esiri/3": [
    "https://monzo.com/blog/2016/09/20/monzo-journals-philippines",
    "https://monzo.com/blog/2016/10/19/target-practice"
  ],
  "http://monzo.com/blog/authors/denise-wong": [
    "http://monzo.com/blog/authors/denise-wong/2",
    "http://monzo.com/blog/monzo-us-blog/tip-tracker"
  ],
  "http://monzo.com/blog/monzo-us-blog/first-six-months-android-engineer-backend-engineer/": [
    "http://monzo.com/blog/authors/ryan-simon"
  ],
  "https://monzo.com/blog/you-can-now-hide-your-pots-and-change-the-order-theyre-in": [
    "https://monzo.com/blog/2018/07/18/round-up-monzo-purchases-automatically"
  ],
  "http://monzo.com/blog/monzo-us-blog/trends-category-targets": [
    "http://monzo.com/blog/authors/lincoln-mongillo"
  ],
  "http://monzo.com/help/joint-accounts/create-pot-app/": [
    "http://monzo.com/help/joint-accounts/"
  ],
  "https://monzo.com/blog/2018/08/01/data-help": [
    "https://monzo.com/blog/authors/neal-lathia"
  ],
  "http://monzo.com/legal/plus/fee-information/version-1-0/": [
    "http://monzo.com/legal/files/plus/monzo-plus-fee-information-1.0.pdf"
  ],
  "https://monzo.com/blog/2019/05/02/shawbrook-savings-pots": [
    "https://monzo.com/blog/2019/04/26/savings-marketplace/"
  ],
  "http://monzo.com/annual-report/2020/": [
    "http://monzo.com/static/docs/monzo-annual-report-2020.pdf"
  ],
  "https://monzo.com/blog/8-things-we-learnt-at-the-futureofmonzo": [
    "https://monzo.com/blog/2019/09/20/the-monzo-app-is-changing/",
    "https://monzo.com/i/the-future-of-monzo"
  ],
  "http://monzo.com/blog/2023/09/12/the-skadnetwork-puzzle-using-data-to-solve-for-effective-performance/": [
    "http://monzo.com/blog/authors/david-robertson"
  ],
  "https://monzo.com/blog/authors/william-masters": [
    "https://monzo.com/blog/2020/12/03/how-to-cope-with-being-self-employed-or-working-in-the-gig-economy-during"
  ],
  "http://monzo.com/help/business-getpaid/business-getpaid-easybanktransfers/": [
    "http://monzo.com/help/business-getpaid/"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-2/": [
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.2.pdf",
    "https://monzo.com/legal/premium/fee-information/"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-6/": [
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.6.pdf"
  ],
  "http://monzo.com/blog/monzo-reports-to-all-credit-reference-agencies-cras-equifax-experian-transunion": [
    "http://monzo.com/blog/authors/leanne-kelsall"
  ],
  "https://monzo.com/blog/2017/09/25/android-progress-update": [
    "https://monzo.com/blog/2017/08/24/overdraft-preview/"
  ],
  "https://monzo.com/blog/2018/08/09/things-to-consider-before-you-borrow-money": [
    "https://monzo.com/-deeplinks/borrowing_hub/"
  ],
  "https://monzo.com/legal/plus/savings-summary/version-1-1/": [
    "https://monzo.com/legal/files/plus/monzo-plus-savings-summary-1.1.pdf"
  ],
  "https://monzo.com/blog/2018/12/17/customer-support": [
    "https://monzo.com/blog/authors/luba-chudnovets",
    "https://monzo.com/blog/2018/08/02/urgent-questions/"
  ],
  "https://monzo.com/blog/2016/08/11/we-are-now-a-bank/": [
    "https://monzo.com/blog/community"
  ],
  "https://monzo.com/blog/2020/09/17/fifty-thousand-monzo-business-customers": [
    "https://monzo.com/blog/how-to-cope-with-coronavirus-if-youre-self-employed-according-to-other-self",
    "https://monzo.com/i/business/features/xero-offer"
  ],
  "https://monzo.com/blog/2019/06/14/monzo-manage-money-at-a-festival": [
    "https://monzo.com/blog/2019/05/23/protect-yourself-agains-app-fraud/"
  ],
  "http://monzo.com/blog/automated-billing-updater/": [
    "http://monzo.com/blog/authors/joost-van-oorschot"
  ],
  "https://monzo.com/help/business-accounts/stripe-accept-contactless-web/": [
    "https://monzo.com/help/business-getpaid/business-getpaid-NFC-web"
  ],
  "https://monzo.com/blog/2019/06/27/trending-spending-east-london": [
    "https://monzo.com/blog/trending-spending"
  ],
  "https://monzo.com/legal/business-account-fee-information/version-1-6/": [
    "https://monzo.com/legal/files/business-account-fee-information/fee-information-1-6.pdf"
  ],
  "http://monzo.com/blog/authors/angus-preston": [
    "http://monzo.com/blog/scams-to-watch-out-for-when-youre-shopping-online-this-christmas"
  ],
  "http://monzo.com/blog/2019/01/30/mental-health/": [
    "http://monzo.com/static/docs/Monzo-Mental-Health-Poster.pdf"
  ],
  "https://monzo.com/i/protecting-the-environment": [
    "https://monzo.com/i/protecting-the-environment/carbon-removals"
  ],
  "https://monzo.com/blog/2019/08/22/strong-customer-authentication/": [
    "https://monzo.com/blog/authors/kat-mccann"
  ],
  "https://monzo.com/blog/2019/08/30/what-is-no-spendtember": [
    "https://monzo.com/help/joint-accounts/create-pot-how-to"
  ],
  "https://monzo.com/help/overdrafts-loans/unauthorised-overdrafts": [
    "https://monzo.com/help/monzo-flex/flexing-a-transaction"
  ],
  "https://monzo.com/blog/2017/09/27/android-help-search": [
    "https://monzo.com/blog/2017/07/18/new-help-search/"
  ],
  "https://monzo.com/blog/2016/01/20/how-do-bank-payments-work": [
    "https://monzo.com/blog/2015/12/15/why-are-foreign-card-payments-such-a-mess/"
  ],
  "https://monzo.com/blog/holding-onto-improved-financial-habits": [
    "https://monzo.com/blog/2019/02/06/50-20-30-budgeting"
  ],
  "http://monzo.com/blog/2023/09/12/how-do-i-know-if-investing-is-for-me": [
    "http://monzo.com/blog/authors/natalie-gil"
  ],
  "https://monzo.com/blog/2022/11/25/reducing-nat-gateway-cost-with-private-networking-between-aws-and-gcp": [
    "https://monzo.com/blog/how-we-moved-our-faster-payments-connection-in-house",
    "https://monzo.com/blog/authors/dom-goodwin"
  ],
  "http://monzo.com/help/us-trends/us-what-is-trends/": [
    "http://monzo.com/help/us-trends/"
  ],
  "https://monzo.com/blog/2019/11/11/10-monzo-features-your-old-bank-doesnt-have-yet": [
    "https://monzo.com/blog/2019/03/18/a-trick-to-stop-you-spending-your-savings"
  ],
  "https://monzo.com/blog/authors/richard-cook/2": [
    "https://monzo.com/blog/2018/11/07/making-monzo-roadmap"
  ],
  "https://monzo.com/blog/2018/02/02/user-research/": [
    "https://monzo.com/blog/design",
    "https://monzo.com/blog/2016/04/08/meet-hugo/"
  ],
  "https://monzo.com/blog/debt-borrowing-money-making-repayments-coronavirus-stepchange": [
    "https://monzo.com/blog/access-universal-credit/"
  ],
  "http://monzo.com/blog/2017/07/25/meet-will": [
    "http://monzo.com/blog/authors/naji-esiri"
  ],
  "http://monzo.com/legal/plus/fee-information/version-1-1/": [
    "http://monzo.com/legal/files/plus/monzo-plus-fee-information-1.1.pdf"
  ],
  "http://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap/": [
    "http://monzo.com/legal/terms-and-conditions/overdraft-charges-monthly-cap/version-1-0/"
  ],
  "https://monzo.com/blog/2019/01/07/progression": [
    "https://monzo.com/blog/2018/06/25/monzos-transparent-engineering-progression-framework/"
  ],
  "http://monzo.com/legal/plus/terms-and-conditions/version-1-0/": [
    "http://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.0.pdf"
  ],
  "https://monzo.com/features/get-paid-early/": [
    "https://monzo.com/blog/2019/08/20/monzo-now-lets-you-get-paid-a-day-early-for-free"
  ],
  "https://monzo.com/blog/2021/11/18/protecting-our-most-sensitive-secrets": [
    "https://monzo.com/static/docs/redacted-root-certificate-authorities-ceremony-3-script.pdf",
    "https://monzo.com/blog/authors/lucy-sweet"
  ],
  "https://monzo.com/blog/2018/07/31/monzo-las-vegas": [
    "https://monzo.com/blog/2017/05/18/night-cops/",
    "https://monzo.com/blog/2018/05/18/mindfulness-and-wellbeing/"
  ],
  "https://monzo.com/blog/i-paid-off-gbp5k-debt-and-saved-gbp8k-for-my-dream-home-deposit": [
    "https://monzo.com/blog/2019/10/29/winter-savings-challenge",
    "https://monzo.com/features/ifttt/"
  ],
  "http://monzo.com/blog/2019/07/10/the-evolution-of-monzo-chat": [
    "http://monzo.com/blog/authors/julio-lopes"
  ],
  "https://monzo.com/blog/scams-to-watch-out-for-when-youre-shopping-online-this-christmas": [
    "https://monzo.com/blog/2018/08/22/launching-3d-secure"
  ],
  "https://monzo.com/blog/76": ["https://monzo.com/blog/74"],
  "http://monzo.com/legal/referral-scheme/terms-and-conditions/version-2-0/": [
    "http://monzo.com/legal/files/referral-scheme/monzo-referral-scheme-2.0.pdf"
  ],
  "https://monzo.com/help/monzo-flex/missing-a-monzo-flex-payment/": [
    "https://monzo.com/help/monzo-flex/interest-rates-for-monzo-flex"
  ],
  "http://monzo.com/help/overdrafts-loans/overdrafts-fees/": [
    "http://monzo.com/help/overdrafts-loans/"
  ],
  "http://monzo.com/blog/how-to-save-money": [
    "http://monzo.com/blog/2018/09/11/student-budgeting-tips",
    "http://monzo.com/blog/how-to-save-money/2",
    "http://monzo.com/blog/2019/10/31/how-to-save-money-as-a-teenager"
  ],
  "https://monzo.com/blog/2019/09/20/the-monzo-app-is-changing": [
    "https://monzo.com/blog/authors/bruno-vaz-moco"
  ],
  "https://monzo.com/blog/2022/07/05/my-first-3-months-at-monzo-as-a-product-manager": [
    "https://monzo.com/blog/authors/tim-platt"
  ],
  "http://monzo.com/blog/authors/arthur-ceccotti": [
    "http://monzo.com/blog/how-we-upgraded-3d-secure"
  ],
  "http://monzo.com/blog/2020/11/25/how-to-cope-with-reduced-work-hours-according-to-the-experts": [
    "http://monzo.com/blog/stepchange-what-if-campaign"
  ],
  "http://monzo.com/blog/our-2020-diversity-and-inclusion-report": [
    "http://monzo.com/blog/authors/sheree-atcheson"
  ],
  "http://monzo.com/legal/premium/terms-and-conditions/version-1-4/": [
    "http://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.4.pdf"
  ],
  "https://monzo.com/monzo-premium/worldwide-mobile-phone-insurance/": [
    "https://monzo.com/static/docs/premium/monzo-premium-assurant-ipid.pdf"
  ],
  "https://monzo.com/blog/2016/11/30/laying-the-foundation-for-a-data-team": [
    "https://monzo.com/blog/authors/dimitri-masin"
  ],
  "http://monzo.com/blog/how-monzos-gambling-block-and-self-exclusion-helped-me-beat-gambling-addiction-and-pay-off-debt": [
    "http://monzo.com/blog/authors/kate-hollowood"
  ],
  "https://monzo.com/help/cashback/what-is-cashback/": [
    "https://monzo.com/legal/partner-cashback-terms-and-conditions/"
  ],
  "http://monzo.com/help/us-transferring-money/us-how-do-i-link-my-other-bank-accounts-to-monzo/": [
    "http://monzo.com/help/us-transferring-money/"
  ],
  "https://monzo.com/blog/1p-savings-challenge-2021": [
    "https://monzo.com/blog/authors/richard-cook"
  ],
  "http://monzo.com/blog/2019/09/06/10-minimum-savings-pot": [
    "http://monzo.com/blog/authors/indi-pollard"
  ],
  "http://monzo.com/blog/2023/08/23/tech-leading-as-a-mobile-engineer-at-monzo": [
    "http://monzo.com/blog/authors/mark-shipton"
  ],
  "https://monzo.com/blog/2019/07/10/no-spend-challenge": [
    "https://monzo.com/blog/2019/10/29/winter-savings-challenge/"
  ],
  "http://monzo.com/help/web-logging-in-to-the-app/web-login-email-not-working/": [
    "http://monzo.com/help/web-logging-in-to-the-app/"
  ],
  "https://monzo.com/blog/2018/01/25/bank-statements": [
    "https://monzo.com/blog/authors/james-allison"
  ],
  "https://monzo.com/blog/2019/06/11/1p-savings-challenge-monthly-on-payday": [
    "https://monzo.com/blog/2018/08/02/pots-goals/"
  ],
  "https://monzo.com/blog/2019/03/14/money-in-love-lauren-dan": [
    "https://monzo.com/blog/money-in-love/"
  ],
  "http://monzo.com/blog/monzo-investments-is-here-leave-the-hard-work-to-us": [
    "http://monzo.com/blog/authors/sayjal-mistry"
  ],
  "http://monzo.com/blog/2021/01/05/self-employed-tax-basics": [
    "http://monzo.com/blog/authors/taxscouts"
  ],
  "http://monzo.com/blog/what-are-monzos-technical-expectations-for-engineering-leaders": [
    "http://monzo.com/blog/authors/jamie-mcdonald"
  ],
  "https://monzo.com/legal/plus/fee-information/version-1-1/": [
    "https://monzo.com/legal/files/plus/monzo-plus-fee-information-1.1.pdf"
  ],
  "https://monzo.com/blog/automated-billing-updater/": [
    "https://monzo.com/blog/authors/joost-van-oorschot"
  ],
  "https://monzo.com/help/us-trends/us-what-is-trends": [
    "https://monzo.com/help/us-trends/"
  ],
  "https://monzo.com/blog/2019/07/18/remortgaging-test": [
    "https://monzo.com/blog/authors/will-stolerman"
  ],
  "http://monzo.com/blog/starting-from-scratch-as-a-new-engineer-at-monzo": [
    "http://monzo.com/blog/authors/grace-simms"
  ],
  "https://monzo.com/blog/2019/01/30/save-money-and-the-planet": [
    "https://monzo.com/blog/2019/01/17/2018-year-in-monzo/"
  ],
  "https://monzo.com/blog/how-we-use-design-to-create-business-impact-at-monzo": [
    "https://monzo.com/blog/authors/nate-langley"
  ],
  "https://monzo.com/blog/2021/12/22/how-to-think-about-the-roi-of-data-work": [
    "https://monzo.com/blog/authors/mikkel-dengse"
  ],
  "http://monzo.com/annual-report/2017/": [
    "http://monzo.com/static/docs/annual-report-2017.pdf"
  ],
  "https://monzo.com/legal/decisions-using-open-banking/terms-and-conditions/version-1-1/": [
    "https://monzo.com/legal/files/decisions-using-open-banking/terms-and-conditions/version-1-1.pdf"
  ],
  "https://monzo.com/blog/2015/11/16/diversity-debt/": [
    "https://monzo.com/blog/authors/leah-templeman"
  ],
  "http://monzo.com/blog/introducing-feed-and-manage": [
    "http://monzo.com/blog/authors/jack-cully"
  ],
  "https://monzo.com/blog/2017/02/13/5-features-your-mobile-bank-account-should-have-by-now": [
    "https://monzo.com/blog/2017/01/11/customer-support-quotables/"
  ],
  "https://monzo.com/blog/2018/10/12/what-is-a-good-credit-score": [
    "https://monzo.com/blog/2018/10/11/how-to-check-your-credit-score-report/"
  ],
  "http://monzo.com/legal/fee-information/version-1-3/": [
    "http://monzo.com/legal/files/fee-information/version-1-3/fee-information-1.3.pdf"
  ],
  "https://monzo.com/blog/year-in-monzo-2019": [
    "https://monzo.com/-deeplinks/year-in-monzo/"
  ],
  "http://monzo.com/help/cashback/cashback-terms-conditions/": [
    "http://monzo.com/help/cashback/"
  ],
  "https://monzo.com/blog/authors/suhail-patel": [
    "https://monzo.com/blog/2019/09/08/why-monzo-wasnt-working-on-july-29th",
    "https://monzo.com/blog/2019/04/03/deploying-envoy-proxy"
  ],
  "http://monzo.com/help/payments-paying-monzobusiness/paying-business-no-account/": [
    "http://monzo.com/help/payments-paying-monzobusiness/"
  ],
  "http://monzo.com/blog/2019/04/26/savings-marketplace": [
    "http://monzo.com/blog/authors/ankit-kumar"
  ],
  "http://monzo.com/help/us-joint-accounts/us-opening-a-monzo-joint-account/": [
    "http://monzo.com/help/us-joint-accounts/"
  ],
  "http://monzo.com/blog/managing-my-universal-credit-payments": [
    "http://monzo.com/blog/financial-inclusion"
  ],
  "https://monzo.com/blog/why-you-should-run-design-input-sessions": [
    "https://monzo.com/blog/authors/dom-gambetta"
  ],
  "http://monzo.com/help/us-pots/us-transferring-money-between-pots/": [
    "http://monzo.com/help/us-pots/"
  ],
  "https://monzo.com/legal/premium/fee-information/version-1-2/": [
    "https://monzo.com/legal/files/premium/monzo-premium-fee-information-1.2.pdf"
  ],
  "https://monzo.com/blog/2021/01/03/origins-of-money-superstitions": [
    "https://monzo.com/blog/authors/ella-moody"
  ],
  "https://monzo.com/blog/69": ["https://monzo.com/blog/67"],
  "http://monzo.com/legal/referral-scheme/terms-and-conditions/version-1-0/": [
    "http://monzo.com/legal/files/referral-scheme/monzo-referral-scheme-1.0.pdf"
  ],
  "http://monzo.com/blog/authors/joost-van-oorschot": [
    "http://monzo.com/blog/2022/02/08/processing-payments-safely-at-scale"
  ],
  "http://monzo.com/blog/plans-cancelled-because-of-coronavirus-find-out-if-you-can-get-your-money": [
    "http://monzo.com/blog/authors/chris-wood"
  ],
  "https://monzo.com/savings/instant-access": [
    "https://monzo.com/-deeplinks/create-instant-access-pot"
  ],
  "http://monzo.com/monzo-plus": [
    "http://monzo.com/legal/plus/terms-and-conditions"
  ],
  "https://monzo.com/blog/2017/10/30/monzo-to-monzo-payments": [
    "https://monzo.com/blog/2017/10/24/android-pay/"
  ],
  "https://monzo.com/blog/authors/dillon-van-auken": [
    "https://monzo.com/blog/2017/05/18/night-cops"
  ],
  "http://monzo.com/legal/fee-information/version-1-2/": [
    "http://monzo.com/legal/files/fee-information/version-1-2/fee-information-1.2.pdf"
  ],
  "http://monzo.com/blog/2019/04/10/1p-savings-challenge-chart": [
    "http://monzo.com/download"
  ],
  "https://monzo.com/blog/2018/04/05/how-monzo-to-monzo-payments-work": [
    "https://monzo.com/blog/authors/james-routley"
  ],
  "https://monzo.com/blog/2017/07/03/monzo-mixtape": [
    "https://monzo.com/blog/authors/simon-balmain"
  ],
  "https://monzo.com/blog/2020/11/25/how-to-cope-with-reduced-work-hours-according-to-the-experts": [
    "https://monzo.com/blog/stepchange-what-if-campaign"
  ],
  "https://monzo.com/help/business-accounts/cheque-how-to-pay-business-by-app/": [
    "https://monzo.com/help/payments-getting-started/cheque-how-to-pay-web-by-app"
  ],
  "https://monzo.com/blog/the-extra-costs-of-living-with-adhd": [
    "https://monzo.com/blog/authors/team-monzo"
  ],
  "https://monzo.com/blog/2019/07/03/money-at-university": [
    "https://monzo.com/blog/authors/jonny-long"
  ],
  "https://monzo.com/blog/2017/06/09/journey-of-a-card": [
    "https://monzo.com/blog/2017/03/31/designers-inspiration/"
  ],
  "https://monzo.com/blog/borrowing": [
    "https://monzo.com/blog/2021/11/23/monzo-flex-ways-to-pay-later"
  ],
  "https://monzo.com/blog/monzo-us-blog/trends-category-targets": [
    "https://monzo.com/blog/authors/lincoln-mongillo"
  ],
  "https://monzo.com/blog/2023/03/20/what-do-app-screens-and-pedestrian-crossings-have-in-common": [
    "https://monzo.com/blog/authors/josh-hill"
  ],
  "https://monzo.com/blog/business-basics": [
    "https://monzo.com/blog/business-basics/2"
  ],
  "https://monzo.com/blog/2019/10/31/statement-of-fees-to-your-account": [
    "https://monzo.com/blog/authors/emily-barrett"
  ],
  "https://monzo.com/blog/quarterly-updates": [
    "https://monzo.com/blog/quarterly-updates/2"
  ],
  "https://monzo.com/legal/premium/terms-and-conditions/version-1-4/": [
    "https://monzo.com/legal/files/premium/monzo-premium-terms-and-conditions-1.4.pdf"
  ],
  "https://monzo.com/legal/remaining-balance-terms-and-conditions": [
    "https://monzo.com/legal/remaining-balance-terms-and-conditions/version-1-0/"
  ],
  "https://monzo.com/blog/2017/09/04/meet-phil-hewinson-head-of-partnerships": [
    "https://monzo.com/blog/2016/02/04/marketplace-banking/"
  ],
  "https://monzo.com/blog/2022/05/13/moving-from-data-science-into-machine-learning": [
    "https://monzo.com/blog/authors/rob-knight"
  ],
  "https://monzo.com/blog/2020/05/15/monzo-us-blog-you-can-now-hide-your-pots-and-change-the-order-theyre-in-us": [
    "https://monzo.com/blog/authors/robin-bilgil"
  ],
  "https://monzo.com/help/monzo-flex/monzo-flex-and-section-75-claims/": [
    "https://monzo.com/help/legal-stuff/make-complaint-web"
  ],
  "http://monzo.com/help/account-and-profile/tax-residency-eu/": [
    "http://monzo.com/help/account-and-profile/"
  ],
  "https://monzo.com/blog/how-monzos-gambling-block-and-self-exclusion-helped-me-beat-gambling-addiction-and-pay-off-debt": [
    "https://monzo.com/blog/authors/kate-hollowood"
  ],
  "https://monzo.com/blog/2023/05/18/sensitivity-analysis": [
    "https://monzo.com/blog/authors/niamh-broderick"
  ],
  "https://monzo.com/help/joint-accounts/create-pot-app/": [
    "https://monzo.com/help/joint-accounts/"
  ],
  "https://monzo.com/blog/2023/04/13/business-instant-access-savings-are-here": [
    "https://monzo.com/blog/authors/candice-hardman"
  ],
  "http://monzo.com/blog/2021/11/02/net-zero-carbon-emissions": [
    "http://monzo.com/blog/authors/matthew-fisher"
  ],
  "http://monzo.com/help/us-safety-and-security/us-is-my-information-safe-with-monzo/": [
    "http://monzo.com/help/us-safety-and-security/"
  ],
  "https://monzo.com/blog/2019/12/23/how-well-contact-you/": [
    "https://monzo.com/blog/authors/amy-grieveson"
  ],
  "https://monzo.com/help/us-general-info/us-what-is-monzo/": [
    "https://monzo.com/help/us-general-info/"
  ],
  "https://monzo.com/blog/2023/02/22/becoming-direct-participants-of-bacs": [
    "https://monzo.com/blog/authors/ryan-kilburn"
  ],
  "https://monzo.com/blog/2022/04/12/how-anyone-at-monzo-can-test": [
    "https://monzo.com/blog/authors/sarah-byng"
  ],
  "https://monzo.com/legal/premium/fee-information/version-1-1/": [
    "https://monzo.com/legal/files/premium/monzo-premium-fee-information-1.1.pdf"
  ],
  "https://monzo.com/tone-of-voice/": ["https://monzo.com/privacy"],
  "https://monzo.com/blog/authors/priyesh-patel": [
    "https://monzo.com/blog/2018/09/07/ba-data-breach"
  ],
  "https://monzo.com/help/payments-getting-started/cheque-how-to-pay/": [
    "https://monzo.com/help/business-accounts/cheque-how-to-pay-business"
  ],
  "http://monzo.com/blog/everything-you-need-to-know-about-monzos-holographic-debit-card": [
    "http://monzo.com/blog/monzo-premium"
  ],
  "https://monzo.com/help/opening-an-account/why-we-ask-for-a-video-when-you-open-a-monzo-account/": [
    "https://monzo.com/help/opening-an-account/"
  ],
  "https://monzo.com/legal/plus/fee-information/version-1-2/": [
    "https://monzo.com/legal/files/plus/monzo-plus-fee-information-1.2.pdf"
  ],
  "https://monzo.com/legal/plus/terms-and-conditions/version-1-0/": [
    "https://monzo.com/legal/files/plus/monzo-plus-terms-and-conditions-1.0.pdf"
  ],
  "http://monzo.com/blog/2020/10/15/flux-hm": [
    "http://monzo.com/blog/authors/arthur-ceccotti"
  ],
  "http://monzo.com/blog/how-monzos-gambling-block-helped-me-beat-my-gambling-addiction-and-pay-off-my-debt": [
    "http://monzo.com/blog/how-i-use-monzo"
  ],
  "http://monzo.com/help/monzo-plus/monzo-plus-ineligible/": [
    "http://monzo.com/help/monzo-plus/"
  ],
  "http://monzo.com/legal/plus/fee-information/version-1-3/": [
    "http://monzo.com/legal/files/plus/monzo-plus-fee-information-1.3.pdf"
  ]
}
```