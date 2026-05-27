.class final Lkrc;
.super Ljava/io/FileOutputStream;


# instance fields
.field final synthetic a:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V
    .locals 0

    iput-object p2, p0, Lkrc;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lkrc;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
