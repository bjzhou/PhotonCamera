.class public final enum Lyl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lyl;

.field public static final enum b:Lyl;

.field public static final enum c:Lyl;

.field public static final enum d:Lyl;

.field public static final enum e:Lyl;

.field public static final enum f:Lyl;

.field public static final enum g:Lyl;

.field public static final enum h:Lyl;

.field public static final enum i:Lyl;

.field private static final synthetic j:[Lyl;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lyl;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyl;->a:Lyl;

    new-instance v1, Lyl;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyl;->b:Lyl;

    new-instance v3, Lyl;

    const-string v5, "TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyl;->c:Lyl;

    new-instance v5, Lyl;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyl;->d:Lyl;

    new-instance v7, Lyl;

    const-string v9, "BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lyl;->e:Lyl;

    new-instance v9, Lyl;

    const-string v11, "BASELINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lyl;->f:Lyl;

    new-instance v11, Lyl;

    const-string v13, "CENTER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lyl;->g:Lyl;

    new-instance v13, Lyl;

    const-string v15, "CENTER_X"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lyl;->h:Lyl;

    new-instance v15, Lyl;

    const-string v14, "CENTER_Y"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lyl;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lyl;->i:Lyl;

    const/16 v14, 0x9

    new-array v14, v14, [Lyl;

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

    sput-object v14, Lyl;->j:[Lyl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lyl;
    .locals 1

    sget-object v0, Lyl;->j:[Lyl;

    invoke-virtual {v0}, [Lyl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyl;

    return-object v0
.end method
