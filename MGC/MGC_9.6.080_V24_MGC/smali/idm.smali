.class public final synthetic Lidm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# instance fields
.field public final synthetic a:Lidn;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lidn;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p3, p0, Lidm;->c:Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lidm;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lidm;->a:Lidn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p3, p0, Lidm;->a:Lidn;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    iget-object p1, p3, Lidn;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const-string p4, "CAM_ProcessingMedia"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p4, p0, Lidm;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p4, p3, Lidn;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-interface {p4, p2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const-string p4, "ByteArrayOutputStream.writeTo#fd="

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lidm;->c:Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance p2, Ljava/io/BufferedOutputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance p4, Ljava/io/FileOutputStream;

    nop

    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_10
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    :try_start_4
    sget-object p1, Lidn;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {p1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const/16 p1, 0x576

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string p1, "Error when writeTo the ParcelFileDescriptor"

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    :goto_16
    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    iget-object p0, p3, Lidn;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop
.end method
