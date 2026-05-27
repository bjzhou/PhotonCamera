.class public final enum Lcom/agc/glide/load/PreferredColorSpace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/agc/glide/load/PreferredColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/agc/glide/load/PreferredColorSpace;

.field public static final enum DISPLAY_P3:Lcom/agc/glide/load/PreferredColorSpace;

.field public static final enum SRGB:Lcom/agc/glide/load/PreferredColorSpace;


# direct methods
.method private static synthetic $values()[Lcom/agc/glide/load/PreferredColorSpace;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/agc/glide/load/PreferredColorSpace;

    sget-object v1, Lcom/agc/glide/load/PreferredColorSpace;->SRGB:Lcom/agc/glide/load/PreferredColorSpace;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/agc/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/agc/glide/load/PreferredColorSpace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/load/PreferredColorSpace;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/PreferredColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/PreferredColorSpace;->SRGB:Lcom/agc/glide/load/PreferredColorSpace;

    new-instance v0, Lcom/agc/glide/load/PreferredColorSpace;

    const-string v1, "DISPLAY_P3"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/PreferredColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/agc/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/agc/glide/load/PreferredColorSpace;

    invoke-static {}, Lcom/agc/glide/load/PreferredColorSpace;->$values()[Lcom/agc/glide/load/PreferredColorSpace;

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/PreferredColorSpace;->$VALUES:[Lcom/agc/glide/load/PreferredColorSpace;

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

.method public static valueOf(Ljava/lang/String;)Lcom/agc/glide/load/PreferredColorSpace;
    .locals 1

    const-class v0, Lcom/agc/glide/load/PreferredColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/load/PreferredColorSpace;

    return-object p0
.end method

.method public static values()[Lcom/agc/glide/load/PreferredColorSpace;
    .locals 1

    sget-object v0, Lcom/agc/glide/load/PreferredColorSpace;->$VALUES:[Lcom/agc/glide/load/PreferredColorSpace;

    invoke-virtual {v0}, [Lcom/agc/glide/load/PreferredColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/agc/glide/load/PreferredColorSpace;

    return-object v0
.end method
