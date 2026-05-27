.class public final enum Ljxg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljxg;

.field public static final enum b:Ljxg;

.field public static final enum c:Ljxg;

.field public static final enum d:Ljxg;

.field public static final enum e:Ljxg;

.field public static final enum f:Ljxg;

.field private static final h:Ljava/util/Map;

.field private static final i:Ljava/util/Map;

.field private static final synthetic j:[Ljxg;


# instance fields
.field public final g:I

.field private final k:Ljwu;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljxg;

    sget-object v1, Ljwu;->f:Ljwu;

    const/16 v2, 0x7d2

    const-string v3, "QUALITY_480P"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Ljxg;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v0, Ljxg;->a:Ljxg;

    new-instance v1, Ljxg;

    sget-object v2, Ljwu;->g:Ljwu;

    const-string v3, "QUALITY_720P"

    const/4 v5, 0x1

    const/16 v6, 0x7d3

    invoke-direct {v1, v3, v5, v6, v2}, Ljxg;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v1, Ljxg;->b:Ljxg;

    new-instance v2, Ljxg;

    sget-object v3, Ljwu;->h:Ljwu;

    const-string v7, "QUALITY_1080P_3X4"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v6, v3}, Ljxg;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v2, Ljxg;->c:Ljxg;

    new-instance v3, Ljxg;

    sget-object v6, Ljwu;->i:Ljwu;

    const-string v7, "QUALITY_1080P"

    const/4 v9, 0x3

    const/16 v10, 0x7d4

    invoke-direct {v3, v7, v9, v10, v6}, Ljxg;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v3, Ljxg;->d:Ljxg;

    new-instance v6, Ljxg;

    sget-object v7, Ljwu;->j:Ljwu;

    const-string v11, "QUALITY_1080P_3X4"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v10, v7}, Ljxg;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v6, Ljxg;->e:Ljxg;

    new-instance v7, Ljxg;

    sget-object v10, Ljwu;->k:Ljwu;

    const-string v11, "QUALITY_2160P"

    const/4 v13, 0x5

    const/16 v14, 0x7d5

    invoke-direct {v7, v11, v13, v14, v10}, Ljxg;-><init>(Ljava/lang/String;IILjwu;)V

    sput-object v7, Ljxg;->f:Ljxg;

    const/4 v10, 0x6

    new-array v10, v10, [Ljxg;

    aput-object v0, v10, v4

    aput-object v1, v10, v5

    aput-object v2, v10, v8

    aput-object v3, v10, v9

    aput-object v6, v10, v12

    aput-object v7, v10, v13

    sput-object v10, Ljxg;->j:[Ljxg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljxg;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljxg;->i:Ljava/util/Map;

    invoke-static {}, Ljxg;->values()[Ljxg;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    sget-object v3, Ljxg;->h:Ljava/util/Map;

    iget-object v5, v2, Ljxg;->k:Ljwu;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljxg;->i:Ljava/util/Map;

    iget v5, v2, Ljxg;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjwu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljxg;->g:I

    iput-object p4, p0, Ljxg;->k:Ljwu;

    return-void
.end method

.method public static a(Ljwu;)Ljxg;
    .locals 1

    sget-object v0, Ljxg;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljxg;

    return-object p0
.end method

.method public static values()[Ljxg;
    .locals 1

    sget-object v0, Ljxg;->j:[Ljxg;

    invoke-virtual {v0}, [Ljxg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxg;

    return-object v0
.end method
