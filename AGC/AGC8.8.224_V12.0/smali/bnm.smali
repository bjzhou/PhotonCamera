.class public final enum Lbnm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbnm;

.field public static final enum b:Lbnm;

.field public static final enum c:Lbnm;

.field public static final enum d:Lbnm;

.field public static final enum e:Lbnm;

.field public static final enum f:Lbnm;

.field public static final enum g:Lbnm;

.field private static final synthetic h:[Lbnm;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lbnm;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnm;->a:Lbnm;

    new-instance v1, Lbnm;

    const-string v3, "CONTINUOUS_PICTURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbnm;->b:Lbnm;

    new-instance v3, Lbnm;

    const-string v5, "CONTINUOUS_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbnm;->c:Lbnm;

    new-instance v5, Lbnm;

    const-string v7, "EXTENDED_DOF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbnm;->d:Lbnm;

    new-instance v7, Lbnm;

    const-string v9, "FIXED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lbnm;->e:Lbnm;

    new-instance v9, Lbnm;

    const-string v11, "INFINITY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lbnm;->f:Lbnm;

    new-instance v11, Lbnm;

    const-string v13, "MACRO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lbnm;->g:Lbnm;

    const/4 v13, 0x7

    new-array v13, v13, [Lbnm;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lbnm;->h:[Lbnm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lbnm;
    .locals 1

    sget-object v0, Lbnm;->h:[Lbnm;

    invoke-virtual {v0}, [Lbnm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnm;

    return-object v0
.end method
