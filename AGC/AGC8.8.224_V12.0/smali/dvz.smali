.class public final enum Ldvz;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldvz;

.field public static final enum b:Ldvz;

.field public static final enum c:Ldvz;

.field public static final enum d:Ldvz;

.field public static final enum e:Ldvz;

.field public static final enum f:Ldvz;

.field public static final enum g:Ldvz;

.field public static final enum h:Ldvz;

.field public static final enum i:Ldvz;

.field public static final enum j:Ldvz;

.field public static final enum k:Ldvz;

.field private static final synthetic l:[Ldvz;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ldvz;

    const-string v1, "BOUNDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldvz;->a:Ldvz;

    new-instance v1, Ldvz;

    const-string v3, "BOUNDARY_COLOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldvz;->b:Ldvz;

    new-instance v3, Ldvz;

    const-string v5, "BOUNDARY_CORNER_RADIUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldvz;->c:Ldvz;

    new-instance v5, Ldvz;

    const-string v7, "BOUNDARY_DIAMETER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldvz;->d:Ldvz;

    new-instance v7, Ldvz;

    const-string v9, "BOUNDARY_THICKNESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldvz;->e:Ldvz;

    new-instance v9, Ldvz;

    const-string v11, "CORNER_RADIUS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ldvz;->f:Ldvz;

    new-instance v11, Ldvz;

    const-string v13, "COLOR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ldvz;->g:Ldvz;

    new-instance v13, Ldvz;

    const-string v15, "DIAMETER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ldvz;->h:Ldvz;

    new-instance v15, Ldvz;

    const-string v14, "OPACITY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ldvz;->i:Ldvz;

    new-instance v14, Ldvz;

    const-string v12, "SHAPE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ldvz;->j:Ldvz;

    new-instance v12, Ldvz;

    const-string v10, "THICKNESS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ldvz;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ldvz;->k:Ldvz;

    const/16 v10, 0xb

    new-array v10, v10, [Ldvz;

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

    sput-object v10, Ldvz;->l:[Ldvz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldvz;
    .locals 1

    sget-object v0, Ldvz;->l:[Ldvz;

    invoke-virtual {v0}, [Ldvz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldvz;

    return-object v0
.end method
