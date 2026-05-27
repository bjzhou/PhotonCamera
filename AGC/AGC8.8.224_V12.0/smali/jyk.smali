.class public final enum Ljyk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ljyk;

.field public static final enum b:Ljyk;

.field public static final enum c:Ljyk;

.field public static final enum d:Ljyk;

.field public static final enum e:Ljyk;

.field public static final enum f:Ljyk;

.field public static final enum g:Ljyk;

.field public static final enum h:Ljyk;

.field public static final enum i:Ljyk;

.field public static final enum j:Ljyk;

.field public static final enum k:Ljyk;

.field private static final synthetic m:[Ljyk;


# instance fields
.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljyk;

    const-string v1, "VIDEO_BUFFER_DELAY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ljyk;->a:Ljyk;

    new-instance v1, Ljyk;

    const-string v4, "AUDIO_BUFFER_DELAY"

    invoke-direct {v1, v4, v3, v2}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Ljyk;->b:Ljyk;

    new-instance v4, Ljyk;

    const-string v5, "VIDEO_TRACK_FAIL_TO_START"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Ljyk;->c:Ljyk;

    new-instance v5, Ljyk;

    const-string v7, "AUDIO_TRACK_FAIL_TO_START"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Ljyk;->d:Ljyk;

    new-instance v7, Ljyk;

    const-string v9, "METADATA_DELAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Ljyk;->e:Ljyk;

    new-instance v9, Ljyk;

    const-string v11, "AUDIO_RECORD_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Ljyk;->f:Ljyk;

    new-instance v11, Ljyk;

    const-string v13, "MUXER_STOP_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v3}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Ljyk;->g:Ljyk;

    new-instance v13, Ljyk;

    const-string v15, "MEDIA_CODEC_ERROR_AUDIO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v3}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Ljyk;->h:Ljyk;

    new-instance v15, Ljyk;

    const-string v14, "MEDIA_CODEC_ERROR_VIDEO"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v3}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Ljyk;->i:Ljyk;

    new-instance v14, Ljyk;

    const-string v12, "FILE_LOST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Ljyk;->j:Ljyk;

    new-instance v12, Ljyk;

    const-string v10, "OTHER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v3}, Ljyk;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Ljyk;->k:Ljyk;

    const/16 v10, 0xb

    new-array v10, v10, [Ljyk;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Ljyk;->m:[Ljyk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ljyk;->l:Z

    return-void
.end method

.method public static values()[Ljyk;
    .locals 1

    sget-object v0, Ljyk;->m:[Ljyk;

    invoke-virtual {v0}, [Ljyk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljyk;

    return-object v0
.end method
