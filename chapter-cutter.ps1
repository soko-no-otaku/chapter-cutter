$source  = $args[0]
$chapter = $args[1]
$output_filename = (Read-Host "Please enter output file name") + ".mp4"

$chapter_list = (.\ffprobe.exe -print_format json -show_chapters $source | ConvertFrom-Json)[0].chapters

$start_time = $chapter_list[$chapter - 1].start_time
$end_time   = $chapter_list[$chapter - 1].end_time
$duration   = $end_time - $start_time

.\ffmpeg.exe -ss $start_time -i $source -t $duration $output_filename