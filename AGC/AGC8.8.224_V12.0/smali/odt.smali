.class public final enum Lodt;
.super Ljava/lang/Enum;

# interfaces
.implements Lnwv;


# static fields
.field public static final enum A:Lodt;

.field public static final enum B:Lodt;

.field public static final enum C:Lodt;

.field public static final enum D:Lodt;

.field public static final enum E:Lodt;

.field public static final enum F:Lodt;

.field public static final enum G:Lodt;

.field public static final enum H:Lodt;

.field private static final synthetic J:[Lodt;

.field public static final enum a:Lodt;

.field public static final enum b:Lodt;

.field public static final enum c:Lodt;

.field public static final enum d:Lodt;

.field public static final enum e:Lodt;

.field public static final enum f:Lodt;

.field public static final enum g:Lodt;

.field public static final enum h:Lodt;

.field public static final enum i:Lodt;

.field public static final enum j:Lodt;

.field public static final enum k:Lodt;

.field public static final enum l:Lodt;

.field public static final enum m:Lodt;

.field public static final enum n:Lodt;

.field public static final enum o:Lodt;

.field public static final enum p:Lodt;

.field public static final enum q:Lodt;

.field public static final enum r:Lodt;

.field public static final enum s:Lodt;

.field public static final enum t:Lodt;

.field public static final enum u:Lodt;

.field public static final enum v:Lodt;

.field public static final enum w:Lodt;

.field public static final enum x:Lodt;

.field public static final enum y:Lodt;

.field public static final enum z:Lodt;


# instance fields
.field private final I:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v0, Lodt;

    const-string v1, "UNKNOWN_F250_LOG_REASON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lodt;->a:Lodt;

    new-instance v1, Lodt;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lodt;->b:Lodt;

    new-instance v3, Lodt;

    const-string v5, "SUCCESS_PARTIAL_UPLOAD_WORK_CANCELLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lodt;->c:Lodt;

    new-instance v5, Lodt;

    const-string v7, "SUCCESS_PARTIAL_UPLOAD_WORK_ENQUEUED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lodt;->d:Lodt;

    new-instance v7, Lodt;

    const-string v9, "SUCCESS_PARTIAL_AUTO_WORK_ENQUEUED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lodt;->e:Lodt;

    new-instance v9, Lodt;

    const-string v11, "SUCCESS_PARTIAL_UPLOAD_ATTACHMENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lodt;->f:Lodt;

    new-instance v11, Lodt;

    const-string v13, "SUCCESS_PARTIAL_UPLOAD_RESOURCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lodt;->g:Lodt;

    new-instance v13, Lodt;

    const-string v15, "SUCCESS_PARTIAL_AIRLOCK_FILES_DELETED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lodt;->h:Lodt;

    new-instance v15, Lodt;

    const-string v14, "SUCCESS_PARTIAL_UPLOAD_INVALID_FAILED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lodt;->i:Lodt;

    new-instance v14, Lodt;

    const-string v12, "SUCCESS_PARTIAL_UPLOAD_PAUSED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lodt;->j:Lodt;

    new-instance v12, Lodt;

    const-string v10, "SUCCESS_PARTIAL_AUTO_UPLOAD_ENQUEUED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lodt;->k:Lodt;

    new-instance v10, Lodt;

    const-string v8, "SUCCESS_PARTIAL_AUTO_EXPIRE_DELETED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lodt;->l:Lodt;

    new-instance v8, Lodt;

    const-string v6, "UPLOAD_BACKGROUND_START"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lodt;->m:Lodt;

    new-instance v6, Lodt;

    const-string v4, "AUTO_BACKGROUND_START"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lodt;->n:Lodt;

    new-instance v4, Lodt;

    const-string v2, "ERROR_AUTHENTICATION_RECOVERABLE"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->o:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_AUTHENTICATION_PERMANENT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->p:Lodt;

    new-instance v6, Lodt;

    const-string v4, "ERROR_QUERY"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lodt;->q:Lodt;

    new-instance v4, Lodt;

    const-string v2, "ERROR_INSERT"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->r:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_UPDATE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->s:Lodt;

    new-instance v6, Lodt;

    const-string v4, "ERROR_BAD_STATUS"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lodt;->t:Lodt;

    new-instance v4, Lodt;

    const-string v2, "ERROR_SAVE_ON_DEVICE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->u:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_DELETE_ON_DEVICE"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->v:Lodt;

    new-instance v6, Lodt;

    const-string v4, "ERROR_ENQUEUE_WORK"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lodt;->w:Lodt;

    new-instance v2, Lodt;

    const-string v4, "ERROR_PARTIAL_QUERY_WORK"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6, v6}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->x:Lodt;

    new-instance v4, Lodt;

    const-string v6, "ERROR_PARTIAL_UPLOAD_CANCELED"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->y:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_PARTIAL_UPLOAD_INVALID_URL"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->z:Lodt;

    new-instance v4, Lodt;

    const-string v6, "ERROR_PARTIAL_UPLOAD_SERVER_ISSUE"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->A:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_UPLOAD_SERVER_FAILURE"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->B:Lodt;

    new-instance v4, Lodt;

    const-string v6, "ERROR_UPLOAD_DATA_FAILURE"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->C:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_UPLOAD_UNSPECIFIED"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->D:Lodt;

    new-instance v4, Lodt;

    const-string v6, "ERROR_UPLOAD_IGNORABLE"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->E:Lodt;

    new-instance v2, Lodt;

    const-string v6, "ERROR_AUTO_IGNORABLE"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4, v4}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->F:Lodt;

    new-instance v4, Lodt;

    const-string v6, "ERROR_UPLOAD_TOO_FREQUENT_ERRORS_PAUSING"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2, v2}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lodt;->G:Lodt;

    new-instance v2, Lodt;

    const-string v6, "UNRECOGNIZED"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    move-object/from16 v36, v8

    const/4 v8, -0x1

    invoke-direct {v2, v6, v4, v8}, Lodt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lodt;->H:Lodt;

    const/16 v4, 0x22

    new-array v4, v4, [Lodt;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v36, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v2, v4, v0

    sput-object v4, Lodt;->J:[Lodt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lodt;->I:I

    return-void
.end method

.method public static values()[Lodt;
    .locals 1

    sget-object v0, Lodt;->J:[Lodt;

    invoke-virtual {v0}, [Lodt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lodt;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget-object v0, Lodt;->H:Lodt;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lodt;->I:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lodt;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
