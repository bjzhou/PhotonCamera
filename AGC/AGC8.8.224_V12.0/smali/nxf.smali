.class public final enum Lnxf;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnxf;

.field public static final enum b:Lnxf;

.field public static final enum c:Lnxf;

.field public static final enum d:Lnxf;

.field public static final enum e:Lnxf;

.field public static final enum f:Lnxf;

.field public static final enum g:Lnxf;

.field public static final enum h:Lnxf;

.field public static final enum i:Lnxf;

.field public static final enum j:Lnxf;

.field private static final synthetic l:[Lnxf;


# instance fields
.field public final k:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-class v0, Ljava/lang/Void;

    new-instance v1, Lnxf;

    const-string v2, "VOID"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lnxf;->a:Lnxf;

    new-instance v0, Lnxf;

    const-class v2, Ljava/lang/Integer;

    const-string v4, "INT"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v2}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnxf;->b:Lnxf;

    new-instance v2, Lnxf;

    const-class v4, Ljava/lang/Long;

    const-string v6, "LONG"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lnxf;->c:Lnxf;

    new-instance v4, Lnxf;

    const-class v6, Ljava/lang/Float;

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lnxf;->d:Lnxf;

    new-instance v6, Lnxf;

    const-class v8, Ljava/lang/Double;

    const-string v10, "DOUBLE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lnxf;->e:Lnxf;

    new-instance v8, Lnxf;

    const-class v10, Ljava/lang/Boolean;

    const-string v12, "BOOLEAN"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Lnxf;->f:Lnxf;

    const-class v10, Ljava/lang/String;

    new-instance v12, Lnxf;

    const-string v14, "STRING"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v10}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lnxf;->g:Lnxf;

    new-instance v10, Lnxf;

    sget-object v14, Lnvt;->b:Lnvt;

    const-class v14, Lnvt;

    const-string v15, "BYTE_STRING"

    const/4 v13, 0x7

    invoke-direct {v10, v15, v13, v14}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lnxf;->h:Lnxf;

    new-instance v14, Lnxf;

    const-class v15, Ljava/lang/Integer;

    const-string v13, "ENUM"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Lnxf;->i:Lnxf;

    const-class v13, Ljava/lang/Object;

    new-instance v15, Lnxf;

    const-string v11, "MESSAGE"

    const/16 v9, 0x9

    invoke-direct {v15, v11, v9, v13}, Lnxf;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v15, Lnxf;->j:Lnxf;

    const/16 v11, 0xa

    new-array v11, v11, [Lnxf;

    aput-object v1, v11, v3

    aput-object v0, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v10, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v15, v11, v9

    sput-object v11, Lnxf;->l:[Lnxf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnxf;->k:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Lnxf;
    .locals 1

    sget-object v0, Lnxf;->l:[Lnxf;

    invoke-virtual {v0}, [Lnxf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnxf;

    return-object v0
.end method
