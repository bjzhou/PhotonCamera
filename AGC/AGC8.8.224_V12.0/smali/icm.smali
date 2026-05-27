.class public final enum Licm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Licm;

.field public static final enum b:Licm;

.field public static final enum c:Licm;

.field public static final enum d:Licm;

.field public static final enum e:Licm;

.field public static final enum f:Licm;

.field public static final enum g:Licm;

.field public static final enum h:Licm;

.field private static final synthetic j:[Licm;


# instance fields
.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Licm;

    const v1, 0x7f14057b

    const-string v2, "MIC_BROKEN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Licm;->a:Licm;

    new-instance v1, Licm;

    const-string v2, "AUDIO_MISSING_DURING_RECORDING"

    const/4 v4, 0x1

    const v5, 0x7f14057f

    invoke-direct {v1, v2, v4, v5}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Licm;->b:Licm;

    new-instance v2, Licm;

    const-string v5, "VIDEO_MISSING_DURING_RECORDING"

    const/4 v6, 0x2

    const v7, 0x7f140580

    invoke-direct {v2, v5, v6, v7}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v2, Licm;->c:Licm;

    new-instance v5, Licm;

    const-string v7, "SNAPSHOT_FAILURE"

    const/4 v8, 0x3

    const v9, 0x7f14057a

    invoke-direct {v5, v7, v8, v9}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v5, Licm;->d:Licm;

    new-instance v7, Licm;

    const-string v9, "PARTIAL_VIDEO_MISSING_AFTER_RECORDING"

    const/4 v10, 0x4

    const v11, 0x7f140581

    invoke-direct {v7, v9, v10, v11}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v7, Licm;->e:Licm;

    new-instance v9, Licm;

    const-string v11, "NO_VIDEO_AFTER_RECORDING"

    const/4 v12, 0x5

    const v13, 0x7f14057c

    invoke-direct {v9, v11, v12, v13}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v9, Licm;->f:Licm;

    new-instance v11, Licm;

    const-string v13, "CAPTURE_SESSION_ERROR"

    const/4 v14, 0x6

    const v15, 0x7f140583

    invoke-direct {v11, v13, v14, v15}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v11, Licm;->g:Licm;

    new-instance v13, Licm;

    const-string v15, "RECORDING_TOO_SHORT"

    const/4 v14, 0x7

    const v12, 0x7f140582

    invoke-direct {v13, v15, v14, v12}, Licm;-><init>(Ljava/lang/String;II)V

    sput-object v13, Licm;->h:Licm;

    const/16 v12, 0x8

    new-array v12, v12, [Licm;

    aput-object v0, v12, v3

    aput-object v1, v12, v4

    aput-object v2, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Licm;->j:[Licm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Licm;->i:I

    return-void
.end method

.method public static values()[Licm;
    .locals 1

    sget-object v0, Licm;->j:[Licm;

    invoke-virtual {v0}, [Licm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Licm;

    return-object v0
.end method
