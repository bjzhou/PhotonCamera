.class public final enum Lgyc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgyc;

.field public static final enum b:Lgyc;

.field public static final enum c:Lgyc;

.field public static final enum d:Lgyc;

.field private static final synthetic e:[Lgyc;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgyc;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgyc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgyc;->a:Lgyc;

    new-instance v1, Lgyc;

    const-string v3, "PHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgyc;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgyc;->b:Lgyc;

    new-instance v3, Lgyc;

    const-string v5, "EXT_WIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lgyc;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgyc;->c:Lgyc;

    new-instance v5, Lgyc;

    const-string v7, "EXT_BLUETOOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lgyc;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgyc;->d:Lgyc;

    const/4 v7, 0x4

    new-array v7, v7, [Lgyc;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lgyc;->e:[Lgyc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lgyc;
    .locals 1

    sget-object v0, Lgyc;->e:[Lgyc;

    invoke-virtual {v0}, [Lgyc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgyc;

    return-object v0
.end method
