# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **static HTML landing page** for **PKI as a Service** by RDEM Systems. It's a single-page website showcasing PKI (Public Key Infrastructure) services with pricing, features, and contact information.

**Note**: The PKIaaS software is now **open source (AGPL v3)**:
- GitHub Repository: https://github.com/rdemsystems/pki
- Documentation: https://pki.rdem-systems.com
- Commercial licensing available for enterprise customers

## Tech Stack

- **Static HTML5** with semantic markup
- **Tailwind CSS** via CDN for styling and responsive design
- **Lucide Icons** for consistent iconography
- **Google Fonts** (Inter & Poppins) for typography
- **Vanilla JavaScript** for smooth scrolling and icon initialization

## File Structure

```
pkiaas-ws/
├── index.html          # Main landing page (single file application)
└── CLAUDE.md          # This file
```

## Design System

### Colors (RDEM Systems Branding)
- **Primary Brand Color**: `#1E3A8A` (primary-700 in Tailwind)
- **Color Palette**: Blue gradient from primary-50 to primary-900
- **Accent Colors**: Green for success states and launch offers

### Typography
- **Headings**: Poppins font family (font-heading class)
- **Body Text**: Inter font family (default sans)
- **Font Weights**: 400-700 range for different emphasis levels

### Layout Patterns
- **Container**: `container mx-auto px-6` for consistent page width
- **Sections**: Alternating white and gradient backgrounds
- **Cards**: White background with border and hover shadows
- **Grid Systems**: Responsive grids (md:grid-cols-2, lg:grid-cols-3, etc.)

## Content Structure

### Main Sections
1. **Navigation** - RDEM Systems branding with smooth scroll links
2. **Hero** - Main value proposition with launch offer banner
3. **Features** - 6-card grid showcasing PKI capabilities
4. **Pricing** - 2-tier pricing (Cloud vs Self-hosted) with launch discount
5. **Use Cases** - 6 common PKI application scenarios
6. **Contact** - Call-to-action with contact methods and final offer reminder
7. **Footer** - Company info and service summary

### Key Features Highlighted
- Private Certificate Authority (CA)
- Unlimited certificate issuance
- REST API integration
- HSM security
- Monitoring and alerts
- Compliance and audit capabilities

## Development Commands

Since this is a static HTML file, no build process is required:

```bash
# Serve locally with Python (for development)
python3 -m http.server 8000

# Or with Node.js http-server (if installed)
npx http-server -p 8000

# Or simply open the file directly in browser
open index.html
```

## Deployment

The site is designed to be deployed as a static website. Common deployment options:

- **GitHub Pages** - Direct deployment from repository
- **Netlify/Vercel** - Automatic deployment from git
- **Traditional Web Server** - Upload index.html to web root
- **CDN** - For global distribution

## Content Management

### Pricing Updates
- Launch discount percentages are in multiple locations (hero banner, pricing cards)
- Original prices are crossed out with `line-through` class
- All prices marked as "HT" (hors taxes / excluding taxes)

### Contact Information
- Email: `contact@rdem-systems.com`
- Phone: `+33 1 77 62 62 42`
- Both appear in contact section and footer

### Launch Offer Configuration
- Current offer: `-30% de remise pour les 30 premiers clients`
- Appears in: hero banner, pricing section, contact section
- Styling: Green accent colors with sparkles icons

## Technical Implementation Notes

### Tailwind Configuration
- Custom primary color palette overriding default indigo
- Extended font families for heading/body text distinction
- Configuration embedded in `<script>` tag within HTML

### JavaScript Functionality
- **Lucide Icons**: Automatic initialization with `lucide.createIcons()`
- **Smooth Scrolling**: Event listeners for anchor links starting with `#`
- **No Framework Dependencies**: Pure vanilla JavaScript implementation

### Performance Considerations
- **CDN Resources**: Tailwind CSS, Google Fonts, and Lucide Icons loaded via CDN
- **Single File**: Entire site in one HTML file for minimal requests
- **Responsive Images**: Icons are vector-based (Lucide) for scalability

## SEO and Meta Data

- **Primary Keywords**: PKI, certificats, SSL, TLS, CA, infrastructure clés publiques
- **Open Graph**: Configured for social media sharing
- **Viewport**: Mobile-responsive meta tag
- **Semantic HTML**: Proper heading hierarchy and section structure

## Maintenance Notes

- Update pricing when launch offer expires
- Review contact information for accuracy
- Monitor external CDN dependencies for availability
- Test responsive design across devices when making layout changes