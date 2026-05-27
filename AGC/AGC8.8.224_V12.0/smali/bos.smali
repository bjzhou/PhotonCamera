.class public final enum Lbos;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbos;

.field public static final enum b:Lbos;

.field public static final enum c:Lbos;

.field public static final enum d:Lbos;

.field private static final synthetic e:[Lbos;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lbos;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbos;->a:Lbos;

    new-instance v1, Lbos;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbos;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbos;->b:Lbos;

    new-instance v3, Lbos;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbos;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbos;->c:Lbos;

    new-instance v5, Lbos;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbos;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbos;->d:Lbos;

    const/4 v7, 0x4

    new-array v7, v7, [Lbos;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lbos;->e:[Lbos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbos;
    .locals 1

    sget-object v0, Lbos;->e:[Lbos;

    invoke-virtual {v0}, [Lbos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbos;

    return-object v0
.end method
