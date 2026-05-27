.class public final enum Lbnk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbnk;

.field public static final enum b:Lbnk;

.field public static final enum c:Lbnk;

.field public static final enum d:Lbnk;

.field public static final enum e:Lbnk;

.field public static final enum f:Lbnk;

.field public static final enum g:Lbnk;

.field private static final synthetic h:[Lbnk;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lbnk;

    const-string v1, "ZOOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnk;->a:Lbnk;

    new-instance v1, Lbnk;

    const-string v3, "VIDEO_SNAPSHOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbnk;->b:Lbnk;

    new-instance v3, Lbnk;

    const-string v5, "FOCUS_AREA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbnk;->c:Lbnk;

    new-instance v5, Lbnk;

    const-string v7, "METERING_AREA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbnk;->d:Lbnk;

    new-instance v7, Lbnk;

    const-string v9, "AUTO_EXPOSURE_LOCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbnk;->e:Lbnk;

    new-instance v9, Lbnk;

    const-string v11, "AUTO_WHITE_BALANCE_LOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lbnk;->f:Lbnk;

    new-instance v11, Lbnk;

    const-string v13, "VIDEO_STABILIZATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lbnk;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lbnk;->g:Lbnk;

    const/4 v13, 0x7

    new-array v13, v13, [Lbnk;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lbnk;->h:[Lbnk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbnk;
    .locals 1

    sget-object v0, Lbnk;->h:[Lbnk;

    invoke-virtual {v0}, [Lbnk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnk;

    return-object v0
.end method
