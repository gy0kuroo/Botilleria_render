{
    "builds": [
      {
        "src": "build.sh",
        "use": "@vercel/static-build",
        "config": {
          "distDir": "staticfiles_build"
        }
      },
      {
        "src": "/boti/wsgi.py",
        "use": "@vercel/python",
        "config": { "maxLambdaSize": "15mb" }
      }
    ],
    "routes": [
      {
        "src": "/(.*)",
        "dest": "boti/wsgi.py"
      },
      {
        "src": "/static/(.*)",
        "dest": "/static/$1"
      }
    ]
  }