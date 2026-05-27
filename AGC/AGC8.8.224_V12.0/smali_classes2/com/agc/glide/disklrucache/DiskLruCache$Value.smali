.class public final Lcom/agc/glide/disklrucache/DiskLruCache$Value;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/agc/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    iput-object p5, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    iput-object p6, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/agc/glide/disklrucache/DiskLruCache$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/agc/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/agc/glide/disklrucache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1700(Lcom/agc/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/agc/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLength(I)J
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
