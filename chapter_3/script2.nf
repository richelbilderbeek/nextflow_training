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

/*
 * define the INDEX process that creates a binary index
 * given the transcriptome file
 */
process INDEX {
    cpus 8

    input:
    path transcriptome

    output:
    path 'salmon_index'

    script:
    """
    salmon index --threads $task.cpus -t $transcriptome -i salmon_index
    """
}

workflow {
    index_ch = INDEX(params.transcriptome_file)
    index_ch.view()
}

