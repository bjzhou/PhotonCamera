.class public final enum Lbnl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbnl;

.field public static final enum b:Lbnl;

.field public static final enum c:Lbnl;

.field public static final enum d:Lbnl;

.field public static final enum e:Lbnl;

.field public static final enum f:Lbnl;

.field private static final synthetic g:[Lbnl;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lbnl;

    const-string v1, "NO_FLASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbnl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnl;->a:Lbnl;

    new-instance v1, Lbnl;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbnl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbnl;->b:Lbnl;

    new-instance v3, Lbnl;

    const-string v5, "OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbnl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbnl;->c:Lbnl;

    new-instance v5, Lbnl;

    const-string v7, "ON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbnl;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbnl;->d:Lbnl;

    new-instance v7, Lbnl;

    const-string v9, "TORCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lbnl;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbnl;->e:Lbnl;

    new-instance v9, Lbnl;

    const-string v11, "RED_EYE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lbnl;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lbnl;->f:Lbnl;

    const/4 v11, 0x6

    new-array v11, v11, [Lbnl;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lbnl;->g:[Lbnl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbnl;
    .locals 1

    sget-object v0, Lbnl;->g:[Lbnl;

    invoke-virtual {v0}, [Lbnl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnl;

    return-object v0
.end method
