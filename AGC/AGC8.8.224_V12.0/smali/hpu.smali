.class public final enum Lhpu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhpu;

.field public static final enum b:Lhpu;

.field public static final enum c:Lhpu;

.field private static final synthetic i:[Lhpu;


# instance fields
.field public final d:Lmwa;

.field public final e:Lmvv;

.field public final f:Lhpt;

.field public final g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v7, Lhpu;

    sget-object v3, Lhpt;->c:Lhpt;

    const/4 v8, 0x5

    new-array v6, v8, [D

    fill-array-data v6, :array_0

    const-string v1, "AUTO_FPS_30_5X"

    const/4 v2, 0x0

    const/16 v4, 0x1e

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lhpu;-><init>(Ljava/lang/String;ILhpt;IZ[D)V

    sput-object v7, Lhpu;->a:Lhpu;

    new-instance v0, Lhpu;

    sget-object v12, Lhpt;->b:Lhpt;

    new-array v15, v8, [D

    fill-array-data v15, :array_1

    const-string v10, "MANUAL_FPS_30_1X"

    const/4 v11, 0x1

    const/16 v13, 0x1e

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lhpu;-><init>(Ljava/lang/String;ILhpt;IZ[D)V

    sput-object v0, Lhpu;->b:Lhpu;

    new-instance v1, Lhpu;

    sget-object v19, Lhpt;->b:Lhpt;

    new-array v2, v8, [D

    fill-array-data v2, :array_2

    const-string v17, "MANUAL_FPS_60_2X"

    const/16 v18, 0x2

    const/16 v20, 0x3c

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lhpu;-><init>(Ljava/lang/String;ILhpt;IZ[D)V

    sput-object v1, Lhpu;->c:Lhpu;

    const/4 v2, 0x3

    new-array v2, v2, [Lhpu;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lhpu;->i:[Lhpu;

    return-void

    :array_0
    .array-data 8
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x3ff0000000000000L    # 1.0
        0x3fd0000000000000L    # 0.25
    .end array-data

    :array_1
    .array-data 8
        0x403e000000000000L    # 30.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x3ff0000000000000L    # 1.0
        0x3fd0000000000000L    # 0.25
    .end array-data

    :array_2
    .array-data 8
        0x404e000000000000L    # 60.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x3ff0000000000000L    # 1.0
        0x3fd0000000000000L    # 0.25
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILhpt;IZ[D)V
    .locals 6

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lhpu;->g:I

    const/16 p1, 0x1e

    iput p1, p0, Lhpu;->h:I

    if-eqz p5, :cond_0

    sget-object p1, Lhpt;->a:Lhpt;

    iput-object p1, p0, Lhpu;->f:Lhpt;

    goto :goto_0

    :cond_0
    sget-object p1, Lhpt;->c:Lhpt;

    iput-object p1, p0, Lhpu;->f:Lhpt;

    :goto_0
    invoke-virtual {p3}, Lhpt;->ordinal()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2}, Llyh;->w(I)Ljava/util/HashMap;

    move-result-object p3

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    if-eqz p5, :cond_2

    if-nez v1, :cond_1

    sget-object v2, Lhpt;->a:Lhpt;

    aget-wide v3, p6, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lhpt;->a:Lhpt;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v1, -0x1

    add-int/2addr v2, p1

    invoke-static {}, Lhpt;->values()[Lhpt;

    move-result-object v3

    aget-object v3, v3, v2

    aget-wide v4, p6, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lhpt;->values()[Lhpt;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int v2, v1, p1

    invoke-static {}, Lhpt;->values()[Lhpt;

    move-result-object v3

    aget-object v3, v3, v2

    aget-wide v4, p6, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lhpt;->values()[Lhpt;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object p1

    iput-object p1, p0, Lhpu;->d:Lmwa;

    invoke-static {p4}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    iput-object p1, p0, Lhpu;->e:Lmvv;

    return-void
.end method

.method public static values()[Lhpu;
    .locals 1

    sget-object v0, Lhpu;->i:[Lhpu;

    invoke-virtual {v0}, [Lhpu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhpu;

    return-object v0
.end method


# virtual methods
.method public final a(D)D
    .locals 6

    invoke-static {}, Lhpt;->values()[Lhpt;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lhpu;->d:Lmwa;

    invoke-virtual {v4, v3}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lhpu;->d:Lmwa;

    invoke-virtual {v4, v3}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v5, v3, p1

    if-nez v5, :cond_1

    iget v0, p0, Lhpu;->h:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p1

    return-wide v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not valid."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final b()D
    .locals 2

    iget-object v0, p0, Lhpu;->d:Lmwa;

    iget-object v1, p0, Lhpu;->f:Lhpt;

    invoke-virtual {v0, v1}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpu;->d:Lmwa;

    iget-object v1, p0, Lhpu;->f:Lhpt;

    invoke-virtual {v0, v1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lhpu;->d:Lmwa;

    sget-object v1, Lhpt;->c:Lhpt;

    invoke-virtual {v0, v1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final c(D)Z
    .locals 1

    iget-object v0, p0, Lhpu;->d:Lmwa;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmwa;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
