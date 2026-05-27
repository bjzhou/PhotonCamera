.class Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ByteArrayLoader$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;->build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ByteArrayLoader$Converter<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;->this$0:Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;->convert([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public convert([B)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method
