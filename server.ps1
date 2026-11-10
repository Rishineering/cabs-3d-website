# Simple HTTP server for serving the 3D website
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8080/")
$listener.Start()

$root = "C:\Users\anand\Documents\Default Project\cabs-3d-website"

Write-Host "=== Local Server Started ===" -ForegroundColor Green
Write-Host "Server running at: http://localhost:8080" -ForegroundColor Cyan
Write-Host "Serving files from: $root" -ForegroundColor Cyan
Write-Host "Press Ctrl+C to stop" -ForegroundColor Yellow
Write-Host ""

try {
    while ($true) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $filePath = $request.Url.AbsolutePath
        if ($filePath -eq "/" -or $filePath -eq "") { $filePath = "/index.html" }

        $fullPath = Join-Path $root $filePath

        if (Test-Path $fullPath -PathType Leaf) {
            $content = [System.IO.File]::ReadAllBytes($fullPath)
            $extension = [System.IO.Path]::GetExtension($fullPath)

            switch ($extension) {
                ".html" { $response.ContentType = "text/html" }
                ".css" { $response.ContentType = "text/css" }
                ".js" { $response.ContentType = "application/javascript" }
                ".json" { $response.ContentType = "application/json" }
                ".png" { $response.ContentType = "image/png" }
                ".jpg" { $response.ContentType = "image/jpeg" }
                ".svg" { $response.ContentType = "image/svg+xml" }
                default { $response.ContentType = "application/octet-stream" }
            }

            $response.ContentEncoding = [System.Text.Encoding]::UTF8
            $response.StatusCode = 200
            $response.OutputStream.Write($content, 0, $content.Length)
        } else {
            $response.StatusCode = 404
            $response.StatusDescription = "Not Found"
            $content = [System.Text.Encoding]::UTF8.GetBytes("404 - File Not Found")
            $response.OutputStream.Write($content, 0, $content.Length)
        }

        $response.OutputStream.Close()
    }
} catch {
    Write-Host "Server stopped." -ForegroundColor Yellow
} finally {
    $listener.Stop()
}
