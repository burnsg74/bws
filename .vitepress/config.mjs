import { defineConfig } from 'vitepress'

export default defineConfig({
  title: "Burns Web Services",
  description: "Full Stack Engineer Tech Notes",
  base: '/',
  srcDir: './docs',
  themeConfig: {
    socialLinks: [
      { icon: 'github', link: 'https://github.com/burnsg74' }
    ]
  }
})