params.reads = "$projectDir/data/ggal/gut_{1,2}.fq"
params.transcriptome_file = "$projectDir/data/ggal/transcriptome.fa"
params.multiqc = "$projectDir/multiqc"
params.outdir = "results"

log.info """\
    R N A S E Q - N F   P I P E L I N E
    ===================================
    reads             : ${params.reads}
    transcriptome_file: ${params.transcriptome_file}
    multiqc           : ${params.multiqc}
    outdir            : ${params.outdir}
    """
    .stripIndent()

