.class public interface abstract Lcom/agc/glide/load/model/Headers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/agc/glide/load/model/Headers;

.field public static final NONE:Lcom/agc/glide/load/model/Headers;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/model/Headers$1;

    invoke-direct {v0}, Lcom/agc/glide/load/model/Headers$1;-><init>()V

    sput-object v0, Lcom/agc/glide/load/model/Headers;->NONE:Lcom/agc/glide/load/model/Headers;

    new-instance v0, Lcom/agc/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v0}, Lcom/agc/glide/load/model/LazyHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/load/model/LazyHeaders$Builder;->build()Lcom/agc/glide/load/model/LazyHeaders;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/model/Headers;->DEFAULT:Lcom/agc/glide/load/model/Headers;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
