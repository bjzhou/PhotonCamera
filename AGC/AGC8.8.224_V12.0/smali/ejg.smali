.class final enum Lejg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lejg;

.field public static final enum b:Lejg;

.field public static final enum c:Lejg;

.field public static final enum d:Lejg;

.field public static final enum e:Lejg;

.field public static final enum f:Lejg;

.field public static final enum g:Lejg;

.field public static final enum h:Lejg;

.field public static final enum i:Lejg;

.field public static final enum j:Lejg;

.field public static final enum k:Lejg;

.field private static final synthetic l:[Lejg;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lejg;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lejg;->a:Lejg;

    new-instance v1, Lejg;

    const-string v3, "SHOW_ROLL_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lejg;->b:Lejg;

    new-instance v3, Lejg;

    const-string v5, "SHOW_ROLL_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lejg;->c:Lejg;

    new-instance v5, Lejg;

    const-string v7, "SHOW_ARROW_RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lejg;->d:Lejg;

    new-instance v7, Lejg;

    const-string v9, "SHOW_ARROW_LEFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lejg;->e:Lejg;

    new-instance v9, Lejg;

    const-string v11, "SHOW_ARROW_UP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lejg;->f:Lejg;

    new-instance v11, Lejg;

    const-string v13, "SHOW_ARROW_DOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lejg;->g:Lejg;

    new-instance v13, Lejg;

    const-string v15, "SHOW_ARROW_BACKTRACK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lejg;->h:Lejg;

    new-instance v15, Lejg;

    const-string v14, "SHOW_START_ARROW_LEFT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lejg;->i:Lejg;

    new-instance v14, Lejg;

    const-string v12, "SHOW_START_ARROW_RIGHT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lejg;->j:Lejg;

    new-instance v12, Lejg;

    const-string v10, "SHOW_WARNING_VELOCITY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lejg;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lejg;->k:Lejg;

    const/16 v10, 0xb

    new-array v10, v10, [Lejg;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lejg;->l:[Lejg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lejg;
    .locals 1

    sget-object v0, Lejg;->l:[Lejg;

    invoke-virtual {v0}, [Lejg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lejg;

    return-object v0
.end method
