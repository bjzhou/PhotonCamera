.class public final Lcom/agc/glide/load/resource/gif/GifOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECODE_FORMAT:Lcom/agc/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Option<",
            "Lcom/agc/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE_ANIMATION:Lcom/agc/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/agc/glide/load/DecodeFormat;->DEFAULT:Lcom/agc/glide/load/DecodeFormat;

    const-string v1, "com.agc.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lcom/agc/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/agc/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/resource/gif/GifOptions;->DECODE_FORMAT:Lcom/agc/glide/load/Option;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.agc.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lcom/agc/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/agc/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/resource/gif/GifOptions;->DISABLE_ANIMATION:Lcom/agc/glide/load/Option;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
