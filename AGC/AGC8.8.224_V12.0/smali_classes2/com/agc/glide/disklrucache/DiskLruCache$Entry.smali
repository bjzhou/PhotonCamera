.class final Lcom/agc/glide/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/agc/glide/disklrucache/DiskLruCache$Editor;

.field dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/agc/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1900(Lcom/agc/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    invoke-static {p1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1900(Lcom/agc/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    invoke-static {p1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1900(Lcom/agc/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1900(Lcom/agc/glide/disklrucache/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$2000(Lcom/agc/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$2000(Lcom/agc/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/agc/glide/disklrucache/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;)[J
    .locals 0

    iget-object p0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;)J
    .locals 2

    iget-wide v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method public static synthetic access$1302(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;J)J
    .locals 0

    iput-wide p1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method public static synthetic access$700(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;)Lcom/agc/glide/disklrucache/DiskLruCache$Editor;
    .locals 0

    iget-object p0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/agc/glide/disklrucache/DiskLruCache$Editor;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;Lcom/agc/glide/disklrucache/DiskLruCache$Editor;)Lcom/agc/glide/disklrucache/DiskLruCache$Editor;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/agc/glide/disklrucache/DiskLruCache$Editor;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/agc/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1900(Lcom/agc/glide/disklrucache/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
