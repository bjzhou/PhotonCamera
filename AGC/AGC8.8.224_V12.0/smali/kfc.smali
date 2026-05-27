.class public final enum Lkfc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lkfc;

.field public static final enum b:Lkfc;

.field private static final synthetic c:[Lkfc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkfc;

    const-string v1, "ALWAYS_ALLOW_FLASH_MODE_TORCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkfc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkfc;->a:Lkfc;

    new-instance v1, Lkfc;

    const-string v3, "ABORT_FRAME_ON_FAILURE_BEFORE_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkfc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkfc;->b:Lkfc;

    const/4 v3, 0x2

    new-array v3, v3, [Lkfc;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lkfc;->c:[Lkfc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lkfc;
    .locals 1

    sget-object v0, Lkfc;->c:[Lkfc;

    invoke-virtual {v0}, [Lkfc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkfc;

    return-object v0
.end method
