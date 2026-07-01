#!/bin/bash
echo '{
  "name": "crm-tenevaya",
  "private": true,
  "scripts": { "dev": "next dev", "build": "next build", "start": "next start" },
  "dependencies": {
    "next": "^15.3.1", "react": "^19.1.0", "react-dom": "^19.1.0",
    "lucide-react": "^0.487.0", "sonner": "^2.0.3", "zod": "^3.24.4",
    "clsx": "^2.1.1", "tailwind-merge": "^3.2.0", "tailwindcss-animate": "^1.0.7",
    "class-variance-authority": "^0.7.1",
    "@radix-ui/react-slot": "^1.1.2", "@radix-ui/react-avatar": "^1.1.3",
    "@radix-ui/react-dialog": "^1.1.6", "@radix-ui/react-dropdown-menu": "^2.1.6",
    "@radix-ui/react-label": "^2.1.2", "@radix-ui/react-select": "^2.1.6",
    "@radix-ui/react-toast": "^1.2.6",
    "@aws-sdk/client-dynamodb": "^3.600.0", "@aws-sdk/lib-dynamodb": "^3.600.0",
    "uuid": "^11.1.0"
  },
  "devDependencies": {
    "@tailwindcss/postcss": "^4.1.4",
    "tailwindcss": "^4.1.4", "typescript": "^5.8.3",
    "@types/node": "^22.14.1", "@types/react": "^19.1.2", "@types/react-dom": "^19.1.2"
  }
}' > package.json

echo 'import type { NextConfig } from "next";
const nextConfig: NextConfig = {};
export default nextConfig;' > next.config.ts

echo '{
  "compilerOptions": {
    "target": "ES2017", "lib": ["dom", "dom.iterable", "esnext"],
    "allowJs": true, "skipLibCheck": true, "strict": true, "noEmit": true,
    "esModuleInterop": true, "module": "esnext", "moduleResolution": "bundler",
    "resolveJsonModule": true, "isolatedModules": true, "jsx": "preserve",
    "incremental": true, "plugins": [{ "name": "next" }],
    "paths": { "@/*": ["./*"] }
  },
  "include": ["next-env.d.ts", "**/*.ts", "**/*.tsx", ".next/types/**/*.ts"],
  "exclude": ["node_modules"]
}' > tsconfig.json

echo 'const config = { plugins: { "@tailwindcss/postcss": {} } };
export default config;' > postcss.config.mjs

echo 'node_modules
.next
*.tsbuildinfo
next-env.d.ts
.env
.env.local
.env.production' > .gitignore

mkdir -p lib components/ui app/api/products app/api/orders app/api/clients app/api/categories app/api/finances app/api/finance-categories app/api/analytics app/api/history app/api/contractors app/api/health

echo "✅ Все файлы и папки созданы!"