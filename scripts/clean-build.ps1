# Clean Build Script for Novel IDE
# This script cleans all build artifacts and caches to fix path reference issues

Write-Host "🧹 Cleaning Novel IDE build artifacts..." -ForegroundColor Cyan
Write-Host ""

# Clean Rust/Cargo build cache
Write-Host "Cleaning Rust build cache (src-tauri/target)..." -ForegroundColor Yellow
if (Test-Path "src-tauri/target") {
    Remove-Item -Recurse -Force "src-tauri/target"
    Write-Host "✓ Removed src-tauri/target" -ForegroundColor Green
} else {
    Write-Host "✓ src-tauri/target already clean" -ForegroundColor Green
}

# Clean Vite build output
Write-Host "Cleaning Vite build output (dist)..." -ForegroundColor Yellow
if (Test-Path "dist") {
    Remove-Item -Recurse -Force "dist"
    Write-Host "✓ Removed dist" -ForegroundColor Green
} else {
    Write-Host "✓ dist already clean" -ForegroundColor Green
}

# Clean TypeScript build output
Write-Host "Cleaning TypeScript build output..." -ForegroundColor Yellow
if (Test-Path "tsconfig.tsbuildinfo") {
    Remove-Item -Force "tsconfig.tsbuildinfo"
    Write-Host "✓ Removed tsconfig.tsbuildinfo" -ForegroundColor Green
}

# Clean node_modules (optional - uncomment if needed)
# Write-Host "Cleaning node_modules..." -ForegroundColor Yellow
# if (Test-Path "node_modules") {
#     Remove-Item -Recurse -Force "node_modules"
#     Write-Host "✓ Removed node_modules" -ForegroundColor Green
#     Write-Host "Running npm install..." -ForegroundColor Yellow
#     npm install
#     Write-Host "✓ npm install complete" -ForegroundColor Green
# }

Write-Host ""
Write-Host "✅ Build cleanup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "You can now run:" -ForegroundColor Cyan
Write-Host "  npm run tauri:dev   - for development" -ForegroundColor White
Write-Host "  npm run tauri:build - for production build" -ForegroundColor White
Write-Host ""
