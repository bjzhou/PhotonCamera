.class public final enum Ljxe;
.super Ljava/lang/Enum;

# interfaces
.implements Ljxd;


# static fields
.field public static final enum a:Ljxe;

.field public static final enum b:Ljxe;

.field public static final enum c:Ljxe;

.field public static final enum d:Ljxe;

.field private static final synthetic f:[Ljxe;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljxe;

    const-string v1, "H263"

    const/4 v2, 0x0

    const-string v3, "video/3gpp"

    invoke-direct {v0, v1, v2, v3}, Ljxe;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljxe;->a:Ljxe;

    new-instance v1, Ljxe;

    const-string v3, "H264"

    const/4 v4, 0x1

    const-string v5, "video/avc"

    invoke-direct {v1, v3, v4, v5}, Ljxe;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ljxe;->b:Ljxe;

    new-instance v3, Ljxe;

    const-string v5, "MPEG_4_SP"

    const/4 v6, 0x2

    const-string v7, "video/mp4v-es"

    invoke-direct {v3, v5, v6, v7}, Ljxe;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ljxe;->c:Ljxe;

    new-instance v5, Ljxe;

    const-string v7, "HEVC"

    const/4 v8, 0x3

    const-string v9, "video/hevc"

    invoke-direct {v5, v7, v8, v9}, Ljxe;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Ljxe;->d:Ljxe;

    const/4 v7, 0x4

    new-array v7, v7, [Ljxe;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljxe;->f:[Ljxe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljxe;->e:Ljava/lang/String;

    return-void
.end method

.method public static values()[Ljxe;
    .locals 1

    sget-object v0, Ljxe;->f:[Ljxe;

    invoke-virtual {v0}, [Ljxe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxe;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljxe;->e:Ljava/lang/String;

    return-object v0
.end method
