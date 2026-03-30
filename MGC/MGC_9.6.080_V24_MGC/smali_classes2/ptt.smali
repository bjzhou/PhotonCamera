.class final Lptt;
.super Ljava/io/FileOutputStream;
.source "PG"


# instance fields
.field final synthetic a:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lptt;->a:Ljava/io/RandomAccessFile;

    nop

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

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lptt;->a:Ljava/io/RandomAccessFile;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
