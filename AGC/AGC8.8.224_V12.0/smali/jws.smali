.class public final enum Ljws;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljws;

.field public static final enum b:Ljws;

.field public static final enum c:Ljws;

.field public static final enum d:Ljws;

.field public static final enum e:Ljws;

.field public static final enum f:Ljws;

.field public static final enum g:Ljws;

.field public static final enum h:Ljws;

.field private static final synthetic l:[Ljws;


# instance fields
.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Ljws;

    const-string v1, "FPS_AUTO"

    const/4 v2, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x3c

    move-object v0, v6

    move v3, v4

    invoke-direct/range {v0 .. v5}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Ljws;->a:Ljws;

    new-instance v0, Ljws;

    const-string v8, "FPS_24"

    const/4 v9, 0x1

    const/16 v12, 0x18

    move-object v7, v0

    move v10, v12

    move v11, v12

    invoke-direct/range {v7 .. v12}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Ljws;->b:Ljws;

    new-instance v1, Ljws;

    const-string v14, "FPS_30"

    const/4 v15, 0x2

    const/16 v18, 0x1e

    move-object v13, v1

    move/from16 v16, v18

    move/from16 v17, v18

    invoke-direct/range {v13 .. v18}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Ljws;->c:Ljws;

    new-instance v2, Ljws;

    const-string v8, "FPS_60"

    const/4 v9, 0x3

    const/16 v12, 0x3c

    move-object v7, v2

    move v10, v12

    move v11, v12

    invoke-direct/range {v7 .. v12}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Ljws;->d:Ljws;

    new-instance v3, Ljws;

    const-string v14, "FPS_60C_24E"

    const/4 v15, 0x4

    const/16 v17, 0x18

    const/16 v18, 0x3c

    move-object v13, v3

    move/from16 v16, v18

    invoke-direct/range {v13 .. v18}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Ljws;->e:Ljws;

    new-instance v4, Ljws;

    const-string v8, "FPS_60C_30E"

    const/4 v9, 0x5

    const/16 v11, 0x1e

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Ljws;->f:Ljws;

    new-instance v5, Ljws;

    const-string v14, "FPS_120_HFR_4X"

    const/4 v15, 0x6

    const/16 v17, 0x1e

    const/16 v18, 0x78

    move-object v13, v5

    move/from16 v16, v18

    invoke-direct/range {v13 .. v18}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Ljws;->g:Ljws;

    new-instance v13, Ljws;

    const-string v8, "FPS_240_HFR_8X"

    const/4 v9, 0x7

    const/16 v12, 0xf0

    move-object v7, v13

    move v10, v12

    invoke-direct/range {v7 .. v12}, Ljws;-><init>(Ljava/lang/String;IIII)V

    sput-object v13, Ljws;->h:Ljws;

    const/16 v7, 0x8

    new-array v7, v7, [Ljws;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    sput-object v7, Ljws;->l:[Ljws;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljws;->i:I

    iput p4, p0, Ljws;->j:I

    iput p5, p0, Ljws;->k:I

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljws;
    .locals 1

    const-class v0, Ljws;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljws;

    return-object p0
.end method

.method public static c()Ljava/util/Collection;
    .locals 6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Ljws;->values()[Ljws;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljws;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static values()[Ljws;
    .locals 1

    sget-object v0, Ljws;->l:[Ljws;

    invoke-virtual {v0}, [Ljws;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljws;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Ljws;->i:I

    iget v1, p0, Ljws;->j:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Ljws;->e:Ljws;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljws;->f:Ljws;

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

.method public final e()Z
    .locals 2

    iget v0, p0, Ljws;->i:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Ljws;->i:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
