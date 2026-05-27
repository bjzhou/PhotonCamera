.class public final enum Lcom/agc/glide/load/DecodeFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/load/DecodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/load/DecodeFormat;

.field public static final DEFAULT:Lcom/agc/glide/load/DecodeFormat;

.field public static final enum PREFER_ARGB_8888:Lcom/agc/glide/load/DecodeFormat;

.field public static final enum PREFER_RGB_565:Lcom/agc/glide/load/DecodeFormat;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/load/DecodeFormat;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/agc/glide/load/DecodeFormat;

    sget-object v1, Lcom/agc/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/agc/glide/load/DecodeFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/agc/glide/load/DecodeFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/agc/glide/load/DecodeFormat;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/agc/glide/load/DecodeFormat;

    new-instance v1, Lcom/agc/glide/load/DecodeFormat;

    const-string v2, "PREFER_RGB_565"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/agc/glide/load/DecodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/agc/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/agc/glide/load/DecodeFormat;

    invoke-static {}, Lcom/agc/glide/load/DecodeFormat;->$values()[Lcom/agc/glide/load/DecodeFormat;

    move-result-object v1

    sput-object v1, Lcom/agc/glide/load/DecodeFormat;->$VALUES:[Lcom/agc/glide/load/DecodeFormat;

    sput-object v0, Lcom/agc/glide/load/DecodeFormat;->DEFAULT:Lcom/agc/glide/load/DecodeFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/load/DecodeFormat;
    .locals 1

    const-class v0, Lcom/agc/glide/load/DecodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/DecodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/load/DecodeFormat;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/DecodeFormat;->$VALUES:[Lcom/agc/glide/load/DecodeFormat;

    invoke-virtual {v0}, [Lcom/agc/glide/load/DecodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/load/DecodeFormat;

    return-object v0
.end method
