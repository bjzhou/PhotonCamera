.class final enum Lcrh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrh;

.field public static final enum b:Lcrh;

.field public static final enum c:Lcrh;

.field public static final enum d:Lcrh;

.field public static final enum e:Lcrh;

.field public static final enum f:Lcrh;

.field private static final synthetic g:[Lcrh;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcrh;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcrh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrh;->a:Lcrh;

    new-instance v1, Lcrh;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcrh;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcrh;->b:Lcrh;

    new-instance v3, Lcrh;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcrh;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcrh;->c:Lcrh;

    new-instance v5, Lcrh;

    const-string v7, "STOPPING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcrh;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcrh;->d:Lcrh;

    new-instance v7, Lcrh;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcrh;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcrh;->e:Lcrh;

    new-instance v9, Lcrh;

    const-string v11, "CLOSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcrh;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcrh;->f:Lcrh;

    const/4 v11, 0x6

    new-array v11, v11, [Lcrh;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcrh;->g:[Lcrh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcrh;
    .locals 1

    sget-object v0, Lcrh;->g:[Lcrh;

    invoke-virtual {v0}, [Lcrh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrh;

    return-object v0
.end method
