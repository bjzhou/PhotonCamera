.class public final enum Lenw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lenw;

.field public static final enum b:Lenw;

.field public static final enum c:Lenw;

.field public static final enum d:Lenw;

.field public static final enum e:Lenw;

.field public static final enum f:Lenw;

.field private static final synthetic g:[Lenw;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lenw;

    const-string v1, "SHUTTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lenw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lenw;->a:Lenw;

    new-instance v1, Lenw;

    const-string v3, "ZOOM_IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lenw;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lenw;->b:Lenw;

    new-instance v3, Lenw;

    const-string v5, "ZOOM_OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lenw;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lenw;->c:Lenw;

    new-instance v5, Lenw;

    const-string v7, "SWITCH_CAMERA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lenw;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lenw;->d:Lenw;

    new-instance v7, Lenw;

    const-string v9, "NEXT_MODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lenw;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lenw;->e:Lenw;

    new-instance v9, Lenw;

    const-string v11, "PREV_MODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lenw;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lenw;->f:Lenw;

    const/4 v11, 0x6

    new-array v11, v11, [Lenw;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lenw;->g:[Lenw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lenw;
    .locals 1

    sget-object v0, Lenw;->g:[Lenw;

    invoke-virtual {v0}, [Lenw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lenw;

    return-object v0
.end method
