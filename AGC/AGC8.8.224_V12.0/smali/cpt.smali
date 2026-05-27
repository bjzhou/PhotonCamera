.class public final enum Lcpt;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcpt;

.field public static final enum b:Lcpt;

.field public static final enum c:Lcpt;

.field public static final enum d:Lcpt;

.field public static final enum e:Lcpt;

.field public static final enum f:Lcpt;

.field private static final synthetic g:[Lcpt;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcpt;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcpt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpt;->a:Lcpt;

    new-instance v1, Lcpt;

    const-string v3, "STARTING_RECORDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcpt;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcpt;->b:Lcpt;

    new-instance v3, Lcpt;

    const-string v5, "RECORDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcpt;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcpt;->c:Lcpt;

    new-instance v5, Lcpt;

    const-string v7, "RECORDING_PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcpt;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcpt;->d:Lcpt;

    new-instance v7, Lcpt;

    const-string v9, "STOPPING_RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcpt;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcpt;->e:Lcpt;

    new-instance v9, Lcpt;

    const-string v11, "STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcpt;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcpt;->f:Lcpt;

    const/4 v11, 0x6

    new-array v11, v11, [Lcpt;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcpt;->g:[Lcpt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcpt;
    .locals 1

    sget-object v0, Lcpt;->g:[Lcpt;

    invoke-virtual {v0}, [Lcpt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcpt;

    return-object v0
.end method
