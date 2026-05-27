.class public final enum Lhpt;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhpt;

.field public static final enum b:Lhpt;

.field public static final enum c:Lhpt;

.field public static final enum d:Lhpt;

.field public static final enum e:Lhpt;

.field public static final enum f:Lhpt;

.field private static final synthetic g:[Lhpt;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lhpt;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhpt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhpt;->a:Lhpt;

    new-instance v1, Lhpt;

    const-string v3, "SLOWEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhpt;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhpt;->b:Lhpt;

    new-instance v3, Lhpt;

    const-string v5, "SLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhpt;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhpt;->c:Lhpt;

    new-instance v5, Lhpt;

    const-string v7, "LITTLE_FAST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhpt;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhpt;->d:Lhpt;

    new-instance v7, Lhpt;

    const-string v9, "FAST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhpt;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhpt;->e:Lhpt;

    new-instance v9, Lhpt;

    const-string v11, "FASTEST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lhpt;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lhpt;->f:Lhpt;

    const/4 v11, 0x6

    new-array v11, v11, [Lhpt;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lhpt;->g:[Lhpt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhpt;
    .locals 1

    sget-object v0, Lhpt;->g:[Lhpt;

    invoke-virtual {v0}, [Lhpt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhpt;

    return-object v0
.end method
