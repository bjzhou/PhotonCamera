.class public final enum Litn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Litn;

.field public static final enum b:Litn;

.field public static final enum c:Litn;

.field public static final enum d:Litn;

.field private static final synthetic e:[Litn;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Litn;

    const-string v1, "ULTRA_WIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Litn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Litn;->a:Litn;

    new-instance v1, Litn;

    const-string v3, "WIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Litn;-><init>(Ljava/lang/String;I)V

    sput-object v1, Litn;->b:Litn;

    new-instance v3, Litn;

    const-string v5, "TELE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Litn;-><init>(Ljava/lang/String;I)V

    sput-object v3, Litn;->c:Litn;

    new-instance v5, Litn;

    const-string v7, "ULTRA_TELE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Litn;-><init>(Ljava/lang/String;I)V

    sput-object v5, Litn;->d:Litn;

    const/4 v7, 0x4

    new-array v7, v7, [Litn;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Litn;->e:[Litn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Litn;
    .locals 1

    sget-object v0, Litn;->e:[Litn;

    invoke-virtual {v0}, [Litn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Litn;

    return-object v0
.end method
