.class public final enum Licn;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Licn;

.field public static final enum b:Licn;

.field public static final enum c:Licn;

.field public static final enum d:Licn;

.field public static final enum e:Licn;

.field private static final synthetic h:[Licn;


# instance fields
.field public final f:I

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Licn;

    const v1, 0x7f14052f

    const-string v2, "FLASH_DISABLED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Licn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Licn;->a:Licn;

    new-instance v1, Licn;

    const-string v2, "POOR_VIDEO_QUALITY"

    const/4 v4, 0x1

    const v5, 0x7f140534

    invoke-direct {v1, v2, v4, v5, v3}, Licn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Licn;->b:Licn;

    new-instance v2, Licn;

    const-string v5, "RECORDING_EARLY_STOPPED"

    const/4 v6, 0x2

    const v7, 0x7f140532

    invoke-direct {v2, v5, v6, v7, v3}, Licn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v2, Licn;->c:Licn;

    new-instance v5, Licn;

    const-string v7, "RECORDING_STOPPED"

    const/4 v8, 0x3

    const v9, 0x7f140533

    invoke-direct {v5, v7, v8, v9, v3}, Licn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Licn;->d:Licn;

    new-instance v7, Licn;

    const-string v9, "RECORDING_DISABLED"

    const/4 v10, 0x4

    const v11, 0x7f140531

    invoke-direct {v7, v9, v10, v11, v4}, Licn;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Licn;->e:Licn;

    const/4 v9, 0x5

    new-array v9, v9, [Licn;

    aput-object v0, v9, v3

    aput-object v1, v9, v4

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Licn;->h:[Licn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Licn;->f:I

    iput-boolean p4, p0, Licn;->g:Z

    return-void
.end method

.method public static values()[Licn;
    .locals 1

    sget-object v0, Licn;->h:[Licn;

    invoke-virtual {v0}, [Licn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Licn;

    return-object v0
.end method
