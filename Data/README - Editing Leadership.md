# Editing IDSW Leadership Content

Open `Data/leadership.csv` in Excel, Numbers, or Google Sheets.

Each row is one leadership card.

## Columns

- `sort_order`: Controls card order. Use 1, 2, 3, etc.
- `role`: Board title, such as President.
- `name`: Person's name and credentials.
- `organization`: Affiliation shown under the name.
- `term`: Term label shown in the small pill.
- `photo`: Image path. Leave blank if there is no photo.
- `active`: Use `yes` to show the card or `no` to hide it.

## Photo instructions

Put images in:

```text
Images/Leadership/
```

Use lowercase file names with hyphens, such as:

```text
geise-bob.png
smith-jane.jpg
```

Then put the matching path in the `photo` column:

```text
Images/Leadership/geise-bob.png
```

If the file is missing or the path is wrong, the page will show the TBD placeholder instead of a broken image.

## Important CSV rules

- Do not rename the columns.
- Keep commas inside names/organizations wrapped in quotes.
  - Good: `"Bob Geise, MD"`
  - Risky: `Bob Geise, MD`
- Save as `.csv`.
- View through localhost, not by double-clicking the HTML file.
