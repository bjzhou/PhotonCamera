.class synthetic Lcom/agc/glide/load/engine/DecodeJob$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$agc$glide$load$EncodeStrategy:[I

.field static final synthetic $SwitchMap$com$agc$glide$load$engine$DecodeJob$RunReason:[I

.field static final synthetic $SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/agc/glide/load/EncodeStrategy;->values()[Lcom/agc/glide/load/EncodeStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$EncodeStrategy:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/agc/glide/load/EncodeStrategy;->SOURCE:Lcom/agc/glide/load/EncodeStrategy;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$EncodeStrategy:[I

    sget-object v3, Lcom/agc/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/agc/glide/load/EncodeStrategy;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    invoke-static {}, Lcom/agc/glide/load/engine/DecodeJob$Stage;->values()[Lcom/agc/glide/load/engine/DecodeJob$Stage;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    :try_start_2
    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    sget-object v2, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    sget-object v4, Lcom/agc/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    :goto_4
    :try_start_5
    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    sget-object v4, Lcom/agc/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$Stage:[I

    sget-object v4, Lcom/agc/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :goto_6
    invoke-static {}, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->values()[Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$RunReason:[I

    :try_start_7
    sget-object v4, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$RunReason:[I

    sget-object v3, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/agc/glide/load/engine/DecodeJob$1;->$SwitchMap$com$agc$glide$load$engine$DecodeJob$RunReason:[I

    sget-object v1, Lcom/agc/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/agc/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    return-void
.end method
