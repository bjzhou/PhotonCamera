.class synthetic Lcom/agc/glide/load/ImageHeaderParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$agc$glide$load$ImageHeaderParser$ImageType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->values()[Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$1;->$SwitchMap$com$agc$glide$load$ImageHeaderParser$ImageType:[I

    :try_start_0
    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/agc/glide/load/ImageHeaderParser$1;->$SwitchMap$com$agc$glide$load$ImageHeaderParser$ImageType:[I

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/agc/glide/load/ImageHeaderParser$1;->$SwitchMap$com$agc$glide$load$ImageHeaderParser$ImageType:[I

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
