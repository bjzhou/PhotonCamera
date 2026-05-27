.class public final Lnqx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqx;

.field public static final b:Lnqx;

.field private static d:I


# instance fields
.field public final c:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnqx;

    invoke-direct {v0}, Lnqx;-><init>()V

    new-instance v0, Lnqx;

    const-string v1, "kImageBasedMotionProcessing"

    invoke-direct {v0, v1}, Lnqx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqx;->a:Lnqx;

    new-instance v0, Lnqx;

    const-string v1, "kMotionMetadataProcessing"

    invoke-direct {v0, v1}, Lnqx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnqx;->b:Lnqx;

    const/4 v0, 0x0

    sput v0, Lnqx;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kNone"

    iput-object v0, p0, Lnqx;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnqx;->c:I

    const/4 v0, 0x1

    sput v0, Lnqx;->d:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqx;->e:Ljava/lang/String;

    sget p1, Lnqx;->d:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnqx;->d:I

    iput p1, p0, Lnqx;->c:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqx;->e:Ljava/lang/String;

    return-object v0
.end method
