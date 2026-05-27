.class public final enum Lcom/agc/glide/load/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/load/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum ANIMATED_AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum ANIMATED_WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum RAW:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;


# instance fields
.field private final hasAlpha:Z


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "GIF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3, v2}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "RAW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "PNG_A"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "PNG"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "WEBP_A"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "WEBP"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "ANIMATED_WEBP"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "AVIF"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "ANIMATED_AVIF"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v3}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    const-string v1, "UNKNOWN"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    invoke-static {}, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->$values()[Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->hasAlpha:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    const-class v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/agc/glide/load/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->hasAlpha:Z

    return v0
.end method

.method public isWebp()Z
    .locals 3

    sget-object v0, Lcom/agc/glide/load/ImageHeaderParser$1;->$SwitchMap$com$agc$glide$load$ImageHeaderParser$ImageType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
