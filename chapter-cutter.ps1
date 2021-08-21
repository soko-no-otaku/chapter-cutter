$source  = $args[0]
$output_filename = $args[1]

$start_chapter = $args[2]
if ($args.Length -eq 3) {
    $end_chapter = $start_chapter
} else {
    $end_chapter = $args[3]
}

$chapter_list = (ffprobe.exe -print_format json -show_chapters $source | ConvertFrom-Json)[0].chapters

$start_time = $chapter_list[$start_chapter - 1].start_time
$end_time   = $chapter_list[$end_chapter - 1].end_time
$duration   = $end_time - $start_time

ffmpeg.exe -ss $start_time -i $source -t $duration $output_filename
