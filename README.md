# IDSW Website Mockup - Editing Guide

This mockup is organized so most pages can be previewed locally, while selected directory-style pages can be updated through CSV files instead of editing the HTML directly.

## Folder structure

```text
pages/      Full website pages, including index.html
includes/   Shared HTML fragments loaded into pages, such as header/footer/link blocks
css/        Shared stylesheets
Data/       CSV files used as editable content sources
Images/     Images, logos, maps, headshots, and other visual assets
Archive/    Older or inactive files, if retained
```

## How to preview locally

From the main website folder, run:

```bash
python3 -m http.server 8000
```

Then open:

```text
http://localhost:8000/pages/index.html
```

Do not open the HTML files directly with `file://`, because shared headers, footers, and CSV files are loaded with `fetch()` and work best through localhost.

## General editing rule

Use this order when deciding where to edit content:

1. If a page references a CSV file in `Data/`, edit the CSV for routine content updates.
2. If there is no CSV file, edit the page's HTML file in `pages/`.
3. Edit shared navigation, footer, or reusable link sections in `includes/`.
4. Edit global design in `css/`, not page-by-page, when possible.

## User-facing website structure and editing locations

### Home

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Home | `pages/index.html` | Raw HTML in `pages/index.html` | Homepage text, buttons, and feature sections are currently edited directly in HTML. |

### About

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| About > Mission Statement | `pages/IDSW about.html` | Raw HTML in `pages/IDSW about.html` | Mission/overview text is currently static HTML. |
| About > Leadership | `pages/IDSW leadership.html` | `Data/leadership.csv` | Leadership photos go in `Images/Leadership/`. The page layout is in HTML; people/roles/orgs/photos are in CSV. |
| About > Committees | `pages/IDSW committees.html` | `Data/committees.csv`; image toggle in `Data/site-settings.csv` | Committee names, descriptions, chairs, and optional images are CSV-driven. `show_committee_images` in `site-settings.csv` controls image display. |
| About > Bylaws | `pages/IDSW bylaws.html` | Raw HTML in `pages/IDSW bylaws.html`; PDF file if used | If linking a bylaws PDF, place it in the site and confirm the link path in the HTML. |
| About > Affiliates and Sponsors | `pages/IDSW affiliates.html` | `Data/affiliates-sponsors.csv` | Logos/images go in `Images/Affiliates/`. Blank image fields use the default affiliate image if configured in the page. |

Shared About link block:

```text
includes/IDSW about-links.html
```

Edit this file if the reusable "More About IDSW" buttons need to change.

### Membership

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Membership > Membership Benefits | `pages/IDSW membership.html` | Raw HTML in `pages/IDSW membership.html` | This page is intentionally not CSV-driven right now. |
| Membership > Membership Application | `pages/IDSW apply.html` | Raw HTML in `pages/IDSW apply.html` | Form fields and application language are edited directly in HTML. The mockup form is not connected to a submission system. |
| Membership > Membership Renewal | `pages/IDSW renew.html` | Raw HTML in `pages/IDSW renew.html` | Renewal page content is static HTML. |
| Membership > Member Directory | `pages/IDSW members.html` | Raw HTML in `pages/IDSW members.html` | Member directory is currently a mockup/static page. Do not place real private member data here unless access control is implemented. |

Shared Membership link block:

```text
includes/IDSW membership-links.html
```

Edit this file if the reusable membership buttons need to change.

### Directories

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Directories landing page | `pages/IDSW directories.html` | Raw HTML in `pages/IDSW directories.html` | Directory overview page. |
| Directories > Leadership | `pages/IDSW leadership.html` | `Data/leadership.csv` | Same content source as About > Leadership. |
| Directories > Members | `pages/IDSW members.html` | Raw HTML in `pages/IDSW members.html` | Mockup only unless member authentication is added. |
| Directories > ID Practices | `pages/IDSW practices.html` | `Data/practices.csv` | Practice listings, address, region, focus, and related details are CSV-driven. Map image is `Images/Washington Map Placeholder.png`. |
| Directories > Micro Labs | `pages/IDSW micro-labs.html` | `Data/micro-labs.csv` | Microbiology lab listings are CSV-driven. Current display fields are name, health system, address, phone/fax, services, website, and active status. |
| Directories > Training Programs | `pages/IDSW training.html` | `Data/training-programs.csv` | Training program name, program type, city/state, center, focus, website, and active status are CSV-driven. |
| Directories > Research | `pages/IDSW research.html` | Raw HTML in `pages/IDSW research.html` | Research listings are currently static HTML/mockup content. |

### Resources

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Resources landing page | `pages/IDSW resources.html` | Not currently present | The header links to this page, but the file is not currently present in this package. Create it or update the navigation. |
| Resources > Antimicrobial Stewardship | `pages/IDSW AMS.html` | Not currently present | The header links to this page, but the file is not currently present in this package. Create it or update the navigation. |

### Ask an Expert

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Ask an Expert > FAQ | `pages/IDSW faq.html` | Raw HTML in `pages/IDSW faq.html` | FAQ content is currently static HTML. |
| Ask an Expert > Invite an ID Specialist | `pages/IDSW invite.html` | Raw HTML in `pages/IDSW invite.html` | Form is currently a mockup and not connected to a submission system. |
| Ask an Expert > Find a Specialist | `pages/IDSW practices.html` | `Data/practices.csv` | This routes users to the ID Practices directory. |

