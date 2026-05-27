.class public final enum Lbzl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbzl;

.field public static final enum b:Lbzl;

.field public static final enum c:Lbzl;

.field public static final enum d:Lbzl;

.field public static final enum e:Lbzl;

.field private static final synthetic g:[Lbzl;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lbzl;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbzl;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbzl;->a:Lbzl;

    new-instance v1, Lbzl;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lbzl;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lbzl;->b:Lbzl;

    new-instance v3, Lbzl;

    const-string v5, "CLEARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lbzl;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lbzl;->c:Lbzl;

    new-instance v5, Lbzl;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lbzl;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lbzl;->d:Lbzl;

    new-instance v7, Lbzl;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lbzl;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lbzl;->e:Lbzl;

    const/4 v9, 0x5

    new-array v9, v9, [Lbzl;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lbzl;->g:[Lbzl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lbzl;->f:Z

    return-void
.end method

.method public static values()[Lbzl;
    .locals 1

    sget-object v0, Lbzl;->g:[Lbzl;

    invoke-virtual {v0}, [Lbzl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbzl;

    return-object v0
.end method
