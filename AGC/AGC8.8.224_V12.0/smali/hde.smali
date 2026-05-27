.class public final enum Lhde;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhde;

.field public static final enum b:Lhde;

.field public static final enum c:Lhde;

.field public static final enum d:Lhde;

.field public static final enum e:Lhde;

.field public static final enum f:Lhde;

.field public static final enum g:Lhde;

.field private static final synthetic h:[Lhde;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lhde;

    const-string v1, "APPLICATION_LIFECYCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhde;->a:Lhde;

    new-instance v1, Lhde;

    const-string v3, "APPLICATION_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhde;->b:Lhde;

    new-instance v3, Lhde;

    const-string v5, "CAMERA_FACING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhde;->c:Lhde;

    new-instance v5, Lhde;

    const-string v7, "POST_CAPTURE_COOLDOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhde;->d:Lhde;

    new-instance v7, Lhde;

    const-string v9, "EXTERNAL_TOGGLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhde;->e:Lhde;

    new-instance v9, Lhde;

    const-string v11, "TIMER_ACTIVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lhde;->f:Lhde;

    new-instance v11, Lhde;

    const-string v13, "UI_CONFLICT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lhde;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lhde;->g:Lhde;

    const/4 v13, 0x7

    new-array v13, v13, [Lhde;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lhde;->h:[Lhde;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhde;
    .locals 1

    sget-object v0, Lhde;->h:[Lhde;

    invoke-virtual {v0}, [Lhde;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhde;

    return-object v0
.end method
