.class public final enum Ljxi;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljxi;

.field public static final enum b:Ljxi;

.field public static final enum c:Ljxi;

.field public static final enum d:Ljxi;

.field public static final enum e:Ljxi;

.field public static final enum f:Ljxi;

.field public static final enum g:Ljxi;

.field public static final enum h:Ljxi;

.field public static final enum i:Ljxi;

.field public static final enum j:Ljxi;

.field private static final m:Ljava/util/Map;

.field private static final n:Ljava/util/Map;

.field private static final synthetic o:[Ljxi;


# instance fields
.field public final k:I

.field public final l:Ljwu;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljxi;

    sget-object v1, Ljwu;->b:Ljwu;

    const-string v2, "QUALITY_QCIF"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v0, Ljxi;->a:Ljxi;

    new-instance v1, Ljxi;

    sget-object v2, Ljwu;->c:Ljwu;

    const-string v5, "QUALITY_QVGA"

    const/4 v6, 0x1

    const/4 v7, 0x7

    invoke-direct {v1, v5, v6, v7, v2}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v1, Ljxi;->b:Ljxi;

    new-instance v2, Ljxi;

    sget-object v5, Ljwu;->d:Ljwu;

    const-string v8, "QUALITY_CIF"

    const/4 v9, 0x3

    invoke-direct {v2, v8, v4, v9, v5}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v2, Ljxi;->c:Ljxi;

    new-instance v5, Ljxi;

    sget-object v8, Ljwu;->e:Ljwu;

    const-string v10, "QUALITY_480P_4X3"

    const/4 v11, 0x4

    invoke-direct {v5, v10, v9, v11, v8}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v5, Ljxi;->d:Ljxi;

    new-instance v8, Ljxi;

    sget-object v10, Ljwu;->f:Ljwu;

    const-string v12, "QUALITY_480P"

    invoke-direct {v8, v12, v11, v11, v10}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v8, Ljxi;->e:Ljxi;

    new-instance v10, Ljxi;

    sget-object v12, Ljwu;->g:Ljwu;

    const-string v13, "QUALITY_720P"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v14, v12}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v10, Ljxi;->f:Ljxi;

    new-instance v12, Ljxi;

    sget-object v13, Ljwu;->i:Ljwu;

    const-string v15, "QUALITY_1080P"

    const/4 v14, 0x6

    invoke-direct {v12, v15, v14, v14, v13}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v12, Ljxi;->g:Ljxi;

    new-instance v13, Ljxi;

    sget-object v15, Ljwu;->j:Ljwu;

    const-string v11, "QUALITY_1080P_3X4"

    invoke-direct {v13, v11, v7, v14, v15}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v13, Ljxi;->h:Ljxi;

    new-instance v11, Ljxi;

    sget-object v15, Ljwu;->k:Ljwu;

    const-string v7, "QUALITY_2160P"

    const/16 v14, 0x8

    invoke-direct {v11, v7, v14, v14, v15}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v11, Ljxi;->i:Ljxi;

    new-instance v7, Ljxi;

    sget-object v15, Ljwu;->l:Ljwu;

    const-string v9, "QUALITY_2160P_3X4"

    const/16 v4, 0x9

    invoke-direct {v7, v9, v4, v14, v15}, Ljxi;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v7, Ljxi;->j:Ljxi;

    const/16 v9, 0xa

    new-array v9, v9, [Ljxi;

    aput-object v0, v9, v3

    aput-object v1, v9, v6

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v5, v9, v0

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v13, v9, v0

    aput-object v11, v9, v14

    aput-object v7, v9, v4

    sput-object v9, Ljxi;->o:[Ljxi;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljxi;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljxi;->n:Ljava/util/Map;

    invoke-static {}, Ljxi;->values()[Ljxi;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Ljxi;->m:Ljava/util/Map;

    iget-object v5, v2, Ljxi;->l:Ljwu;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljxi;->n:Ljava/util/Map;

    iget v5, v2, Ljxi;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjwu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljxi;->k:I

    iput-object p4, p0, Ljxi;->l:Ljwu;

    return-void
.end method

.method public static a(Ljwu;)Ljxi;
    .locals 1

    sget-object v0, Ljxi;->m:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljxi;

    return-object p0
.end method

.method public static values()[Ljxi;
    .locals 1

    sget-object v0, Ljxi;->o:[Ljxi;

    invoke-virtual {v0}, [Ljxi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxi;

    return-object v0
.end method
