.class public final enum Liop;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Liop;

.field public static final enum b:Liop;

.field public static final enum c:Liop;

.field public static final enum d:Liop;

.field public static final enum e:Liop;

.field public static final enum f:Liop;

.field public static final enum g:Liop;

.field public static final enum h:Liop;

.field public static final enum i:Liop;

.field public static final enum j:Liop;

.field public static final enum k:Liop;

.field public static final enum l:Liop;

.field public static final enum m:Liop;

.field private static final synthetic n:[Liop;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Liop;

    const-string v1, "FRAMERATE_LIMITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liop;->a:Liop;

    new-instance v1, Liop;

    const-string v3, "FACE_BEAUTIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v1, Liop;->b:Liop;

    new-instance v3, Liop;

    const-string v5, "MAKEUP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v3, Liop;->c:Liop;

    new-instance v5, Liop;

    const-string v7, "FACE_OBFUSCATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v5, Liop;->d:Liop;

    new-instance v7, Liop;

    const-string v9, "ZEBRAS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v7, Liop;->e:Liop;

    new-instance v9, Liop;

    const-string v11, "POC_GRAYSCALE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v9, Liop;->f:Liop;

    new-instance v11, Liop;

    const-string v13, "ROCKY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v11, Liop;->g:Liop;

    new-instance v13, Liop;

    const-string v15, "BLUR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v13, Liop;->h:Liop;

    new-instance v15, Liop;

    const-string v14, "SWISS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v15, Liop;->i:Liop;

    new-instance v14, Liop;

    const-string v12, "BOBA"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v14, Liop;->j:Liop;

    new-instance v12, Liop;

    const-string v10, "TEST_1"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v12, Liop;->k:Liop;

    new-instance v10, Liop;

    const-string v8, "TEST_2"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v10, Liop;->l:Liop;

    new-instance v8, Liop;

    const-string v6, "ALWAYS_SKIP"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Liop;-><init>(Ljava/lang/String;I)V

    sput-object v8, Liop;->m:Liop;

    const/16 v6, 0xd

    new-array v6, v6, [Liop;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Liop;->n:[Liop;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Liop;
    .locals 1

    sget-object v0, Liop;->n:[Liop;

    invoke-virtual {v0}, [Liop;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liop;

    return-object v0
.end method
