.class public final enum Lhju;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhju;

.field public static final enum b:Lhju;

.field public static final enum c:Lhju;

.field public static final enum d:Lhju;

.field public static final enum e:Lhju;

.field public static final enum f:Lhju;

.field public static final enum g:Lhju;

.field public static final enum h:Lhju;

.field public static final enum i:Lhju;

.field public static final enum j:Lhju;

.field public static final enum k:Lhju;

.field public static final enum l:Lhju;

.field public static final enum m:Lhju;

.field public static final enum n:Lhju;

.field public static final enum o:Lhju;

.field public static final enum p:Lhju;

.field public static final enum q:Lhju;

.field public static final enum r:Lhju;

.field private static final synthetic u:[Lhju;


# instance fields
.field public final s:Z

.field public final t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lhju;

    const-string v1, "ACTIVITY_ONCREATE_START"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhju;->a:Lhju;

    new-instance v1, Lhju;

    const-string v4, "ACTIVITY_ONCREATE_END"

    invoke-direct {v1, v4, v3, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lhju;->b:Lhju;

    new-instance v4, Lhju;

    const-string v5, "PERMISSIONS_STARTUP_TASK_START"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lhju;->c:Lhju;

    new-instance v5, Lhju;

    const-string v7, "PERMISSIONS_STARTUP_TASK_END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lhju;->d:Lhju;

    new-instance v7, Lhju;

    const-string v9, "WAIT_FOR_CAMERA_DEVICES_TASK_START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lhju;->e:Lhju;

    new-instance v9, Lhju;

    const-string v11, "WAIT_FOR_CAMERA_DEVICES_TASK_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lhju;->f:Lhju;

    new-instance v11, Lhju;

    const-string v13, "ACTIVITY_ONSTART_START"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lhju;->g:Lhju;

    new-instance v13, Lhju;

    const-string v15, "ACTIVITY_ONRESUME_START"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lhju;->h:Lhju;

    new-instance v15, Lhju;

    const-string v14, "ACTIVITY_ONRESUME_END"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lhju;->i:Lhju;

    new-instance v14, Lhju;

    const-string v12, "ACTIVITY_SURFACE_VIEW_CREATED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lhju;->j:Lhju;

    new-instance v12, Lhju;

    const-string v10, "ACTIVITY_INITIALIZED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v3}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lhju;->k:Lhju;

    new-instance v10, Lhju;

    const-string v8, "ACTIVITY_FIRST_PREVIEW_FRAME_RECEIVED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lhju;->l:Lhju;

    new-instance v8, Lhju;

    const-string v6, "ACTIVITY_FIRST_PREVIEW_FRAME_RENDERED"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lhju;->m:Lhju;

    new-instance v6, Lhju;

    const-string v3, "ACTIVITY_FIRST_PREVIEW_FRAME_VFE_RENDERED"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v3, v8, v2, v2}, Lhju;-><init>(Ljava/lang/String;IZZ)V

    sput-object v6, Lhju;->n:Lhju;

    new-instance v3, Lhju;

    const-string v8, "ACTIVITY_SHUTTER_BUTTON_DRAWN"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v3, v8, v6, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lhju;->o:Lhju;

    new-instance v8, Lhju;

    const-string v6, "ACTIVITY_SHUTTER_BUTTON_ENABLED"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v8, v6, v3, v2}, Lhju;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lhju;->p:Lhju;

    new-instance v6, Lhju;

    const-string v3, "ACTIVITY_SCRIPT_FINISHED"

    move-object/from16 v19, v8

    const/16 v8, 0x10

    invoke-direct {v6, v3, v8, v2, v2}, Lhju;-><init>(Ljava/lang/String;IZZ)V

    sput-object v6, Lhju;->q:Lhju;

    new-instance v3, Lhju;

    const-string v8, "ACTIVITY_STEADY"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v3, v8, v6, v2, v2}, Lhju;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lhju;->r:Lhju;

    const/16 v8, 0x12

    new-array v8, v8, [Lhju;

    aput-object v0, v8, v2

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    const/16 v0, 0xb

    aput-object v10, v8, v0

    const/16 v0, 0xc

    aput-object v16, v8, v0

    const/16 v0, 0xd

    aput-object v17, v8, v0

    const/16 v0, 0xe

    aput-object v18, v8, v0

    const/16 v0, 0xf

    aput-object v19, v8, v0

    const/16 v0, 0x10

    aput-object v20, v8, v0

    aput-object v3, v8, v6

    sput-object v8, Lhju;->u:[Lhju;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lhju;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lhju;->s:Z

    iput-boolean p4, p0, Lhju;->t:Z

    return-void
.end method

.method public static values()[Lhju;
    .locals 1

    sget-object v0, Lhju;->u:[Lhju;

    invoke-virtual {v0}, [Lhju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhju;

    return-object v0
.end method
