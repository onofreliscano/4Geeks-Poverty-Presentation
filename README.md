rm -rf export && \
npx reveal-md 00-index.md --theme src/theme/beige-4geeks.css --static export && \
mkdir -p export/_assets/theme/img && \
cp -R src/theme/img/* export/_assets/theme/img/
cd export
python3 -m http.server 8080# ci test
