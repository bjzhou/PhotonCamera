.class public final Lnqq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqq;

.field public static final b:Lnqq;

.field public static final c:Lnqq;

.field private static e:I


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqq;

    invoke-direct {v0}, Lnqq;-><init>()V

    sput-object v0, Lnqq;->a:Lnqq;

    new-instance v0, Lnqq;

    const-string v1, "kMeteringFrame"

    invoke-direct {v0, v1}, Lnqq;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqq;

    const-string v1, "kPayloadFrame"

    invoke-direct {v0, v1}, Lnqq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqq;->b:Lnqq;

    new-instance v0, Lnqq;

    const-string v1, "kPayloadAuxFrame"

    invoke-direct {v0, v1}, Lnqq;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnqq;

    const-string v1, "kViewfinderFrame"

    invoke-direct {v0, v1}, Lnqq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqq;->c:Lnqq;

    const/4 v0, 0x0

    sput v0, Lnqq;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kUnknownFrameType"

    iput-object v0, p0, Lnqq;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lnqq;->e:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqq;->d:Ljava/lang/String;

    sget p1, Lnqq;->e:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lnqq;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqq;->d:Ljava/lang/String;

    return-object v0
.end method
