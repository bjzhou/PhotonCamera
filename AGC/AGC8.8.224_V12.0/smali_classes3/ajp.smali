.class public final enum Lajp;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lajp;

.field public static final enum b:Lajp;

.field public static final enum c:Lajp;

.field public static final enum d:Lajp;

.field public static final enum e:Lajp;

.field public static final enum f:Lajp;

.field public static final enum g:Lajp;

.field public static final enum h:Lajp;

.field public static final enum i:Lajp;

.field private static final synthetic j:[Lajp;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lajp;

    const-string v1, "PENALTY_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lajp;->a:Lajp;

    new-instance v1, Lajp;

    const-string v3, "PENALTY_DEATH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lajp;->b:Lajp;

    new-instance v3, Lajp;

    const-string v5, "DETECT_FRAGMENT_REUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lajp;->c:Lajp;

    new-instance v5, Lajp;

    const-string v7, "DETECT_FRAGMENT_TAG_USAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lajp;->d:Lajp;

    new-instance v7, Lajp;

    const-string v9, "DETECT_WRONG_NESTED_HIERARCHY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lajp;->e:Lajp;

    new-instance v9, Lajp;

    const-string v11, "DETECT_RETAIN_INSTANCE_USAGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lajp;->f:Lajp;

    new-instance v11, Lajp;

    const-string v13, "DETECT_SET_USER_VISIBLE_HINT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lajp;->g:Lajp;

    new-instance v13, Lajp;

    const-string v15, "DETECT_TARGET_FRAGMENT_USAGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lajp;->h:Lajp;

    new-instance v15, Lajp;

    const-string v14, "DETECT_WRONG_FRAGMENT_CONTAINER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lajp;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lajp;->i:Lajp;

    const/16 v14, 0x9

    new-array v14, v14, [Lajp;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lajp;->j:[Lajp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lajp;
    .locals 1

    sget-object v0, Lajp;->j:[Lajp;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lajp;

    return-object v0
.end method
