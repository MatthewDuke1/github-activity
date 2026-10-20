# Matt Duke -- GitHub Activity

Most of my development work happens in private and internal repositories. GitHub's contribution graph does not count private org contributions unless the viewer is a member, so this page provides a transparent look at actual engineering output.

Live at [the-duke.org](https://the-duke.org/)

## At a Glance

| Metric | Count |
|--------|-------|
| ROI on a $20/month Claude Pro plan | 580% |
| Merged Pull Requests (2026) | 368 |
| Merged Pull Requests (all time) | 405 |
| Contributions (last 12 months) | 831 |
| Commits (lifetime, all repos) | 984 |
| Repositories | 54 (23 public, 31 private) |

## Featured Apps

See the live portfolio at [the-duke.org](https://the-duke.org).

| App | Stack | Annual Time Saved |
|-----|-------|-------------------|
| **Birthday Email Automator** | HTML/CSS/JS, EmailJS, Supabase | ~50 hrs/yr |
| **Find Me People** | Chrome Extension, Vanilla JS, Manifest V3 | ~20 hrs/yr |
| **AI Starter Guide** | HTML/CSS/JS, zero dependencies | ~75 hrs/yr |

## the-duke.org Subdomains

DNS for the-duke.org lives in a Route 53 hosted zone. Check this list before claiming a new subdomain, and add a row when one goes live.

| Address | What it is | Access | Hosting | Source |
|---------|------------|--------|---------|--------|
| [the-duke.org](https://the-duke.org) | Portfolio and shipping log | Public | CloudFront + private S3, CloudFormation stack `the-duke-site` (us-east-1). GitHub Actions deploys `docs/` on every push to `master` | This repo (`infra/`) |
| [costumes.the-duke.org](https://costumes.the-duke.org) | Costume Scout: upload a photo, Claude names the costume and finds where to buy it, with a total price | Invite only (Cognito sign-in) | CloudFront + streaming Lambda, CloudFormation stack `costume-scout` (us-east-1) | `costume-scout` (private) |
| [shorts.the-duke.org](https://shorts.the-duke.org) | ClipForge review feed: finished clips in a vertical Shorts-style player, plus an analytics dashboard for admins | Invite only (Cognito sign-in, US + PH only) | CloudFront + private S3 + Lambda, Terraform `deploy/shorts.tf` | `clipforge` (private) |
| [travel.the-duke.org](https://travel.the-duke.org) | Matt & Damien's Flight Passport: every flight on a spinnable globe, with a year-by-year log | Public | CloudFront + private S3, CloudFormation stack `travel-site` (us-east-1) | Local `travel-site` folder (no repo yet) |

**Email.** the-duke.org is also an Amazon SES sending domain (us-west-2), set up with DKIM, SPF and DMARC records. The birthday reminder app sends its sign-in codes from it, and Domain Watch sends its daily email from `domains@the-duke.org`.

**Retired.** `reels.the-duke.org` (ReelForge) was shut down on 2026-10-14, and its DNS records are gone.

## What I Work With

**Languages:** JavaScript, TypeScript, Python, SQL, HTML/CSS

**Frontend:** React, React Native, Next.js, Expo, Tailwind CSS, Material-UI, Chrome Extensions (MV3)

**Backend:** Node.js, Express, AWS Lambda, GraphQL (AppSync), Supabase / Postgres

**Cloud:** AWS (Amplify, Cognito, DynamoDB, SES, API Gateway, Lambda, S3), Vercel, GitHub Pages

**Tools:** Git, GitHub Actions, Stripe

## About Me

Matt Duke -- Dallas, TX

- [the-duke.org](https://the-duke.org) -- Live portfolio
- [LinkedIn](https://www.linkedin.com/in/the-duke/)
- [GitHub](https://github.com/MatthewDuke1)
