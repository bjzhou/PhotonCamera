.class final enum Lilx;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lilx;

.field public static final enum b:Lilx;

.field public static final enum c:Lilx;

.field public static final enum d:Lilx;

.field public static final enum e:Lilx;

.field public static final enum f:Lilx;

.field private static final synthetic g:[Lilx;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lilx;

    const-string v1, "NARROWEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lilx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lilx;->a:Lilx;

    new-instance v1, Lilx;

    const-string v3, "WIDEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lilx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lilx;->b:Lilx;

    new-instance v3, Lilx;

    const-string v5, "MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lilx;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lilx;->c:Lilx;

    new-instance v5, Lilx;

    const-string v7, "NARROWEST_RM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lilx;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lilx;->d:Lilx;

    new-instance v7, Lilx;

    const-string v9, "WIDEST_RM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lilx;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lilx;->e:Lilx;

    new-instance v9, Lilx;

    const-string v11, "MIDDLE_RM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lilx;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lilx;->f:Lilx;

    const/4 v11, 0x6

    new-array v11, v11, [Lilx;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lilx;->g:[Lilx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lilx;
    .locals 1

    sget-object v0, Lilx;->g:[Lilx;

    invoke-virtual {v0}, [Lilx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lilx;

    return-object v0
.end method
