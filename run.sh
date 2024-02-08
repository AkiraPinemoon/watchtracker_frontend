cd app/lib
inotifywait -r -m -e modify . | xargs -n 1 -I {} sh -c "echo r" | flutter run
