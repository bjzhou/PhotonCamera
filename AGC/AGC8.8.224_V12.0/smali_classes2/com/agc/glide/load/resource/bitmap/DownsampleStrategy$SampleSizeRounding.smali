.class public final enum Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleSizeRounding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

.field public static final enum MEMORY:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

.field public static final enum QUALITY:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    sget-object v1, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    const-string v1, "QUALITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->QUALITY:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    invoke-static {}, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->$values()[Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->$VALUES:[Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 1

    const-class v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->$VALUES:[Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    invoke-virtual {v0}, [Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    return-object v0
.end method
