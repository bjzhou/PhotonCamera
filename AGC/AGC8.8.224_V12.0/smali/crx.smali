.class public final enum Lcrx;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrx;

.field public static final enum b:Lcrx;

.field public static final enum c:Lcrx;

.field public static final enum d:Lcrx;

.field public static final enum e:Lcrx;

.field public static final enum f:Lcrx;

.field private static final synthetic g:[Lcrx;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcrx;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcrx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrx;->a:Lcrx;

    new-instance v1, Lcrx;

    const-string v3, "INITIATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcrx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcrx;->b:Lcrx;

    new-instance v3, Lcrx;

    const-string v5, "CAPTURE_SESSION_ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcrx;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcrx;->c:Lcrx;

    new-instance v5, Lcrx;

    const-string v7, "CAPTURE_SESSION_CLOSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcrx;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcrx;->d:Lcrx;

    new-instance v7, Lcrx;

    const-string v9, "RECORDING_SESSION_ACTIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcrx;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcrx;->e:Lcrx;

    new-instance v9, Lcrx;

    const-string v11, "ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcrx;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcrx;->f:Lcrx;

    const/4 v11, 0x6

    new-array v11, v11, [Lcrx;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcrx;->g:[Lcrx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcrx;
    .locals 1

    sget-object v0, Lcrx;->g:[Lcrx;

    invoke-virtual {v0}, [Lcrx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrx;

    return-object v0
.end method
