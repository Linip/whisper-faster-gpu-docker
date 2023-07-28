whisper() {
  docker run --rm \
  --user $EUID \
  -v $(pwd):/mnt \
  -v /home/aleksandr/PycharmProjects/whisper-build/whisper-faster-models:/root/.cache/huggingface \
  --name whisper-faster-gpu \
  --runtime=nvidia \
  -w=/mnt \
  whisper-faster-gpu \
  $*
}