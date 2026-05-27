.class public final enum Lfkd;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfkd;

.field public static final enum b:Lfkd;

.field public static final enum c:Lfkd;

.field public static final enum d:Lfkd;

.field public static final enum e:Lfkd;

.field public static final enum f:Lfkd;

.field public static final enum g:Lfkd;

.field public static final enum h:Lfkd;

.field private static final synthetic j:[Lfkd;


# instance fields
.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lfkd;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfkd;->a:Lfkd;

    new-instance v1, Lfkd;

    const-string v4, "CANCEL_AFTER_SHUTDOWN"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfkd;->b:Lfkd;

    new-instance v4, Lfkd;

    const-string v6, "CANCELLED_EXTERNALLY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lfkd;->c:Lfkd;

    new-instance v6, Lfkd;

    const-string v8, "STATIC_SCENE_OR_NO_BETTER_FRAME"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v7, v9}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lfkd;->d:Lfkd;

    new-instance v8, Lfkd;

    const-string v10, "START_TOO_CLOSE_TO_SHUTTER"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v9}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lfkd;->e:Lfkd;

    new-instance v10, Lfkd;

    const-string v12, "TOO_SHORT"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v9, v13}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lfkd;->f:Lfkd;

    new-instance v12, Lfkd;

    const-string v14, "LONG_PRESS_TOO_SHORT"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lfkd;->g:Lfkd;

    new-instance v14, Lfkd;

    const-string v13, "TEST_REASON"

    const/16 v9, 0x8

    invoke-direct {v14, v13, v15, v9}, Lfkd;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lfkd;->h:Lfkd;

    new-array v9, v9, [Lfkd;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v11

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    aput-object v14, v9, v15

    sput-object v9, Lfkd;->j:[Lfkd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfkd;->i:I

    return-void
.end method

.method public static values()[Lfkd;
    .locals 1

    sget-object v0, Lfkd;->j:[Lfkd;

    invoke-virtual {v0}, [Lfkd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfkd;

    return-object v0
.end method
