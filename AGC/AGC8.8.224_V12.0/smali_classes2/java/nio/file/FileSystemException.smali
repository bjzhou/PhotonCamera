.class public Ljava/nio/file/FileSystemException;
.super Ljava/io/IOException;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/nio/file/FileSystemException;->a:Ljava/lang/String;

    iput-object v0, p0, Ljava/nio/file/FileSystemException;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/nio/file/FileSystemException;->a:Ljava/lang/String;

    iput-object p2, p0, Ljava/nio/file/FileSystemException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileSystemException;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/nio/file/FileSystemException;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/nio/file/FileSystemException;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/nio/file/FileSystemException;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/nio/file/FileSystemException;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/nio/file/FileSystemException;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtherFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/nio/file/FileSystemException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
