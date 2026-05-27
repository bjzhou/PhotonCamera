.class public final Lkwz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkxr;

.field public static final b:Lkxr;

.field public static final c:Lkxr;

.field public static final d:Lkxr;

.field public static final e:Lkxr;

.field public static final f:Lkxr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkxr;

    const-string v1, "tkhd"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lkxr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwz;->a:Lkxr;

    new-instance v0, Lkxr;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Lkxr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwz;->b:Lkxr;

    new-instance v0, Lkxr;

    const-string v1, "mvhd"

    invoke-direct {v0, v1, v2}, Lkxr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwz;->c:Lkxr;

    new-instance v0, Lkxr;

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3}, Lkxr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwz;->d:Lkxr;

    new-instance v0, Lkxr;

    const-string v1, "mdhd"

    invoke-direct {v0, v1, v2}, Lkxr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwz;->e:Lkxr;

    new-instance v0, Lkxr;

    invoke-direct {v0, v1, v3}, Lkxr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkwz;->f:Lkxr;

    return-void
.end method

.method public static a(II)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method
