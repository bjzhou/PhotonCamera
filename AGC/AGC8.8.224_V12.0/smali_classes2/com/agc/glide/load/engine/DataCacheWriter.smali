.class Lcom/agc/glide/load/engine/DataCacheWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/agc/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Encoder<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final options:Lcom/agc/glide/load/Options;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/Encoder;Ljava/lang/Object;Lcom/agc/glide/load/Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Encoder<",
            "TDataType;>;TDataType;",
            "Lcom/agc/glide/load/Options;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/engine/DataCacheWriter;->encoder:Lcom/agc/glide/load/Encoder;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DataCacheWriter;->data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/agc/glide/load/engine/DataCacheWriter;->options:Lcom/agc/glide/load/Options;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheWriter;->encoder:Lcom/agc/glide/load/Encoder;

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheWriter;->data:Ljava/lang/Object;

    iget-object v2, p0, Lcom/agc/glide/load/engine/DataCacheWriter;->options:Lcom/agc/glide/load/Options;

    invoke-interface {v0, v1, p1, v2}, Lcom/agc/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method
