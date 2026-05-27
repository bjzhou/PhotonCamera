.class public final enum Lbno;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbno;

.field public static final enum b:Lbno;

.field public static final enum c:Lbno;

.field public static final enum d:Lbno;

.field public static final enum e:Lbno;

.field public static final enum f:Lbno;

.field public static final enum g:Lbno;

.field public static final enum h:Lbno;

.field private static final synthetic i:[Lbno;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbno;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbno;->a:Lbno;

    new-instance v1, Lbno;

    const-string v3, "CLOUDY_DAYLIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbno;->b:Lbno;

    new-instance v3, Lbno;

    const-string v5, "DAYLIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbno;->c:Lbno;

    new-instance v5, Lbno;

    const-string v7, "FLUORESCENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbno;->d:Lbno;

    new-instance v7, Lbno;

    const-string v9, "INCANDESCENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbno;->e:Lbno;

    new-instance v9, Lbno;

    const-string v11, "SHADE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lbno;->f:Lbno;

    new-instance v11, Lbno;

    const-string v13, "TWILIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lbno;->g:Lbno;

    new-instance v13, Lbno;

    const-string v15, "WARM_FLUORESCENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lbno;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lbno;->h:Lbno;

    const/16 v15, 0x8

    new-array v15, v15, [Lbno;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lbno;->i:[Lbno;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbno;
    .locals 1

    sget-object v0, Lbno;->i:[Lbno;

    invoke-virtual {v0}, [Lbno;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbno;

    return-object v0
.end method
