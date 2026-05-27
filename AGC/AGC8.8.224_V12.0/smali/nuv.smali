.class public final enum Lnuv;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnuv;

.field public static final enum b:Lnuv;

.field public static final enum c:Lnuv;

.field public static final enum d:Lnuv;

.field public static final enum e:Lnuv;

.field public static final enum f:Lnuv;

.field public static final enum g:Lnuv;

.field public static final enum h:Lnuv;

.field public static final enum i:Lnuv;

.field public static final enum j:Lnuv;

.field public static final enum k:Lnuv;

.field public static final enum l:Lnuv;

.field public static final enum m:Lnuv;

.field public static final enum n:Lnuv;

.field public static final enum o:Lnuv;

.field public static final enum p:Lnuv;

.field public static final enum q:Lnuv;

.field private static final synthetic s:[Lnuv;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lnuv;

    const-string v1, "OK"

    const/4 v2, 0x0

    const-string v3, "ok"

    invoke-direct {v0, v1, v2, v3}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnuv;->a:Lnuv;

    new-instance v1, Lnuv;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    const-string v5, "canceled"

    invoke-direct {v1, v3, v4, v5}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnuv;->b:Lnuv;

    new-instance v3, Lnuv;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const-string v7, "unknown"

    invoke-direct {v3, v5, v6, v7}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnuv;->c:Lnuv;

    new-instance v5, Lnuv;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    const-string v9, "invalid argument"

    invoke-direct {v5, v7, v8, v9}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnuv;->d:Lnuv;

    new-instance v7, Lnuv;

    const-string v9, "DEADLINE_EXCEEDED"

    const/4 v10, 0x4

    const-string v11, "deadline exceeded"

    invoke-direct {v7, v9, v10, v11}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lnuv;->e:Lnuv;

    new-instance v9, Lnuv;

    const-string v11, "NOT_FOUND"

    const/4 v12, 0x5

    const-string v13, "not found"

    invoke-direct {v9, v11, v12, v13}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lnuv;->f:Lnuv;

    new-instance v11, Lnuv;

    const-string v13, "ALREADY_EXISTS"

    const/4 v14, 0x6

    const-string v15, "already exists"

    invoke-direct {v11, v13, v14, v15}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lnuv;->g:Lnuv;

    new-instance v13, Lnuv;

    const-string v15, "PERMISSION_DENIED"

    const/4 v14, 0x7

    const-string v12, "permission denied"

    invoke-direct {v13, v15, v14, v12}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lnuv;->h:Lnuv;

    new-instance v12, Lnuv;

    const-string v15, "RESOURCE_EXHAUSTED"

    const/16 v14, 0x8

    const-string v10, "resource exhausted"

    invoke-direct {v12, v15, v14, v10}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lnuv;->i:Lnuv;

    new-instance v10, Lnuv;

    const-string v15, "FAILED_PRECONDITION"

    const/16 v14, 0x9

    const-string v8, "failed precondition"

    invoke-direct {v10, v15, v14, v8}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lnuv;->j:Lnuv;

    new-instance v8, Lnuv;

    const-string v15, "ABORTED"

    const/16 v14, 0xa

    const-string v6, "aborted"

    invoke-direct {v8, v15, v14, v6}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lnuv;->k:Lnuv;

    new-instance v6, Lnuv;

    const-string v15, "OUT_OF_RANGE"

    const/16 v14, 0xb

    const-string v4, "out of range"

    invoke-direct {v6, v15, v14, v4}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lnuv;->l:Lnuv;

    new-instance v4, Lnuv;

    const-string v15, "UNIMPLEMENTED"

    const/16 v14, 0xc

    const-string v2, "unimplemented"

    invoke-direct {v4, v15, v14, v2}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnuv;->m:Lnuv;

    new-instance v2, Lnuv;

    const-string v15, "INTERNAL"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "internal"

    invoke-direct {v2, v15, v14, v4}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lnuv;->n:Lnuv;

    new-instance v4, Lnuv;

    const-string v15, "UNAVAILABLE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "unavailable"

    invoke-direct {v4, v15, v14, v2}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnuv;->o:Lnuv;

    new-instance v2, Lnuv;

    const-string v15, "DATA_LOSS"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "data loss"

    invoke-direct {v2, v15, v14, v4}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lnuv;->p:Lnuv;

    new-instance v4, Lnuv;

    const-string v15, "UNAUTHENTICATED"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "unauthenticated"

    invoke-direct {v4, v15, v14, v2}, Lnuv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lnuv;->q:Lnuv;

    const/16 v2, 0x11

    new-array v2, v2, [Lnuv;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lnuv;->s:[Lnuv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnuv;->r:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lnuv;
    .locals 1

    sget-object v0, Lnuv;->s:[Lnuv;

    invoke-virtual {v0}, [Lnuv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnuv;

    return-object v0
.end method
