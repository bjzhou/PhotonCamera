.class public final enum Ldhp;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldhp;

.field public static final enum b:Ldhp;

.field public static final enum c:Ldhp;

.field public static final enum d:Ldhp;

.field private static final synthetic e:[Ldhp;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ldhp;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldhp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhp;->a:Ldhp;

    new-instance v1, Ldhp;

    const-string v3, "PERIODIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldhp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldhp;->b:Ldhp;

    new-instance v3, Ldhp;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldhp;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldhp;->c:Ldhp;

    new-instance v5, Ldhp;

    const-string v7, "SHUTTER_ASAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldhp;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldhp;->d:Ldhp;

    const/4 v7, 0x4

    new-array v7, v7, [Ldhp;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ldhp;->e:[Ldhp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldhp;
    .locals 1

    sget-object v0, Ldhp;->e:[Ldhp;

    invoke-virtual {v0}, [Ldhp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldhp;

    return-object v0
.end method
