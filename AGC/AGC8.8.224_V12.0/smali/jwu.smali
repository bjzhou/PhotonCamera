.class public final enum Ljwu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljwu;

.field public static final enum b:Ljwu;

.field public static final enum c:Ljwu;

.field public static final enum d:Ljwu;

.field public static final enum e:Ljwu;

.field public static final enum f:Ljwu;

.field public static final enum g:Ljwu;

.field public static final enum h:Ljwu;

.field public static final enum i:Ljwu;

.field public static final enum j:Ljwu;

.field public static final enum k:Ljwu;

.field public static final enum l:Ljwu;

.field public static final m:Ljava/util/Map;

.field private static final synthetic n:[Ljwu;


# instance fields
.field private final o:I

.field private final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljwu;

    const/4 v1, -0x1

    const-string v2, "RES_UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljwu;->a:Ljwu;

    new-instance v1, Ljwu;

    const-string v2, "RES_QCIF"

    const/4 v4, 0x1

    const/16 v5, 0xb0

    const/16 v6, 0x90

    invoke-direct {v1, v2, v4, v5, v6}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v1, Ljwu;->b:Ljwu;

    new-instance v2, Ljwu;

    const-string v5, "RES_QVGA"

    const/4 v6, 0x2

    const/16 v7, 0x140

    const/16 v8, 0xf0

    invoke-direct {v2, v5, v6, v7, v8}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v2, Ljwu;->c:Ljwu;

    new-instance v5, Ljwu;

    const-string v7, "RES_CIF"

    const/4 v8, 0x3

    const/16 v9, 0x160

    const/16 v10, 0x120

    invoke-direct {v5, v7, v8, v9, v10}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v5, Ljwu;->d:Ljwu;

    new-instance v7, Ljwu;

    const-string v9, "RES_480P_4X3"

    const/4 v10, 0x4

    const/16 v11, 0x280

    const/16 v12, 0x1e0

    invoke-direct {v7, v9, v10, v11, v12}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v7, Ljwu;->e:Ljwu;

    new-instance v9, Ljwu;

    const-string v11, "RES_480P"

    const/4 v13, 0x5

    const/16 v14, 0x2d0

    invoke-direct {v9, v11, v13, v14, v12}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v9, Ljwu;->f:Ljwu;

    new-instance v11, Ljwu;

    const-string v12, "RES_720P"

    const/4 v15, 0x6

    const/16 v13, 0x500

    invoke-direct {v11, v12, v15, v13, v14}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v11, Ljwu;->g:Ljwu;

    new-instance v12, Ljwu;

    const-string v13, "RES_720P_3X4"

    const/4 v15, 0x7

    const/16 v10, 0x3c0

    invoke-direct {v12, v13, v15, v14, v10}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v12, Ljwu;->h:Ljwu;

    new-instance v10, Ljwu;

    const-string v13, "RES_1080P"

    const/16 v14, 0x8

    const/16 v15, 0x780

    const/16 v8, 0x438

    invoke-direct {v10, v13, v14, v15, v8}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v10, Ljwu;->i:Ljwu;

    new-instance v13, Ljwu;

    const-string v15, "RES_1080P_3X4"

    const/16 v14, 0x9

    const/16 v6, 0x5a0

    invoke-direct {v13, v15, v14, v8, v6}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v13, Ljwu;->j:Ljwu;

    new-instance v6, Ljwu;

    const-string v8, "RES_2160P"

    const/16 v15, 0xa

    const/16 v14, 0xf00

    const/16 v4, 0x870

    invoke-direct {v6, v8, v15, v14, v4}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v6, Ljwu;->k:Ljwu;

    new-instance v4, Ljwu;

    const-string v8, "RES_2160P_3X4"

    const/16 v14, 0xb

    const/16 v15, 0x8e0

    const/16 v3, 0xbd0

    invoke-direct {v4, v8, v14, v15, v3}, Ljwu;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ljwu;->l:Ljwu;

    const/16 v3, 0xc

    new-array v3, v3, [Ljwu;

    const/4 v8, 0x0

    aput-object v0, v3, v8

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v6, v3, v0

    aput-object v4, v3, v14

    sput-object v3, Ljwu;->n:[Ljwu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljwu;->m:Ljava/util/Map;

    invoke-static {}, Ljwu;->values()[Ljwu;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    new-instance v4, Lkaf;

    iget v5, v2, Ljwu;->o:I

    iget v6, v2, Ljwu;->p:I

    invoke-direct {v4, v5, v6}, Lkaf;-><init>(II)V

    sget-object v5, Ljwu;->m:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljwu;->o:I

    iput p4, p0, Ljwu;->p:I

    return-void
.end method

.method public static values()[Ljwu;
    .locals 1

    sget-object v0, Ljwu;->n:[Ljwu;

    invoke-virtual {v0}, [Ljwu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljwu;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget v0, p0, Ljwu;->o:I

    int-to-long v0, v0

    iget v2, p0, Ljwu;->p:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final b()Lkaf;
    .locals 3

    new-instance v0, Lkaf;

    iget v1, p0, Ljwu;->o:I

    iget v2, p0, Ljwu;->p:I

    invoke-direct {v0, v1, v2}, Lkaf;-><init>(II)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Ljwu;->i:Ljwu;

    invoke-virtual {v0, p0}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljwu;->j:Ljwu;

    invoke-virtual {v0, p0}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Ljwu;->k:Ljwu;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljwu;->l:Ljwu;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
