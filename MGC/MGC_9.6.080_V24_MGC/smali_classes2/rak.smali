.class public final synthetic Lrak;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Lram;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lram;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Lrak;->b:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrak;->a:Lram;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lrak;->a:Lram;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, p0, Lrak;->b:J

    nop

    :try_start_0
    iget-object p0, p1, Lram;->f:Lhdn;

    nop

    nop

    nop

    nop

    iget-object v2, p1, Lram;->a:Landroid/net/Uri;

    nop

    new-instance v3, Lrap;

    nop

    const/4 v4, 0x2

    nop

    invoke-direct {v3, v4}, Lrap;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/io/RandomAccessFile;

    nop

    nop

    nop

    nop

    new-instance v2, Lqzz;

    nop

    invoke-direct {v2, p0}, Lqzz;-><init>(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, v2, Lqzz;->a:Ljava/io/Closeable;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ljava/io/RandomAccessFile;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    nop

    nop

    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {p0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p0

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lram;->e:Lrnb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Lrnb;->a(Ljava/io/OutputStream;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object p1, v2, Lqzz;->a:Ljava/io/Closeable;

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p0

    nop

    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lqzz;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p0

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_4
    invoke-virtual {v2}, Lqzz;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