### Events

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Events > Upcoming Events | `pages/IDSW events-upcoming.html` | Raw HTML in `pages/IDSW events-upcoming.html` | Event listings are currently static HTML. |
| Events > Past Events | `pages/IDSW events-past.html` | Raw HTML in `pages/IDSW events-past.html` | Past event listings/recordings are currently static HTML. |

### Advocacy

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Advocacy landing page | `pages/IDSW advocacy.html` | Raw HTML in `pages/IDSW advocacy.html` | Advocacy overview page. |
| Advocacy > Policy Positions | `pages/IDSW policy.html` | Raw HTML in `pages/IDSW policy.html` | Policy position content is static HTML. |
| Advocacy > Advocacy Actions | `pages/IDSW advocacy-actions.html` | Raw HTML in `pages/IDSW advocacy-actions.html` | Advocacy action items are currently static HTML. |
| Advocacy > Submit a Story | `pages/IDSW submit-story.html` | Raw HTML in `pages/IDSW submit-story.html` | Form is currently a mockup and not connected to a submission system. |

### Contact

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Contact | `pages/IDSW contact.html` | Raw HTML in `pages/IDSW contact.html` | Contact form is currently a mockup and not connected to a submission system. |

### Style / utility pages

| User-facing page/section | Page file | Edit routine content here | Notes |
|---|---|---|---|
| Style reference / test page | `pages/IDSW style.html` | Raw HTML in `pages/IDSW style.html`; shared CSS in `css/` | Not necessarily part of public navigation. Use as a style/reference page if needed. |

## Shared files that affect many pages

| File | What it controls | When to edit |
|---|---|---|
| `includes/IDSW header.html` | Main site navigation and logo | Edit when adding/removing/renaming menu items. |
| `includes/IDSW footer.html` | Shared footer | Edit for footer text, links, copyright, contact details. |
| `includes/IDSW about-links.html` | Reusable About section buttons | Edit when About pages or labels change. |
| `includes/IDSW membership-links.html` | Reusable Membership section buttons | Edit when Membership pages or labels change. |
| `css/IDSW style.css` | Main site-wide styles | Edit for global typography, layout, buttons, cards, header, directories, etc. |
| `css/IDSW link section style.css` | Reusable link-button section styles | Edit for About/Membership link section styling. |

## CSV-driven content files

### `Data/leadership.csv`

Used by:

```text
pages/IDSW leadership.html
```

Typical columns:

```text
role,name,organization,term,photo,active
```

Photo paths should usually point to:

```text
../Images/Leadership/example-name.png
```

### `Data/committees.csv`

Used by:

```text
pages/IDSW committees.html
```

Typical columns:

```text
sort_order,type,name,description,chair,image,active
```

The `type` column is used to sort committees into Standing vs Ad Hoc sections, but the type does not need to display on each card.

### `Data/site-settings.csv`

Used by:

```text
pages/IDSW committees.html
```

Current setting:

```text
show_committee_images
```

Set to `true` to display committee images. Set to `false` to hide committee image areas entirely.

### `Data/affiliates-sponsors.csv`

Used by:

```text
pages/IDSW affiliates.html
```

Typical columns:

```text
sort_order,type,name,description,website,image,active
```

Use `type` values such as:

```text
Affiliate
Sponsor
Partner
```

Images/logos usually go in:

```text
Images/Affiliates/
```

### `Data/practices.csv`

Used by:

```text
pages/IDSW practices.html
```

Current expected columns may include:

```text
sort_order,avatar,name,subtitle,address,city,state,region,clinical_focus,health_system,accepting_referrals,appointments,languages,telehealth,website,active
```

Separate multiple clinical focus areas with semicolons:

```text
General ID;HIV;Travel Medicine
```

### `Data/micro-labs.csv`

Used by:

```text
pages/IDSW micro-labs.html
```

Current expected columns:

```text
sort_order,avatar,name,health_system,street_address,city,state,zip,region,phone,fax,lab_services,website,active
```

Separate multiple lab services with semicolons:

```text
Bacteriology;Virology / PCR;Blood Cultures
```

### `Data/training-programs.csv`

Used by:

```text
pages/IDSW training.html
```

Current expected columns:

```text
sort_order,avatar,program_name,program_type,city,state,center,focus,website,active
```

The `program_type` displays exactly as written in the CSV.

Separate multiple focus areas with semicolons:

```text
Adult ID;HIV;Antimicrobial Stewardship
```

## Image folders

| Folder | Use |
|---|---|
| `Images/Leadership/` | Headshots for leadership cards. |
| `Images/Committees/` | Optional committee images. |
| `Images/Affiliates/` | Affiliate/sponsor logos or default image. |
| `Images/` | Shared site images, including the logo and Washington map placeholder. |

## Important notes before public launch

- Any page in this static mockup is public if deployed publicly. Do not place private member data, confidential details, or sensitive story submissions in static HTML/CSV files without real access control.
- Forms are mockups unless connected to a form service, backend, membership platform, or email workflow.
- Header navigation is controlled by `includes/IDSW header.html`. If a page file is renamed or moved, update the header links.
- Some header links currently point to files that may not exist yet, especially `IDSW resources.html` and `IDSW AMS.html`.
