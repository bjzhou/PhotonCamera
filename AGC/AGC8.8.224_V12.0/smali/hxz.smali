.class public final enum Lhxz;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhxz;

.field public static final enum b:Lhxz;

.field public static final enum c:Lhxz;

.field public static final enum d:Lhxz;

.field public static final enum e:Lhxz;

.field public static final enum f:Lhxz;

.field public static final enum g:Lhxz;

.field public static final enum h:Lhxz;

.field public static final enum i:Lhxz;

.field private static final synthetic m:[Lhxz;


# instance fields
.field public final j:Ljava/lang/String;

.field public final k:F

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v5, "green"

    const-string v3, "Ready to capture"

    new-instance v6, Lhxz;

    const-string v1, "READY_TO_CAPTURE"

    const/4 v2, 0x0

    const/high16 v4, 0x41300000    # 11.0f

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v6, Lhxz;->a:Lhxz;

    const-string v12, "#E8C86B"

    const-string v10, "distance 1"

    new-instance v0, Lhxz;

    const-string v8, "DISTANCE_1"

    const/4 v9, 0x1

    const/high16 v11, 0x41940000    # 18.5f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v0, Lhxz;->b:Lhxz;

    const-string v18, "#FFA500"

    const-string v16, "distance 2"

    new-instance v1, Lhxz;

    const-string v14, "DISTANCE_2"

    const/4 v15, 0x2

    const/high16 v17, 0x420c0000    # 35.0f

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v1, Lhxz;->c:Lhxz;

    const-string v12, "#FF8C00"

    const-string v10, "distance 3"

    new-instance v2, Lhxz;

    const-string v8, "DISTANCE_3"

    const/4 v9, 0x3

    const/high16 v11, 0x4f000000

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v2, Lhxz;->d:Lhxz;

    const-string v18, "transparent"

    const-string v16, "distance outer"

    new-instance v3, Lhxz;

    const-string v14, "DISTANCE_OUTERMOST"

    const/4 v15, 0x4

    const/high16 v17, 0x4f000000

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v3, Lhxz;->e:Lhxz;

    const-string v12, "transparent"

    const-string v10, "idle"

    new-instance v4, Lhxz;

    const-string v8, "IDLE"

    const/4 v9, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v4, Lhxz;->f:Lhxz;

    const-string v18, "yellow"

    const-string v16, "Face too far"

    new-instance v5, Lhxz;

    const-string v14, "FACE_TOO_FAR"

    const/4 v15, 0x6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v5, Lhxz;->g:Lhxz;

    const-string v12, "yellow"

    const-string v10, "Face too close"

    new-instance v13, Lhxz;

    const-string v8, "FACE_TOO_CLOSE"

    const/4 v9, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v13, Lhxz;->h:Lhxz;

    const-string v19, "transparent"

    const-string v17, "Ready to capture(multi-faces)"

    new-instance v7, Lhxz;

    const-string v15, "READY_TO_CAPTURE_MULTIPLE_FACES"

    const/16 v16, 0x8

    const/high16 v18, 0x4f000000

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lhxz;-><init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    sput-object v7, Lhxz;->i:Lhxz;

    const/16 v8, 0x9

    new-array v8, v8, [Lhxz;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v0, v8, v6

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v7, v8, v0

    sput-object v8, Lhxz;->m:[Lhxz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lhxz;->j:Ljava/lang/String;

    iput p4, p0, Lhxz;->k:F

    iput-object p5, p0, Lhxz;->l:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lhxz;
    .locals 1

    sget-object v0, Lhxz;->m:[Lhxz;

    invoke-virtual {v0}, [Lhxz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhxz;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhxz;->j:Ljava/lang/String;

    return-object v0
.end method
