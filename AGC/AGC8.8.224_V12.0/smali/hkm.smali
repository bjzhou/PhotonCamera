.class public final enum Lhkm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lhkm;

.field public static final enum b:Lhkm;

.field public static final enum c:Lhkm;

.field public static final enum d:Lhkm;

.field public static final enum e:Lhkm;

.field public static final enum f:Lhkm;

.field private static final synthetic g:[Lhkm;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lhkm;

    const-string v1, "MEDIA_RECORDER_PREPARE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhkm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkm;->a:Lhkm;

    new-instance v1, Lhkm;

    const-string v3, "MEDIA_RECORDER_PREPARE_END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhkm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhkm;->b:Lhkm;

    new-instance v3, Lhkm;

    const-string v5, "VIDEO_RECORDER_STARTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhkm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhkm;->c:Lhkm;

    new-instance v5, Lhkm;

    const-string v7, "VIDEO_RECORDER_STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lhkm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lhkm;->d:Lhkm;

    new-instance v7, Lhkm;

    const-string v9, "VIDEO_RECORDER_STOPPING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lhkm;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lhkm;->e:Lhkm;

    new-instance v9, Lhkm;

    const-string v11, "VIDEO_RECORDER_STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lhkm;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lhkm;->f:Lhkm;

    const/4 v11, 0x6

    new-array v11, v11, [Lhkm;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lhkm;->g:[Lhkm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lhkm;
    .locals 1

    sget-object v0, Lhkm;->g:[Lhkm;

    invoke-virtual {v0}, [Lhkm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhkm;

    return-object v0
.end method
