.class public Lcom/agc/glide/load/resource/transcode/UnitTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final UNIT_TRANSCODER:Lcom/agc/glide/load/resource/transcode/UnitTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/resource/transcode/UnitTranscoder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/resource/transcode/UnitTranscoder;

    invoke-direct {v0}, Lcom/agc/glide/load/resource/transcode/UnitTranscoder;-><init>()V

    sput-object v0, Lcom/agc/glide/load/resource/transcode/UnitTranscoder;->UNIT_TRANSCODER:Lcom/agc/glide/load/resource/transcode/UnitTranscoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/agc/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/transcode/UnitTranscoder;->UNIT_TRANSCODER:Lcom/agc/glide/load/resource/transcode/UnitTranscoder;

    return-object v0
.end method


# virtual methods
.method public transcode(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
