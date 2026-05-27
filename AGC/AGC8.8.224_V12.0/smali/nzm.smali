.class public final enum Lnzm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnzm;

.field public static final enum b:Lnzm;

.field public static final enum c:Lnzm;

.field public static final enum d:Lnzm;

.field public static final enum e:Lnzm;

.field public static final enum f:Lnzm;

.field public static final enum g:Lnzm;

.field public static final enum h:Lnzm;

.field public static final enum i:Lnzm;

.field private static final synthetic j:[Lnzm;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lnzm;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnzm;->a:Lnzm;

    new-instance v1, Lnzm;

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnzm;->b:Lnzm;

    new-instance v3, Lnzm;

    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnzm;->c:Lnzm;

    new-instance v5, Lnzm;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnzm;->d:Lnzm;

    new-instance v7, Lnzm;

    const-string v9, "BOOLEAN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnzm;->e:Lnzm;

    new-instance v9, Lnzm;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnzm;->f:Lnzm;

    new-instance v11, Lnzm;

    sget-object v13, Lnvt;->b:Lnvt;

    const-string v13, "BYTE_STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lnzm;->g:Lnzm;

    new-instance v13, Lnzm;

    const-string v15, "ENUM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lnzm;->h:Lnzm;

    new-instance v15, Lnzm;

    const-string v14, "MESSAGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lnzm;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lnzm;->i:Lnzm;

    const/16 v14, 0x9

    new-array v14, v14, [Lnzm;

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

    sput-object v14, Lnzm;->j:[Lnzm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lnzm;
    .locals 1

    sget-object v0, Lnzm;->j:[Lnzm;

    invoke-virtual {v0}, [Lnzm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnzm;

    return-object v0
.end method
