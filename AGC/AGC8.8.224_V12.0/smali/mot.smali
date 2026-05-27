.class final enum Lmot;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lmot;

.field public static final enum b:Lmot;

.field public static final enum c:Lmot;

.field public static final enum d:Lmot;

.field public static final enum e:Lmot;

.field public static final enum f:Lmot;

.field public static final enum g:Lmot;

.field private static final synthetic h:[Lmot;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lmot;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmot;->a:Lmot;

    new-instance v1, Lmot;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmot;->b:Lmot;

    new-instance v3, Lmot;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmot;->c:Lmot;

    new-instance v5, Lmot;

    const-string v7, "PROCESSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmot;->d:Lmot;

    new-instance v7, Lmot;

    const-string v9, "PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmot;->e:Lmot;

    new-instance v9, Lmot;

    const-string v11, "SHUTTING_DOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmot;->f:Lmot;

    new-instance v11, Lmot;

    const-string v13, "SHUT_DOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lmot;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lmot;->g:Lmot;

    const/4 v13, 0x7

    new-array v13, v13, [Lmot;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lmot;->h:[Lmot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lmot;
    .locals 1

    sget-object v0, Lmot;->h:[Lmot;

    invoke-virtual {v0}, [Lmot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmot;

    return-object v0
.end method
